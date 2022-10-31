
# include_guard(GLOBAL)

# Requires ff variables to be set
# NRF5_CHIP
# NRF5_TARGET
# NRF5_FAMILY
# NRF5_TOOLCHAIN
# NRF5_SOFTDEVICE
# NRF5_SDK_PATH
# NRF5_SDK_COMPONENTS_PATH
# NRF5_SDK_COMPONENTS_ANT_PATH
# NRF5_SDK_COMPONENTS_BLE_PATH
# NRF5_SDK_COMPONENTS_BOARDS_PATH
# NRF5_SDK_COMPONENTS_DEVICE_PATH
# NRF5_SDK_COMPONENTS_DRIVERS_PATH
# NRF5_SDK_COMPONENTS_LIBRARIES_PATH
# NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH
# NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH

# Optional vars
# NRF5_LINKER_SCRIPT
# NRF5_EXTRA_INCLUDE_DIR

include(nrf5_helper)

# define common sources
set(nrf5_ld_gcc_inc
    -L${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH}/gcc)

# linker scripts
set(nrf5_linker_gcc_nrf51_xxaa ${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH}/gcc/nrf51_xxaa.ld)
set(nrf5_linker_gcc_nrf51_xxab ${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH}/gcc/nrf51_xxab.ld)
set(nrf5_linker_gcc_nrf51_xxac ${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH}/gcc/nrf51_xxac.ld)
set(nrf5_linker_gcc_nrf52_xxaa ${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH}/gcc/nrf52_xxaa.ld)
set(nrf5_linker_gcc_nrf52840_xxaa ${NRF5_SDK_COMPONENTS_TOOLCHAIN_PATH}/gcc/nrf52840_xxaa.ld)

# base family target src/inc/dep
set(nrf5_nrf51_base_src 
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/system_nrf51.c
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_TOOLCHAIN}>,GCC>:${NRF5_SDK_COMPONENTS_PATH}/toolchain/gcc/gcc_startup_nrf51.S>) 
set(nrf5_nrf51_base_inc
    ${NRF5_SDK_COMPONENTS_PATH}/device
    ${NRF5_SDK_COMPONENTS_PATH}/boards
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/cmsis/include)
set(nrf5_nrf51_base_def )
set(nrf5_nrf51_base_dep )

set(nrf5_nrf52_base_src 
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/system_nrf52.c
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_TOOLCHAIN}>,GCC>:${NRF5_SDK_COMPONENTS_PATH}/toolchain/gcc/gcc_startup_nrf52.S>)
set(nrf5_nrf52_base_inc
    ${NRF5_SDK_COMPONENTS_PATH}/device
    ${NRF5_SDK_COMPONENTS_PATH}/boards
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/cmsis/include)
set(nrf5_nrf52_base_def )
set(nrf5_nrf52_base_dep )

# chip specific base overrides 
set(nrf5_nrf51422_base_src 
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/system_nrf51422.c
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_TOOLCHAIN}>,GCC>:${NRF5_SDK_COMPONENTS_PATH}/toolchain/gcc/gcc_startup_nrf51.S>)

# softdevice src/inc/def
set(nrf5_softdevice_softdevice_handler_src 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/common/softdevice_handler/softdevice_handler.c
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/common/softdevice_handler/softdevice_handler_appsh.c)
set(nrf5_softdevice_softdevice_handler_inc 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/common/softdevice_handler)
set(nrf5_softdevice_softdevice_handler_dep )
set(nrf5_softdevice_softdevice_handler_def "-DSOFTDEVICE_PRESENT" )

set(nrf5_softdevice_s130_src )
set(nrf5_softdevice_s130_inc 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/s130/headers
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_FAMILY}>,NRF51>:${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/s130/headers/nrf51>)
set(nrf5_softdevice_s130_dep nrf5_softdevice_softdevice_handler)
set(nrf5_softdevice_s130_def "-DS130" "-DBLE_STACK_SUPPORT_REQD")
set(nrf5_softdevice_s130_hex ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/s130/hex/s130_nrf51_2.0.1_softdevice.hex)
set(nrf5_softdevice_s130_gcc_linker 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/s130/toolchain/armgcc/armgcc_s130_${NRF5_TARGET}.ld)

# nrf_soc_nosd
set(nrf5_softdevice_none_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/nrf_soc_nosd/nrf_nvic.c
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/nrf_soc_nosd/nrf_soc.c)
set(nrf5_softdevice_none_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/nrf_soc_nosd)
set(nrf5_softdevice_none_dep )
set(nrf5_softdevice_none_def )

################################################################
# NRF5 Drivers
# clock
set(nrf5_driver_clock_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/clock/nrf_drv_clock.c)
set(nrf5_driver_clock_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/clock)
set(nrf5_driver_clock_dep 
    nrf5_driver_common
    nrf5_library_log)
set(nrf5_driver_clock_def )

# common
set(nrf5_driver_common_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/common/nrf_drv_common.c)
set(nrf5_driver_common_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/common)
set(nrf5_driver_common_dep 
    nrf5_driver_hal
    nrf5_library_util)
set(nrf5_driver_common_def )

# delay
set(nrf5_driver_delay_src )
set(nrf5_driver_delay_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/delay)
set(nrf5_driver_delay_dep )
set(nrf5_driver_delay_def )

# hal
set(nrf5_driver_hal_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/hal/nrf_adc.c
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/hal/nrf_ecb.c
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/hal/nrf_nvmc.c
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/hal/nrf_saadc.c)
set(nrf5_driver_hal_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/hal)
set(nrf5_driver_hal_dep )
set(nrf5_driver_hal_def )

# uart
set(nrf5_driver_uart_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/uart/nrf_drv_uart.c)
set(nrf5_driver_uart_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/uart)
set(nrf5_driver_uart_dep 
    nrf5_driver_hal
    nrf5_driver_common
    nrf5_library_util
    nrf5_library_log)
set(nrf5_driver_uart_def )

# libraries src/inc/def/dep
set(nrf5_library_util_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util/app_error_weak.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util/app_error.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util/app_util_platform.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util/nrf_assert.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util/sdk_errors.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util/sdk_mapped_flags.c)
set(nrf5_library_util_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/util)
set(nrf5_library_util_dep 
    nrf5_library_log)
set(nrf5_library_util_def )

set(nrf5_library_log_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/log/src/nrf_log_frontend.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/log/src/nrf_log_backend_serial.c)
set(nrf5_library_log_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/log
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/log/src)
set(nrf5_library_log_dep 
    nrf5_library_util
    nrf5_driver_uart)
set(nrf5_library_log_def )

set(nrf5_library_uart_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/uart/app_uart.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/uart/retarget.c)
set(nrf5_library_uart_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/uart)
set(nrf5_library_uart_dep 
    nrf5_library_util
    nrf5_driver_uart)
set(nrf5_library_uart_def )

# set(nrf5_driver_clock_src )
# set(nrf5_driver_clock_inc )
# set(nrf5_driver_clock_def )
# set(nrf5_driver_clock_dep )


