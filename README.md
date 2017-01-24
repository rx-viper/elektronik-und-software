# rexus-viper-elektronik
Rexus Viper Elektronik Projekt


## LTC2984 Board
* <-> 6x PT-100 4-wire
* -> 5V power supply
* <- SPI data out


## Mainboard
* -> Pressure sensor (SPI/I2C)
* -> Force sensor (analog/SPI/I2C)
* -> 5x Temperature sensor SPI (LTC2984 Board)
* -> Heat probe voltage and current sensing
* -> DS18B20 Temperature sensors (bus)
* 3V3 regualtor
* STM32F429 etc.
* Data Storgae (Flash)
* <-> RXSM communication
* <- RasPi UART
* -> 5V Power supply
* -> Status LEDs
* <- Control Panel


## Powerboard
* -> Battery
* -> RXSM Power
* 3x 60W 24V Step-Up Wandler
* <- Heat Probe
* <- Motor Power
* -> Motor Ctrl
* <- Battery Heater
* <- Mainboard Power
* <- RasPi Power
* <- Camera Power
* <- Camera Light
* -> Camera Ctrl.
* -> Heat Probe Ctrl.
* <- Heat probe voltage and current sensing
