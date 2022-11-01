
include_guard(GLOBAL)

macro(nrf5_check_var var)
    if(NOT DEFINED ${var})
        message(FATAL_ERROR "${var} not set")
    endif()
endmacro()

macro(nrf5_check_var_2 var1 var2)
    if(NOT DEFINED ${var1} AND NOT DEFINED ${var2})
        message(FATAL_ERROR "${var1} or ${var2} must be set")
    endif()
endmacro()

macro(nrf5_set_defaults var value)
    if(NOT DEFINED ${var})
        set(${var} ${value})
        message(STATUS "${var} not set, defaults to ${value}")
    endif()
endmacro()

macro(nrf5_print_list_per_line type list prefix)
    foreach(t ${${list}})
        message(${type} "${prefix}${t}")
    endforeach()
endmacro()

macro(nrf5_get_subdirs _dir _outdirlist _recurse _glob)
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

function(nrf5_getvar outvar)
    set(_var )
    foreach(var ${ARGN})
        if(${var})
            set(_var ${${var}})
            break()
        endif()
    endforeach()
    set(${outvar} ${_var} PARENT_SCOPE)
endfunction()

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

function(nrf5_check_chip __chip __target __family __variant)
    set(_chip ${${__chip}})
    set(_target ${${__target}})

    if(NOT nrf5_chip_${_target} AND NOT nrf5_chip_${_chip})
        message(FATAL_ERROR "Unsupported chip: ${_chip}")
    elseif(nrf5_chip_${_chip})
        set(_target ${nrf5_chip_${_chip}})
    endif()

    list(GET nrf5_chip_${_target} 0 _chip)
    list(GET nrf5_chip_${_target} 1 _family)
    list(GET nrf5_chip_${_target} 2 _target)
    list(GET nrf5_chip_${_target} 3 _variant)

    set(${__chip} ${_chip} PARENT_SCOPE)
    set(${__target} ${_target} PARENT_SCOPE)
    set(${__family} ${_family} PARENT_SCOPE)
    set(${__variant} ${_variant} PARENT_SCOPE)
endfunction()

function(nrf5_create_genexdebug target_name)
    get_target_property(type ${target_name} TYPE)
    if(${type} MATCHES EXECUTABLE)
        add_custom_target(${target_name}_genexdebug
            COMMAND ${CMAKE_COMMAND} -E echo "Target: $<TARGET_NAME:${target_name}>"
            COMMAND ${CMAKE_COMMAND} -E echo "Definitions: \"$<TARGET_PROPERTY:${target_name},COMPILE_DEFINITIONS>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Sources: \"$<TARGET_PROPERTY:${target_name},SOURCES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Include Directories: \"$<TARGET_PROPERTY:${target_name},INCLUDE_DIRECTORIES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Link Libraries: \"$<TARGET_PROPERTY:${target_name},LINK_LIBRARIES>\"")
    elseif(${type} MATCHES OBJECT_LIBRARY)
        add_custom_target(${target_name}_genexdebug
            COMMAND ${CMAKE_COMMAND} -E echo "Target: $<TARGET_NAME:${target_name}>"
            COMMAND ${CMAKE_COMMAND} -E echo "Definitions: \"$<TARGET_PROPERTY:${target_name},COMPILE_DEFINITIONS>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Sources: \"$<TARGET_PROPERTY:${target_name},SOURCES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Include Directories: \"$<TARGET_PROPERTY:${target_name},INCLUDE_DIRECTORIES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Link Libraries: \"$<TARGET_PROPERTY:${target_name},LINK_LIBRARIES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Interface Libraries: \"$<TARGET_PROPERTY:${target_name},INTERFACE_LIBRARIES>\"")
    elseif(${type} MATCHES STATIC_LIBRARY)
        add_custom_target(${target_name}_genexdebug
            COMMAND ${CMAKE_COMMAND} -E echo "Target: $<TARGET_NAME:${target_name}>"
            COMMAND ${CMAKE_COMMAND} -E echo "Definitions: \"$<TARGET_PROPERTY:${target_name},COMPILE_DEFINITIONS>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Sources: \"$<TARGET_PROPERTY:${target_name},SOURCES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Include Directories: \"$<TARGET_PROPERTY:${target_name},INCLUDE_DIRECTORIES>\""
            COMMAND ${CMAKE_COMMAND} -E echo "Link Libraries: \"$<TARGET_PROPERTY:${target_name},LINK_LIBRARIES>\"")
    endif()
endfunction()

function(nrf5_create_object chip target_name)
    if(NOT DEFINED ${target_name}_src AND NOT DEFINED ${target_name}_inc)
        return()
    endif()

    set(base_target nrf5_${chip}_base)
    set(tgt_type OBJECT)
    set(tgt_sources ${${target_name}_src})
    set(tgt_include ${${target_name}_inc})
    set(tgt_defines ${${target_name}_def})
    set(tgt_depends ${${target_name}_dep})

    if(NOT tgt_sources)
        set(tgt_type INTERFACE)
    endif()

    if(tgt_type MATCHES INTERFACE)
        message(DEBUG "Creating interface target: ${target_name}")
        # Interface library
        add_library(${target_name} INTERFACE)
        target_include_directories(${target_name} INTERFACE ${tgt_include})
        target_compile_definitions(${target_name} INTERFACE ${tgt_defines})
        target_link_libraries(${target_name} INTERFACE $<$<TARGET_EXISTS:${base_target}>:${base_target}>)
    elseif(tgt_type MATCHES OBJECT)
        message(DEBUG "Creating static target: ${target_name}")
        # Static library
        add_library(${target_name} STATIC EXCLUDE_FROM_ALL)
        target_sources(${target_name} PRIVATE ${tgt_sources})
        target_include_directories(${target_name} PUBLIC ${tgt_include})
        target_compile_definitions(${target_name} PUBLIC ${tgt_defines})
        foreach(dep ${tgt_depends})
            target_link_libraries(${target_name} PUBLIC $<$<TARGET_EXISTS:${dep}>:${dep}>)
        endforeach()
        # Link to base chip target
        target_link_libraries(${target_name} PUBLIC $<$<TARGET_EXISTS:${base_target}>:${base_target}>)
    else()
        message(FATAL_ERROR "Invalid library type")
    endif()

    nrf5_create_genexdebug(${target_name})
endfunction()

# create base target for nrf51822
function(nrf5_base_target base_target chip target family)
    set(target_name ${base_target})
    message(STATUS "Creating base target: ${target_name}")

    nrf5_getvar(tgt_sources nrf5_${chip}_base_src nrf5_${family}_base_src)
    nrf5_getvar(tgt_include nrf5_${chip}_base_inc nrf5_${family}_base_inc)
    nrf5_getvar(tgt_defines nrf5_${chip}_base_def nrf5_${family}_base_def)

    add_library(${target_name} STATIC EXCLUDE_FROM_ALL)
    target_sources(${target_name} PRIVATE ${tgt_sources})
    target_include_directories(${target_name} PUBLIC ${tgt_include})
    target_compile_definitions(${target_name} PUBLIC ${tgt_defines})

    # Add extra include directories
    if(NRF5_EXTRA_INCLUDE_DIR)
        target_include_directories(${target_name} PUBLIC ${NRF5_EXTRA_INCLUDE_DIR})
    endif()
endfunction()

# create object target
function(nrf5_target)
    set(options OPTIONAL FAST)
    set(oneValueArgs TARGET_NAME TARGET_TYPE)
    set(multiValueArgs 
        PUBLIC_SOURCES PRIVATE_SOURCES
        PUBLIC_INCLUDE PRIVATE_INCLUDE INTERFACE_INCLUDE
        PUBLIC_DEFINES PRIVATE_DEFINES INTERFACE_DEFINES
        PUBLIC_DEPENDS PRIVATE_DEPENDS INTERFACE_DEPENDS)
    cmake_parse_arguments(nrf5_target "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

    add_library(${nrf5_target_TARGET_NAME} ${nrf5_target_TARGET_TYPE})
    target_sources(${nrf5_target_TARGET_NAME} PUBLIC ${nrf5_target_PUBLIC_SOURCES})
    target_sources(${nrf5_target_TARGET_NAME} PRIVATE ${nrf5_target_PRIVATE_SOURCES})

    target_include_directories(${nrf5_target_TARGET_NAME} PUBLIC ${nrf5_target_PUBLIC_INCLUDE})
    target_include_directories(${nrf5_target_TARGET_NAME} PRIVATE ${nrf5_target_PRIVATE_INCLUDE})
    target_include_directories(${nrf5_target_TARGET_NAME} INTERFACE ${nrf5_target_INTERFACE_INCLUDE})

    target_compile_definitions(${nrf5_target_TARGET_NAME} PUBLIC ${nrf5_target_PUBLIC_DEFINES})
    target_compile_definitions(${nrf5_target_TARGET_NAME} PRIVATE ${nrf5_target_PRIVATE_DEFINES})
    target_compile_definitions(${nrf5_target_TARGET_NAME} INTERFACE ${nrf5_target_INTERFACE_DEFINES})

    foreach(dep ${nrf5_target_PUBLIC_DEPENDS})
        target_link_libraries(${nrf5_target_TARGET_NAME} PUBLIC ${dep})
    endforeach()
    foreach(dep ${nrf5_target_PRIVATE_DEPENDS})
        target_link_libraries(${nrf5_target_TARGET_NAME} PRIVATE ${dep})
    endforeach()
    foreach(dep ${nrf5_target_INTERFACE_DEPENDS})
        target_link_libraries(${nrf5_target_TARGET_NAME} INTERFACE ${dep})
    endforeach()

    nrf5_create_genexdebug(${nrf5_target_TARGET_NAME})
endfunction()

function(nrf5_setup_exe target)
    # add linker script
    target_link_libraries(${target} PRIVATE ${NRF5_BASE_TARGET})
    target_link_options(${target} PRIVATE
        "-T${NRF5_LINKER_SCRIPT}"
        "-Wl,-Map=$<TARGET_FILE_DIR:${target}>/$<TARGET_NAME:${target}>.map")

    # Post build commands
    add_custom_command(TARGET ${target} POST_BUILD
        COMMAND ${CMAKE_SIZE} "${target}"
        COMMAND ${CMAKE_OBJCOPY} -O ihex "${target}" "${target}.hex"
        COMMAND ${CMAKE_OBJCOPY} -O binary "${target}" "${target}.bin")

    if(NOT ${NRF5_SOFTDEVICE} MATCHES none)
        # copy softdevice hex
        add_custom_command(TARGET ${target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy ${NRF5_SOFTDEVICE_HEX} $<TARGET_PROPERTY:${target},BINARY_DIR>)
    endif()
endfunction()