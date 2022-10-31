
include_guard(GLOBAL)

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

# cflags for target/family
set(nrf5_cflags -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin --short-enums)
set(nrf5_cflags_nrf51822 -mcpu=cortex-m0 -mfloat-abi=soft -mthumb -mabi=aapcs )

# ld flags for target/family
set(nrf5_ldflags )
set(nrf5_ldflags_nrf51822 -mcpu=cortex-m0 -mthumb -mabi=aapcs )

# defines per target/family
set(nrf5_defines )
set(nrf5_defines_nrf51 "-DNRF51" )
set(nrf5_defines_nrf51822 "-DNRF51822" )
set(nrf5_defines_nrf51822_xxaa "-DNRF51822_XXAA" )

# define supported softdevice for this sdk version
set(nrf5_softdevice_variants none s130 s132 s212 s332)

# define supported toolchains
set(nrf5_toolchains gcc)

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
    sensorsim
    sha256
    simple_timer
    slip
    svc
    timer
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