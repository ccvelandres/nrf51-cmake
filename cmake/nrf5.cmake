
include_guard(GLOBAL)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

include(nrf5_helper)

nrf5_check_var(NRF5_SDK_PATH)
nrf5_check_var_2(NRF5_CHIP NRF5_TARGET)
nrf5_set_defaults(NRF5_TOOLCHAIN "gcc")
nrf5_set_defaults(NRF5_SD_TOOLCHAIN "armgcc")
nrf5_set_defaults(NRF5_SOFTDEVICE "none")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_PATH "${NRF5_SDK_PATH}/components")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_ANT_PATH "${NRF5_SDK_PATH}/components/ant")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_BLE_PATH "${NRF5_SDK_PATH}/components/ble")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_BOARDS_PATH "${NRF5_SDK_PATH}/components/boards")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_DEVICE_PATH "${NRF5_SDK_PATH}/components/device")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_DRIVERS_PATH "${NRF5_SDK_PATH}/components/drivers_nrf")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_LIBRARIES_PATH "${NRF5_SDK_PATH}/components/libraries")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH "${NRF5_SDK_PATH}/components/toolchain")
nrf5_set_defaults(NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH "${NRF5_SDK_PATH}/components/softdevice")

# Get SDK Version
nrf5_get_sdk_version(${NRF5_SDK_PATH} NRF5_SDK_VERSION)
if(NOT NRF5_SDK_VERSION)
    message(FATAL_ERROR "Failed to parse NRF5 SDK Version")
else()
    message(STATUS "NRF5 SDK Version: ${NRF5_SDK_VERSION}")
endif()

# import sdk version variables
include(nrf5_sdkvar_${NRF5_SDK_VERSION})

# Check toolchain
if(NOT ${NRF5_TOOLCHAIN} IN_LIST nrf5_toolchains)
    message(FATAL_ERROR "Unsupported toolchain: ${nrf5_toolchains}")
endif()
message(STATUS "NRF5 Toolchain: ${NRF5_TOOLCHAIN}")

# Get chip, target, family
nrf5_check_chip(NRF5_CHIP NRF5_TARGET NRF5_FAMILY NRF5_VARIANT)
message(STATUS "NRF5 Chip: ${NRF5_CHIP}")
message(STATUS "NRF5 Target: ${NRF5_TARGET}")
message(STATUS "NRF5 Family: ${NRF5_FAMILY}")
message(STATUS "NRF5 Variant: ${NRF5_VARIANT}")

# include target path vars
include(nrf5_paths_${NRF5_SDK_VERSION})

# Setup compile environment
add_compile_options(${nrf5_cflags})
if(nrf5_cflags_${NRF5_CHIP})
    add_compile_options(${nrf5_cflags_${NRF5_CHIP}})
endif()
if(nrf5_defines_${NRF5_CHIP})
    add_compile_options(${nrf5_defines_${NRF5_CHIP}})
endif()
if(nrf5_defines_${NRF5_TARGET})
    add_compile_options(${nrf5_defines_${NRF5_TARGET}})
endif()
if(nrf5_defines_${NRF5_FAMILY})
    add_compile_options(${nrf5_defines_${NRF5_FAMILY}})
endif()

if(nrf5_ldflags_${NRF5_CHIP})
    add_link_options(${nrf5_ldflags_${NRF5_CHIP}})
endif()

add_link_options(${nrf5_ld_inc} ${nrf5_ld_${NRF5_TOOLCHAIN}_inc})

# Check SoftDevice support
if(NOT ${NRF5_SOFTDEVICE} IN_LIST nrf5_softdevice_variants)
    message(FATAL_ERROR "Unsupported softdevice: ${nrf5_softdevice_variants}")
endif()
message(STATUS "NRF5 SoftDevice: ${NRF5_SOFTDEVICE}")

# Set softdevice hexfile
if(NOT ${NRF5_SOFTDEVICE} MATCHES none)
    nrf5_check_var(nrf5_softdevice_${NRF5_SOFTDEVICE}_hex)
    set(NRF5_SOFTDEVICE_HEX ${nrf5_softdevice_${NRF5_SOFTDEVICE}_hex})
endif()
get_filename_component(NRF5_SOFTDEVICE_HEXNAME ${NRF5_SOFTDEVICE_HEX} NAME)
message(STATUS "NRF5 SoftDevice Hex: ${NRF5_SOFTDEVICE_HEXNAME}")

# Select linker script
if(NOT NRF5_LINKER_SCRIPT)
    # use softdevice linker if valid, then target, then family
    nrf5_getvar(NRF5_LINKER_SCRIPT 
        nrf5_softdevice_${NRF5_SOFTDEVICE}_${NRF5_TOOLCHAIN}_linker
        nrf5_linker_${NRF5_TOOLCHAIN}_${NRF5_TARGET} 
        nrf5_linker_${NRF5_TOOLCHAIN}_${NRF5_FAMILY}_${NRF5_VARIANT})
endif()
message(STATUS "NRF5 Linker Script: ${NRF5_LINKER_SCRIPT}")

# Temporarily move *_OUTPUT_DIRECTORY for nrf5 targets
set(_CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
set(_CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
set(_CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/nrf5)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/nrf5)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/nrf5)

# create base target
set(NRF5_BASE_TARGET nrf5_${NRF5_CHIP}_base)
nrf5_base_target(${NRF5_BASE_TARGET} ${NRF5_CHIP} ${NRF5_TARGET} ${NRF5_FAMILY} )

# Create soft device targets
foreach(tgt ${nrf5_softdevices})
    nrf5_create_object(${NRF5_CHIP} nrf5_softdevice_${tgt})
endforeach()

# Select softdevice and link to base target and set hex path
set(NRF5_SOFTDEVICE_TARGET nrf5_softdevice_${NRF5_SOFTDEVICE})
target_link_libraries(${NRF5_BASE_TARGET} ${NRF5_SOFTDEVICE_TARGET})

# create driver targets
foreach(tgt ${nrf5_drivers})
    nrf5_create_object(${NRF5_CHIP} nrf5_driver_${tgt})
endforeach()

# create library targets
foreach(tgt ${nrf5_libraries})
    nrf5_create_object(${NRF5_CHIP} nrf5_library_${tgt})
endforeach()

# Revert *_OUTPUT_DIRECTORY back
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${_CMAKE_LIBRARY_OUTPUT_DIRECTORY})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${_CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${_CMAKE_RUNTIME_OUTPUT_DIRECTORY})