# rexus-viper-elektronik
Rexus Viper Elektronik Projekt


## Temperature Sensor Board
* LTC2984
* <-> 6x PT-100 4-wire
* -> 5V power supply
* <- SPI data out


## Mainboard
* -> Pressure sensor (SPI/I2C)
* -> Force sensor (analog/SPI/I2C)
* -> 5x Temperature sensor SPI (Temperature Sensor Board)
* -> Heat probe voltage and current sensing
* -> DS18B20 Temperature sensors (1-wire bus)
* 3.3V regulator
* STM32F429VI microcontroller
* Data storage (flash memory chip)
* <-> RXSM communication
* <- Raspberry Pi (UART)
* -> 5V power supply
* -> Status LEDs
* <- Control panel


## Powerboard
* -> Battery
* -> RXSM power
* 3x 60W 24V step-up converter
* <- Heat probe
* <- Motor power
* -> Motor control
* <- Battery heater
* <- Mainboard power
* <- Raspbery Pi power
* <- Camera power
* <- Camera light
* -> Camera control
* -> Heat probe control
* <- Heat probe voltage and current sensing
