
include_guard(GLOBAL)

# define supported toolchains
set(nrf5_toolchains gcc)

# default targets per chip
set(nrf5_chip_nrf51422 nrf51422_xxaa ) 
set(nrf5_chip_nrf51802 nrf51422_xxaa )
set(nrf5_chip_nrf51822 nrf51822_xxaa )
set(nrf5_chip_nrf52832 nrf52832_xxaa )

# define supported targets for this sdk version
# 0 -> chip
# 1 -> family
# 2 -> default target
# 3 -> variant
set(nrf5_chip_nrf51422_xxaa nrf51422 nrf51 nrf51422_xxaa xxaa ) 
set(nrf5_chip_nrf51802_xxaa nrf51802 nrf51 nrf51422_xxaa xxaa )
set(nrf5_chip_nrf51822_xxaa nrf51822 nrf51 nrf51822_xxaa xxaa )
set(nrf5_chip_nrf52832_xxaa nrf52832 nrf52 nrf52832_xxaa xxaa )

# supported boards
set(nrf5_boards
    BOARD_NRF6310
    BOARD_PCA10000
    BOARD_PCA10001
    BOARD_PCA10002
    BOARD_PCA10003
    BOARD_PCA20006
    BOARD_PCA10028
    BOARD_PCA10031
    BOARD_PCA10036
    BOARD_PCA10040
    BOARD_PCA10056
    BOARD_WT51822
    BOARD_N5DK1
    BOARD_ARDUINO_PRIMO
    BOARD_CUSTOM)

# cflags for target/family
set(nrf5_cflags "-fstack-check" "-fstack-usage" )
set(nrf5_cflags_nrf51822 -mcpu=cortex-m0 -mfloat-abi=soft )

# ld flags for target/family
set(nrf5_ldflags "-fcallgraph-info")
set(nrf5_ldflags_nrf51822 -mcpu=cortex-m0 )

# defines per target/family
set(nrf5_defines )
set(nrf5_defines_nrf51 "-DNRF51" )
set(nrf5_defines_nrf51822 "-DNRF51822" )
set(nrf5_defines_nrf51822_xxaa "-DNRF51822_XXAA" )

# define supported softdevice for this sdk version
set(nrf5_softdevice_variants none s130 s132 s212 s332)

# list of drivers for this sdk version
set(nrf5_drivers
    adc
    ble_flash
    clock
    common
    comp
    delay
    gpiote
    hal
    i2s
    lpcomp
    pdm
    power
    ppi
    pwm
    qdec
    qspi
    radio_config
    rng
    rtc
    saadc
    sdio
    spi_master
    spi_slave
    swi
    timer
    twi_master
    twis_slave
    uart
    uart_fifo
    usbd
    wdt)

set(nrf5_libraries
    atomic
    atomic_fifo
    balloc
    block_dev
    bootloader
    bsp
    bsp_btn_ant
    bsp_btn_ble
    bsp_nfc
    button
    crc16
    crc32
    crypto
    csense
    csense_drv
    ecc
    eddystone
    experimental_section_vars
    fds
    fifo
    fstorage
    gpiote
    hardfault
    hardfault_gcc
    hardfault_iar
    hardfault_keil
    hci
    ic_info
    led_softblink
    log
    low_power_pwm
    mailbox
    mem_manager
    pwm
    pwr_mgmt
    queue
    scheduler
    sdcard
    section_vars
    sensorsim
    sha256
    simple_timer
    slip
    svc
    timer
    timersh
    twi
    uart
    usbd
    util)

set(nrf5_softdevices
    none
    softdevice_handler
    s130
    s132
    s212
    s332)

set(nrf5_ble
    common
    ble_advertising
    ble_db_discovery
    ble_debug_assert_handler
    ble_dtm
    ble_error_log
    ble_racp
    ble_radio_notification
    nrf_ble_gatt
    nrf_ble_qwr
    peer_manager)

set(nrf5_ble_services
    ancs_c
    ans_c
    bas
    bas_c
    bps
    cscs
    cts_c
    dfu
    dis
    escs
    gls
    hids
    hrs
    hrs_c
    hts
    ias
    ias_c
    lbs
    lbs_c
    lls
    nus
    nus_c
    rscs
    rscs_c
    tps)