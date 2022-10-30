cmake_minimum_required(VERSION 3.14)
project(blinky LANGUAGES C ASM)

macro(check_var var)
    if(NOT DEFINED ${var})
        message(FATAL_ERROR "${var} not set")
    endif()
endmacro()

macro(set_defaults var value)
    if(NOT DEFINED ${var})
        set(${var} ${value})
        message(STATUS "${var} not set, defaults to ${value}")
    endif()
endmacro()

macro(get_subdirs _dir _outdirlist _recurse _glob)
    if(_recurse)
        file(GLOB_RECURSE  __children LIST_DIRECTORIES true "${_dir}/${_glob}")
    else()
        file(GLOB  __children LIST_DIRECTORIES true "${_dir}/${_glob}")
    endif()
    set(__dirlist "")
    foreach(__dir ${__children})
        if(IS_DIRECTORY ${__dir})
            list(APPEND __dirlist ${__dir})
        endif()
    endforeach()
    set(${_outdirlist} ${__dirlist})
    unset(__children)
    unset(__dirlist)
endmacro()

check_var(NRF5_SDK_PATH)
check_var(NRF5_CHIP)
set_defaults(NRF5_TOOLCHAIN "gcc")
set_defaults(NRF5_SD_TOOLCHAIN "armgcc")
set_defaults(NRF5_SOFTDEVICE "none")
set_defaults(NRF5_SDK_COMPONENTS_PATH "${NRF5_SDK_PATH}/components")
set_defaults(NRF5_SDK_COMPONENTS_BLE_PATH "${NRF5_SDK_PATH}/components/ble")
set_defaults(NRF5_SDK_COMPONENTS_BOARDS_PATH "${NRF5_SDK_PATH}/components/boards")
set_defaults(NRF5_SDK_COMPONENTS_DEVICE_PATH "${NRF5_SDK_PATH}/components/device")
set_defaults(NRF5_SDK_COMPONENTS_DRIVERS_PATH "${NRF5_SDK_PATH}/components/drivers_nrf")
set_defaults(NRF5_SDK_COMPONENTS_LIBRARIES_PATH "${NRF5_SDK_PATH}/components/libraries")
set_defaults(NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH "${NRF5_SDK_PATH}/components/softdevice")

function(nrf5_get_sdk_version sdk_path varname)
    # read release_notes
    set(relnote "${sdk_path}/documentation/release_notes.txt")
    if(NOT EXISTS ${relnote})
        message(FATAL_ERROR "Could not find release_notes.txt")
    endif()
    # match nRF5 SDK v12.3.0
    file(STRINGS ${relnote} relmatch LIMIT_COUNT 1 REGEX "SDK v[0-9]+\.[0-9]+\.[0-9]+")
    string(REGEX MATCH "SDK v([0-9]+\.[0-9]+\.[0-9]+)" relmatch "${relmatch}")
    set(${varname} ${CMAKE_MATCH_1} PARENT_SCOPE)
endfunction()

nrf5_get_sdk_version(${NRF5_SDK_PATH} NRF5_SDK_VERSION)
if(NOT NRF5_SDK_VERSION)
    message(FATAL_ERROR "Failed to parse NRF5 SDK Version")
else()
    message(STATUS "Found NRF5 SDK Version: ${NRF5_SDK_VERSION}")
endif()

function(nrf5_check_chip __chip __target)
    set(_chip ${${__chip}})
    set(_target ${${__target}})
    
    # chip default targets
    set(_default_nrf51822 nrf51822_xxaa)

    if(_default_${_chip})
        set(_target ${_default_${_chip}})
    else()
        set(_target ${_chip})
        string(REGEX MATCH "^([^_]+)" _chip ${_target})
        set(_chip ${CMAKE_MATCH_1})
    endif()

    message(STATUS "Checking ${_chip} : ${_target}")

    # supported chip per sdk
    list(APPEND _chip_12.3.0 nrf51422 nrf51802 nrf51822 nrf52832)
    
    check_var(_chip_${NRF5_SDK_VERSION})
    string(TOLOWER ${_chip} _chip)
    list(FIND _chip_${NRF5_SDK_VERSION} ${_chip} found)
    if(found EQUAL -1)
        message(FATAL_ERROR "Unsupported Chip: ${_chip}")
    endif()

    set(${__chip} ${_chip} PARENT_SCOPE)
    set(${__target} ${_target} PARENT_SCOPE)

endfunction()

nrf5_check_chip(NRF5_CHIP NRF5_TARGET)
message(STATUS "NRF5 Chip: ${NRF5_CHIP}")
message(STATUS "NRF5 Target: ${NRF5_TARGET}")

function(nrf5_create_target target_name target_path)
    file(GLOB_RECURSE tgt_sources "${target_path}/*.c")
    get_subdirs("${target_path}" tgt_paths true "*")
    if(NOT tgt_sources)
        add_library(${target_name} INTERFACE)
        target_include_directories(${target_name} INTERFACE ${tgt_paths})
    else()
        add_library(${target_name} STATIC)
        target_sources(${target_name} PUBLIC ${tgt_sources})
        target_include_directories(${target_name} PUBLIC ${tgt_paths})
    endif()
endfunction()

function(nrf5_create_targets target_prefix parent_path targets)
    file(GLOB parent_paths LIST_DIRECTORIES true "${parent_path}/*")
    unset(_tgts)
    foreach(drv_path ${parent_paths})
        get_filename_component(target_name "${drv_path}" NAME)
        set(target_name "${target_prefix}${target_name}")

        nrf5_create_target(${target_name} ${drv_path})
        list(APPEND _tgts ${target_name})
    endforeach()
    set(${targets} ${_tgts} PARENT_SCOPE)
endfunction()

nrf5_create_target(nrf5_boards ${NRF5_SDK_COMPONENTS_BOARDS_PATH})
nrf5_create_target(nrf5_device ${NRF5_SDK_COMPONENTS_DEVICE_PATH})
nrf5_create_targets(nrf5_drv_ ${NRF5_SDK_COMPONENTS_DRIVERS_PATH} NRF5_DRIVERS)
foreach(tgt ${NRF5_DRIVERS})
    message(STATUS "Found driver: ${tgt}")
endforeach()

nrf5_create_targets(nrf5_lib_ ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH} NRF5_LIBRARIES)
foreach(tgt ${NRF5_LIBRARIES})
    message(STATUS "Found library: ${tgt}")
endforeach()

function(nrf5_create_softdevice_target _target _variant _parent_path _hex _linker)
    if(${_variant} MATCHES "none")
        message(STATUS "No SoftDevice used")
        return()
    endif()

    # softdevices per sdk version
    list(APPEND sd_12.3.0 s130 s132 s212 s332)

    check_var(sd_${NRF5_SDK_VERSION})
    string(TOLOWER ${_variant} _lvariant)
    string(TOUPPER ${_variant} _uvariant)
    list(FIND sd_${NRF5_SDK_VERSION} ${_lvariant} found)
    if(found EQUAL -1)
        message(FATAL_ERROR "Unsupported SoftDevice: ${_variant}")
    endif()
    
    # softdevice ble requirements
    list(_sd_ble_reqd 12.3.0_s130 12.3.0_s132 12.3.0_s140)

    # check common headers
    set(_sd_handler_path "${_parent_path}/common/softdevice_handler")
    file(GLOB_RECURSE _sd_handler_sources "${_sd_handler_path}/*.h" "${_sd_handler_path}/*.c")
    if(NOT EXISTS ${_sd_handler_path} OR NOT _sd_handler_sources)
    message(FATAL_ERROR "SoftDevice handler not found")
    endif()
    # check variant headers
    set(_sd_variant_path "${_parent_path}/${_lvariant}")
    file(GLOB_RECURSE _sd_variant_sources "${_sd_variant_path}/*.h" "${_sd_variant_path}/*.c")
    if(NOT EXISTS ${_sd_variant_path} OR NOT _sd_variant_sources)
        message(FATAL_ERROR "Could not find SoftDevice variant: ${_variant}")
    endif()

    # create sd variant target
    add_library(nrf5_softdevice_${_lvariant} STATIC ${_sd_handler_sources})
    target_include_directories(nrf5_softdevice_${_lvariant} PUBLIC 
        ${_sd_handler_path}
        ${_sd_variant_path})
    target_link_libraries(nrf5_softdevice_${_lvariant} PUBLIC nrf5_softdevice_handler)
    target_compile_definitions(nrf5_softdevice_${_lvariant} PUBLIC 
        "-DSOFTDEVICE_PRESENT"    
        "-D${_uvariant}")

    # set sd hexfile
    file(GLOB _sd_hex_path ${_parent_path}/${_lvariant}/hex/*.hex)
    if(NOT _sd_hex_path)
        message(FATAL_ERROR "Could not find SoftDevice hex file")
    endif()
    set(${_hex} ${_sd_hex_path} PARENT_SCOPE)
    
    # set linker spt to gccse
    set(_linker_pattern ${_parent_path}/${_lvariant}/toolchain/${NRF5_SD_TOOLCHAIN}/*${_lvariant}*${_target}*.ld)
    file(GLOB _sd_linker_script ${_linker_pattern})
    if(NOT _sd_linker_script)
        message(FATAL_ERROR "Could not find linker script for ${_variant}")
    endif()
    set(${_linker} ${_sd_linker_script} PARENT_SCOPE)
endfunction()

nrf5_create_softdevice_target(${NRF5_TARGET} ${NRF5_SOFTDEVICE} ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH} NRF5_SOFTDEVICE_HEX NRF5_SOFTDEVICE_LINKER_SCRIPT)
if(DEFINED NRF5_SOFTDEVICE_HEX)
    get_filename_component(_sd_hexname ${NRF5_SOFTDEVICE_HEX} NAME)
    message(STATUS "Found SoftDevice Hex: ${_sd_hexname}")
endif()
if(DEFINED NRF5_SOFTDEVICE_LINKER_SCRIPT)
    get_filename_component(_sd_linkername ${NRF5_SOFTDEVICE_LINKER_SCRIPT} NAME)
    message(STATUS "Found SoftDevice Linker script: ${_sd_linkername}")
endif()

add_executable(main src/main.c)
target_link_libraries(main
    nrf5_drv_common
    nrf_drv_delay)