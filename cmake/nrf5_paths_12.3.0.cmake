
# include_guard(GLOBAL)

# Requires ff variables to be set
# NRF5_CHIP
# NRF5_TARGET
# NRF5_FAMILY
# NRF5_TOOLCHAIN
# NRF5_SOFTDEVICE
# NRF5_SOFTDEVICE_TARGET
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

################################################################
# NRF5 Base Targets

# NRF51
set(nrf5_nrf51_base_src 
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/system_nrf51.c
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_TOOLCHAIN}>,GCC>:${NRF5_SDK_COMPONENTS_PATH}/toolchain/gcc/gcc_startup_nrf51.S>)
set(nrf5_nrf51_base_inc
    ${NRF5_SDK_COMPONENTS_PATH}/device
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/cmsis/include)
set(nrf5_nrf51_base_def )
set(nrf5_nrf51_base_dep )

# NRF52
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

# NRF51422
# chip specific base overrides 
set(nrf5_nrf51422_base_src 
    ${NRF5_SDK_COMPONENTS_PATH}/toolchain/system_nrf51422.c
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_TOOLCHAIN}>,GCC>:${NRF5_SDK_COMPONENTS_PATH}/toolchain/gcc/gcc_startup_nrf51.S>)

# boards
set(nrf5_boards_src 
${NRF5_SDK_COMPONENTS_PATH}/boards/boards.c)
set(nrf5_boards_inc 
${NRF5_SDK_COMPONENTS_PATH}/boards)
set(nrf5_boards_dep )
set(nrf5_boards_def )


################################################################
# NRF5 SoftDevice
# softdevice src/inc/def
set(nrf5_softdevice_handler_src 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/common/softdevice_handler/softdevice_handler.c
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/common/softdevice_handler/softdevice_handler_appsh.c)
set(nrf5_softdevice_handler_inc 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/common/softdevice_handler)
set(nrf5_softdevice_handler_dep 
    nrf5_driver_clock
    nrf5_library_util
    nrf5_library_scheduler)
set(nrf5_softdevice_handler_def "-DSOFTDEVICE_PRESENT" )

set(nrf5_softdevice_s130_src )
set(nrf5_softdevice_s130_inc 
    ${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/s130/headers
    $<$<STREQUAL:$<UPPER_CASE:${NRF5_FAMILY}>,NRF51>:${NRF5_SDK_COMPONENTS_SOFTDEVICE_PATH}/s130/headers/nrf51>)
set(nrf5_softdevice_s130_dep )
set(nrf5_softdevice_s130_def 
    "-DS130" "-DBLE_STACK_SUPPORT_REQD" "-DNRF_SD_BLE_API_VERSION=2")
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

# gpiote
set(nrf5_driver_gpiote_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/gpiote/nrf_drv_gpiote.c)
set(nrf5_driver_gpiote_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/gpiote)
set(nrf5_driver_gpiote_dep )
set(nrf5_driver_gpiote_def )

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

# timer
set(nrf5_driver_timer_src 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/timer/nrf_drv_timer.c)
set(nrf5_driver_timer_inc 
    ${NRF5_SDK_COMPONENTS_DRIVERS_PATH}/timer)
set(nrf5_driver_timer_dep )
set(nrf5_driver_timer_def )

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

################################################################
# NRF5 Libraries

# bsp
set(nrf5_library_bsp_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/bsp/bsp.c)
set(nrf5_library_bsp_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/bsp)
set(nrf5_library_bsp_dep 
    nrf5_library_util
    nrf5_library_button)
set(nrf5_library_bsp_def )

# bsp_btn_ble
set(nrf5_library_bsp_btn_ble_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/bsp/bsp_btn_ble.c)
set(nrf5_library_bsp_btn_ble_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/bsp)
set(nrf5_library_bsp_btn_ble_dep 
    nrf5_library_bsp)
set(nrf5_library_bsp_btn_ble_def )

# bsp_nfc
set(nrf5_library_bsp_nfc_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/bsp/bsp_nfc.c)
set(nrf5_library_bsp_nfc_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/bsp)
set(nrf5_library_bsp_nfc_dep 
    nrf5_library_bsp)
set(nrf5_library_bsp_nfc_def )

# button
set(nrf5_library_button_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/button/app_button.c)
set(nrf5_library_button_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/button)
set(nrf5_library_button_dep 
    nrf5_driver_gpiote
    nrf5_library_util
    nrf5_library_timer)
set(nrf5_library_button_def )

# fds
set(nrf5_library_fds_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/fds/fds.c)
set(nrf5_library_fds_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/fds)
set(nrf5_library_fds_dep 
    nrf5_library_util
    nrf5_library_fstorage)
set(nrf5_library_fds_def )

# fstorage
set(nrf5_library_fstorage_src 
    $<IF:$<STREQUAL:${NRF5_SOFTDEVICE},none>,${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/fstorage/fstorage_nosd.c,${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/fstorage/fstorage.c>)
set(nrf5_library_fstorage_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/fstorage)
set(nrf5_library_fstorage_dep 
    nrf5_library_util
    nrf5_library_section_vars)
set(nrf5_library_fstorage_def )

# hardfault
set(nrf5_library_hardfault_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/hardfault/hardfault_implementation.c)
set(nrf5_library_hardfault_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/hardfault)
set(nrf5_library_hardfault_dep 
    nrf5_library_hardfault_${NRF5_TOOLCHAIN})
set(nrf5_library_hardfault_def )

# hardfault gcc
set(nrf5_library_hardfault_gcc_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/hardfault/${NRF5_FAMILY}/handler/hardfault_handler_gcc.c)
set(nrf5_library_hardfault_gcc_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/hardfault)
set(nrf5_library_hardfault_gcc_dep )
set(nrf5_library_hardfault_gcc_def )

# log
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

# scheduler
set(nrf5_library_scheduler_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/scheduler/app_scheduler.c)
set(nrf5_library_scheduler_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/scheduler)
set(nrf5_library_scheduler_dep )
set(nrf5_library_scheduler_def )

# section_vars
set(nrf5_library_section_vars_src )
set(nrf5_library_section_vars_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/experimental_section_vars)
set(nrf5_library_section_vars_dep )
set(nrf5_library_section_vars_def )

# sensorsim
set(nrf5_library_sensorsim_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/sensorsim/sensorsim.c)
set(nrf5_library_sensorsim_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/sensorsim)
set(nrf5_library_sensorsim_dep )
set(nrf5_library_sensorsim_def )

# timer
set(nrf5_library_timer_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/timer/app_timer.c)
set(nrf5_library_timer_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/timer)
set(nrf5_library_timer_dep 
nrf5_library_util
nrf5_driver_delay)
set(nrf5_library_timer_def )

# timersh
set(nrf5_library_timersh_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/timer/app_timer_appsh.c)
set(nrf5_library_timersh_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/timer)
set(nrf5_library_timersh_dep 
nrf5_library_util
nrf5_driver_delay)
set(nrf5_library_timersh_def )

# uart
set(nrf5_library_uart_src 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/uart/app_uart.c
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/uart/retarget.c)
set(nrf5_library_uart_inc 
    ${NRF5_SDK_COMPONENTS_LIBRARIES_PATH}/uart)
set(nrf5_library_uart_dep 
    nrf5_library_util
    nrf5_driver_uart)
set(nrf5_library_uart_def )

# util
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

################################################################
# NRF5 BLE

# common
set(nrf5_ble_common_src 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/common/ble_advdata.c
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/common/ble_conn_params.c
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/common/ble_conn_state.c
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/common/ble_srv_common.c)
set(nrf5_ble_common_inc 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/common)
set(nrf5_ble_common_dep 
    nrf5_library_util
    nrf5_library_timer
    ${NRF5_SOFTDEVICE_TARGET})
set(nrf5_ble_common_def )

# ble_advertising
set(nrf5_ble_ble_advertising_src 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_advertising/ble_advertising.c)
set(nrf5_ble_ble_advertising_inc 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_advertising)
set(nrf5_ble_ble_advertising_dep 
    nrf5_ble_common
    nrf5_library_fstorage)
set(nrf5_ble_ble_advertising_def )
    
# peer_manager
set(nrf5_ble_peer_manager_src 
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/gatt_cache_manager.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/gatts_cache_manager.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/id_manager.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/peer_data_storage.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/peer_data.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/peer_database.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/peer_id.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/peer_manager.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/pm_buffer.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/pm_mutex.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/security_dispatcher.c
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager/security_manager.c)
set(nrf5_ble_peer_manager_inc 
${NRF5_SDK_COMPONENTS_BLE_PATH}/peer_manager)
set(nrf5_ble_peer_manager_dep 
    nrf5_library_fds
    nrf5_ble_common)
set(nrf5_ble_peer_manager_def )

################################################################
# NRF5 BLE Services

# bas
set(nrf5_ble_service_bas_src 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_services/ble_bas/ble_bas.c)
set(nrf5_ble_service_bas_inc 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_services/ble_bas)
set(nrf5_ble_service_bas_dep 
    nrf5_ble_common)
set(nrf5_ble_service_bas_def )

# dis
set(nrf5_ble_service_dis_src 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_services/ble_dis/ble_dis.c)
set(nrf5_ble_service_dis_inc 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_services/ble_dis)
set(nrf5_ble_service_dis_dep 
    nrf5_ble_common)
set(nrf5_ble_service_dis_def )

# hids
set(nrf5_ble_service_hids_src 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_services/ble_hids/ble_hids.c)
set(nrf5_ble_service_hids_inc 
    ${NRF5_SDK_COMPONENTS_BLE_PATH}/ble_services/ble_hids)
set(nrf5_ble_service_hids_dep 
    nrf5_ble_common)
set(nrf5_ble_service_hids_def )


# set(nrf5_ble_common_src )
# set(nrf5_ble_common_inc )
# set(nrf5_ble_common_dep )
# set(nrf5_ble_common_def )

# set(nrf5_driver_clock_src )
# set(nrf5_driver_clock_inc )
# set(nrf5_driver_clock_dep )
# set(nrf5_driver_clock_def )


