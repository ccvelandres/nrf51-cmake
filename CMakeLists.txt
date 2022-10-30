cmake_minimum_required(VERSION 3.14)
project(blinky LANGUAGES C ASM)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

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
set_defaults(NRF5_SDK_COMPONENTS_ANT_PATH "${NRF5_SDK_PATH}/components/ant")
set_defaults(NRF5_SDK_COMPONENTS_BLE_PATH "${NRF5_SDK_PATH}/components/ble")
set_defaults(NRF5_SDK_COMPONENTS_BOARDS_PATH "${NRF5_SDK_PATH}/components/boards")
set_defaults(NRF5_SDK_COMPONENTS_DEVICE_PATH "${NRF5_SDK_PATH}/components/device")
set_defaults(NRF5_SDK_COMPONENTS_DRIVERS_PATH "${NRF5_SDK_PATH}/components/drivers_nrf")
set_defaults(NRF5_SDK_COMPONENTS_LIBRARIES_PATH "${NRF5_SDK_PATH}/components/libraries")
set_defaults(NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH "${NRF5_SDK_PATH}/components/toolchain")
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

function(nrf5_check_chip __chip __target __family)
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

    # get family
    string(REGEX MATCH "(nrf5[0-9])" _family ${_chip})
    set(_family ${CMAKE_MATCH_1})

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
    set(${__family} ${_family} PARENT_SCOPE)
endfunction()

nrf5_check_chip(NRF5_CHIP NRF5_TARGET NRF5_FAMILY)
message(STATUS "NRF5 Chip: ${NRF5_CHIP}")
message(STATUS "NRF5 Target: ${NRF5_TARGET}")
message(STATUS "NRF5 Family: ${NRF5_FAMILY}")

function(nrf5_get_flags __chip __target __flags __ldflags)
    # common flags
    set(flags_common -std=c99 -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin --short-enums)

    # cflags per target
    set(flags_nrf51822 -mcpu=cortex-m0 -mfloat-abi=soft -mthumb -mabi=aapcs )

    # ld flags per target
    set(ldflags_nrf51822 -mcpu=cortex-m0 -mthumb -mabi=aapcs)

    # defs per target
    set(defines_nrf51822 -DNRF51 -DNRF51822)
    
    set(${__flags} ${flags_${__chip}} ${defines_${__chip}} ${flags_common} PARENT_SCOPE)
    set(${__ldflags} ${ldflags_${__chip}} PARENT_SCOPE)
endfunction()

nrf5_get_flags(${NRF5_CHIP} ${NRF5_TARGET} NRF5_CFLAGS NRF5_LDFLAGS)
message(STATUS "NRF5 C Flags: ${NRF5_CFLAGS}")
message(STATUS "NRF5 LD Flags: ${NRF5_LDFLAGS}")
add_compile_options(${NRF5_CFLAGS})
add_link_options(${NRF5_LDFLAGS})

function(nrf5_create_genexdebug target_name)
    # Add genexdebug target
    add_custom_target(${target_name}_genexdebug
        COMMAND ${CMAKE_COMMAND} -E echo "Target: $<TARGET_NAME:${target_name}>"
        COMMAND ${CMAKE_COMMAND} -E echo 
        "Definitions: \"$<$<STREQUAL:$<TARGET_PROPERTY:${target_name},TYPE>,OBJECT_LIBRARY>:$<TARGET_PROPERTY:${target_name},COMPILE_DEFINITIONS>>\""
        COMMAND ${CMAKE_COMMAND} -E echo 
        "Sources: \"$<$<STREQUAL:$<TARGET_PROPERTY:${target_name},TYPE>,OBJECT_LIBRARY>:$<TARGET_PROPERTY:${target_name},SOURCES>>\""
        COMMAND ${CMAKE_COMMAND} -E echo 
        "Include Directories: \"$<$<STREQUAL:$<TARGET_PROPERTY:${target_name},TYPE>,OBJECT_LIBRARY>:$<TARGET_PROPERTY:${target_name},INCLUDE_DIRECTORIES>>\"")
endfunction()

function(nrf5_create_target _target_name _target_sources _target_include_dir _target_defines)
    string(TOUPPER ${_target_name} _utarget_name)
    set_property(GLOBAL PROPERTY ${_utarget_name}_SOURCES ${${_target_sources}})
    set_property(GLOBAL PROPERTY ${_utarget_name}_INCLUDE_DIRECTORIES ${${_target_include_dir}})
    set_property(GLOBAL PROPERTY ${_utarget_name}_COMPILE_DEFINITIONS ${${_target_defines}})
endfunction()

function(nrf5_toolchain_target _chip _family _toolchain _sdk_toolchain_path)
    if(NOT EXISTS ${_sdk_toolchain_path}/${_toolchain})
        message(FATAL_ERROR "Could not find component toolchain path: ${_sdk_toolchain_path}/${_toolchain}")
    endif()

    set(_toolchain_source_patterns
        "${_sdk_toolchain_path}/system_${_family}.c"
        "${_sdk_toolchain_path}/system_${_chip}.c"
        "${_sdk_toolchain_path}/${_toolchain}/*${_family}.S"
        "${_sdk_toolchain_path}/${_toolchain}/*${_chip}.S")
    file(GLOB _toolchain_sources ${_toolchain_source_patterns})
    message(STATUS "_toolchain_sources ${_toolchain_sources}")

    set(tgt_defines "")
    set(tgt_include_dirs ${_sdk_toolchain_path} ${_sdk_toolchain_path}/cmsis/include)
    nrf5_create_target(nrf5_toolchain _toolchain_sources tgt_include_dirs tgt_defines)
    # add toolchain link path
    add_link_options(-L${_sdk_toolchain_path}/${_toolchain})
endfunction()

nrf5_toolchain_target(${NRF5_CHIP} ${NRF5_FAMILY} ${NRF5_TOOLCHAIN} ${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH})
# link_libraries(nrf5_toolchain)

function(nrf5_search_target_sources target_name target_path)
    file(GLOB_RECURSE tgt_sources "${target_path}/*.c")
    file(GLOB_RECURSE tgt_headers "${target_path}/*.h")
    get_subdirs("${target_path}" tgt_paths true "*")

    set(tgt_defines "")
    set(tgt_include_dirs ${target_path} ${tgt_paths})
    nrf5_create_target(${target_name} tgt_sources tgt_include_dirs tgt_defines)
endfunction()

nrf5_search_target_sources(nrf5_device ${NRF5_SDK_COMPONENTS_DEVICE_PATH})
nrf5_search_target_sources(nrf5_boards ${NRF5_SDK_COMPONENTS_BOARDS_PATH})

function(nrf5_search_target_sourcess target_prefix parent_path targets)
    file(GLOB parent_paths LIST_DIRECTORIES true "${parent_path}/*")
    unset(_tgts)
    foreach(drv_path ${parent_paths})
        get_filename_component(target_name "${drv_path}" NAME)
        set(target_name "${target_prefix}${target_name}")

        nrf5_search_target_sources(${target_name} ${drv_path})
        list(APPEND _tgts ${target_name})
    endforeach()
    set(${targets} ${_tgts} PARENT_SCOPE)
endfunction()

nrf5_search_target_sourcess(nrf5_drv_ ${NRF5_SDK_COMPONENTS_DRIVERS_PATH} NRF5_DRIVERS)
message(STATUS "Found NRF5 drivers: ${NRF5_DRIVERS}")

nrf5_search_target_sourcess(nrf5_lib_ ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH} NRF5_LIBRARIES)
message(STATUS "Found NRF5 libraries: ${NRF5_LIBRARIES}")

nrf5_search_target_sourcess(nrf5_ble_ ${NRF5_SDK_COMPONENTS_BLE_PATH} NRF5_BLE)
message(STATUS "Found NRF5 ble modules: ${NRF5_BLE}")

nrf5_search_target_sourcess(nrf5_ant_ ${NRF5_SDK_COMPONENTS_ANT_PATH} NRF5_ANT)
message(STATUS "Found NRF5 ant modules: ${NRF5_ANT}")

function(nrf5_create_softdevice_target _chip _target _variant _version _parent_path _hex _linker)
    if(${_variant} MATCHES "none")
        message(STATUS "No SoftDevice used")
        return()
    endif()

    # softdevices per sdk version
    list(APPEND sd_12.3.0 s130 s132 s212 s332)

    check_var(sd_${_version})
    string(TOLOWER ${_variant} _lvariant)
    string(TOUPPER ${_variant} _uvariant)
    list(FIND sd_${_version} ${_lvariant} found)
    if(found EQUAL -1)
        message(FATAL_ERROR "Unsupported SoftDevice: ${_variant}")
    endif()
    
    # chip per softdevice
    list(APPEND sd_chips_s130 nrf51822 nrf51422 nrf51824)
    list(APPEND sd_chips_s132 nrf52810 nrf52832)
    list(APPEND sd_chips_s212 nrf52810 nrf52832)
    list(APPEND sd_chips_s332 nrf52832)

    check_var(sd_chips_${_lvariant})
    list(FIND sd_chips_${lvariant} ${_chip} found)
    if(fount EQUAL -1)
        message(FATAL_ERROR "SoftDevice ${_variant} does not support target: ${_target}")
    endif()

    # softdevice versions
    set(sd_version_s130_12.3.0 2.0.1)
    set(sd_version_s132_12.3.0 3.0.0)
    set(sd_version_s212_12.3.0 2.0.0)
    set(sd_version_s332_12.3.0 2.0.0)

    check_var(sd_version_${_lvariant}_${_version})
    string(REGEX MATCH "([0-9]+)\.([0-9]+)\.([0-9]+)" _sd_major_version ${sd_version_${_lvariant}_${_version}})
    set(_sd_major_version ${CMAKE_MATCH_1})

    # softdevice ble stack
    set(sd_ble_s130_12.3.0 ON)
    set(sd_ble_s132_12.3.0 ON)
    set(sd_ble_s212_12.3.0 OFF)
    set(sd_ble_s332_12.3.0 ON)

    check_var(sd_ble_${_lvariant}_${_version})
    set(_sd_ble_reqd ${sd_ble_${_lvariant}_${_version}})

    # softdevice ant stack
    set(sd_ant_s130_12.3.0 OFF)
    set(sd_ant_s132_12.3.0 OFF)
    set(sd_ant_s212_12.3.0 ON)
    set(sd_ant_s332_12.3.0 ON)

    check_var(sd_ant_${_lvariant}_${_version})
    set(_sd_ant_reqd ${sd_ant_${_lvariant}_${_version}})

    # check common headers
    set(_sd_handler_path "${_parent_path}/common/softdevice_handler")
    file(GLOB_RECURSE _sd_handler_sources "${_sd_handler_path}/*.h" "${_sd_handler_path}/*.c")
    if(NOT EXISTS ${_sd_handler_path} OR NOT _sd_handler_sources)
    message(FATAL_ERROR "SoftDevice handler not found")
    endif()

    # check variant headers
    set(_sd_variant_path "${_parent_path}/${_lvariant}")
    if(NOT EXISTS ${_sd_variant_path})
        message(FATAL_ERROR "Could not find SoftDevice variant: ${_variant}")
    endif()

    # get variant include dirs
    get_subdirs(${_sd_variant_path} _sd_variant_paths true "*")

    set(tgt_defines "")
    if(_sd_ble_reqd)
        set(tgt_defines "-DBLE_STACK_SUPPORT_REQD")
    endif()

    if(_sd_ant_reqd)
        set(tgt_defines "-DANT_STACK_SUPPORT_REQD")
    endif()

    # create sd variant target
    set(tgt_sources ${_sd_handler_sources})
    set(tgt_defines ${tgt_defines} "-DSOFTDEVICE_PRESENT" "-D${_uvariant}")
    set(tgt_include_dirs ${_sd_handler_path} ${_sd_variant_path} ${_sd_variant_paths})
    nrf5_create_target(nrf5_softdevice_${_lvariant} tgt_sources tgt_include_dirs tgt_defines)

    # set sd hexfile
    file(GLOB _sd_hex_path ${_parent_path}/${_lvariant}/hex/*.hex)
    if(NOT _sd_hex_path)
        message(FATAL_ERROR "Could not find SoftDevice hex file")
    endif()
    set(${_hex} ${_sd_hex_path} PARENT_SCOPE)
    
    # set linker script
    set(_linker_pattern ${_parent_path}/${_lvariant}/toolchain/${NRF5_SD_TOOLCHAIN}/*${_lvariant}*${_target}*.ld)
    file(GLOB _sd_linker_script ${_linker_pattern})
    if(NOT _sd_linker_script)
        message(FATAL_ERROR "Could not find linker script for ${_variant}")
    endif()
    set(${_linker} ${_sd_linker_script} PARENT_SCOPE)
endfunction()

nrf5_create_softdevice_target(${NRF5_CHIP} ${NRF5_TARGET} ${NRF5_SOFTDEVICE} ${NRF5_SDK_VERSION} ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH} NRF5_SOFTDEVICE_HEX NRF5_SOFTDEVICE_LINKER_SCRIPT)
if(DEFINED NRF5_SOFTDEVICE_HEX)
    get_filename_component(_sd_hexname ${NRF5_SOFTDEVICE_HEX} NAME)
    message(STATUS "Found SoftDevice Hex: ${_sd_hexname}")
endif()

if(DEFINED NRF5_SOFTDEVICE_LINKER_SCRIPT)
    get_filename_component(_sd_linkername ${NRF5_SOFTDEVICE_LINKER_SCRIPT} NAME)
    message(STATUS "Found SoftDevice Linker script: ${_sd_linkername}")
    add_link_options(-T${NRF5_SOFTDEVICE_LINKER_SCRIPT})
endif()

function(nrf5_link_library _target _mode)
    foreach(_library ${ARGN})
        string(TOUPPER ${_library} _ulibrary)
        get_property(_lib_sources GLOBAL PROPERTY ${_ulibrary}_SOURCES)
        get_property(_lib_include_dirs GLOBAL PROPERTY ${_ulibrary}_INCLUDE_DIRECTORIES)

        target_sources(${_target} ${_mode}
            ${_lib_sources})
        target_include_directories(${_target} ${_mode} 
            ${_lib_include_dirs})
    endforeach()
endfunction()

add_executable(main src/main.c)
target_compile_definitions(main PUBLIC -DBOARD_PCA10028)
target_include_directories(main PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/config)
nrf5_link_library(main PUBLIC
    nrf5_boards
    nrf5_device
    nrf5_toolchain
    nrf5_lib_bsp
    nrf5_lib_util
    nrf5_lib_log
    nrf5_lib_button
    nrf5_lib_timer
    nrf5_lib_scheduler
    nrf5_drv_common
    nrf5_drv_hal
    nrf5_drv_clock
    nrf5_ble_common
    nrf5_ble_ble_advertising
    nrf5_softdevice_s130)