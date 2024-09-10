# nrf51-cmake

## Usage

Copy or add this repository as submodule into the project directory then include `nrf5.cmake` in the root cmake file. Use the following functions to setup the kconfig environment

## Dependencies

This cmake currently only supports `nRF5_SDK_12.3.0`.

# Configuration

## Required

- `NRF5_SDK_PATH`
  - Path to NRF51 SDK
- `NRF5_BOARD`
  - Board name -- usually this will be `BOARD_CUSTOM`
- `NRF5_CONFIG_DIR`
  - Path to directory containing config files needed by SDK
- `NRF5_CHIP` OR `NRF5_TARGET`
  - Only one needs to be defined
  - Examples: 
    - `NRF5_CHIP`: nrf51822
    - `NRF5_TARGET`: nrf51822_xxaa

## Optional

- `NRF5_TOOLCHAIN`
  - DEFAULT: "gcc"
- `NRF5_SD_TOOLCHAIN`
  - DEFAULT: "armgcc"
- `NRF5_SOFTDEVICE`
  - DEFAULT: "none"

## Sample 

### Project Directory

```
├── cmake                   - cmake scripts
│ └── nrf51-cmake           - this repo
├── CMakeLists.txt          - root CMakeLists
│── configs                 - config directory
│ ├── app_config.h
│ ├── custom_board.h
│ ├── none_gcc_nrf51.ld 
│ ├── s130_gcc_nrf51.ld
│ └── sdk_config.h
...
```

### CMakeLists.txt

```
set(NRF5_TARGET "nrf51822_xxaa")
set(NRF5_BOARD "BOARD_CUSTOM")
set(NRF5_CONFIG_DIR "${CMAKE_SOURCE_DIR}/config")
set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/cmake/nrf51-cmake/arm-none-eabi.cmake")
set(NRF5_SDK_PATH "${CMAKE_SOURCE_DIR}/../nrf51SDK/nRF5_SDK_12.3.0_d7731ad")
set(NRF5_SOFTDEVICE "none")
```