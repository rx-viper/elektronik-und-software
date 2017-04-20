EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:xo53
LIBS:sst26vf064b
LIBS:pc3h7
LIBS:maxim
LIBS:common_mode_choke
LIBS:esd_diode_dual
LIBS:max6126
LIBS:ltc2984
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 9 11
Title "Mainboard CPU and Storage"
Date "2017-03-14"
Rev "03"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR?
U 1 1 588A5F8F
P 8300 9650
F 0 "#PWR?" H 8300 9400 50  0001 C CNN
F 1 "GND" H 8300 9500 50  0000 C CNN
F 2 "" H 8300 9650 50  0000 C CNN
F 3 "" H 8300 9650 50  0000 C CNN
	1    8300 9650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588A5FE2
P 8200 1650
F 0 "#PWR?" H 8200 1500 50  0001 C CNN
F 1 "+3V3" H 8200 1790 50  0000 C CNN
F 2 "" H 8200 1650 50  0000 C CNN
F 3 "" H 8200 1650 50  0000 C CNN
	1    8200 1650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 58896600
P 2750 1950
F 0 "SW?" H 2900 2060 50  0000 C CNN
F 1 "BOOT0" H 2750 1870 50  0000 C CNN
F 2 "" H 2750 1950 50  0000 C CNN
F 3 "" H 2750 1950 50  0000 C CNN
	1    2750 1950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5889668B
P 2750 2850
F 0 "R?" V 2830 2850 50  0000 C CNN
F 1 "560" V 2750 2850 50  0000 C CNN
F 2 "" V 2680 2850 50  0000 C CNN
F 3 "" H 2750 2850 50  0000 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 5889673A
P 2500 2800
F 0 "SW?" H 2650 2910 50  0000 C CNN
F 1 "RESET" H 2500 2720 50  0000 C CNN
F 2 "" H 2500 2800 50  0000 C CNN
F 3 "" H 2500 2800 50  0000 C CNN
	1    2500 2800
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 58896801
P 2150 2800
F 0 "C?" H 2175 2900 50  0000 L CNN
F 1 "100n" H 2175 2700 50  0000 L CNN
F 2 "" H 2188 2650 50  0000 C CNN
F 3 "" H 2150 2800 50  0000 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889683D
P 2600 3250
F 0 "#PWR?" H 2600 3000 50  0001 C CNN
F 1 "GND" H 2600 3100 50  0000 C CNN
F 2 "" H 2600 3250 50  0000 C CNN
F 3 "" H 2600 3250 50  0000 C CNN
	1    2600 3250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58896929
P 2500 2100
F 0 "R?" V 2580 2100 50  0000 C CNN
F 1 "1k" V 2500 2100 50  0000 C CNN
F 2 "" V 2430 2100 50  0000 C CNN
F 3 "" H 2500 2100 50  0000 C CNN
	1    2500 2100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58896A1A
P 2650 1450
F 0 "#PWR?" H 2650 1300 50  0001 C CNN
F 1 "+3V3" H 2650 1590 50  0000 C CNN
F 2 "" H 2650 1450 50  0000 C CNN
F 3 "" H 2650 1450 50  0000 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58896B94
P 3500 2850
F 0 "#PWR?" H 3500 2700 50  0001 C CNN
F 1 "+3V3" H 3500 2990 50  0000 C CNN
F 2 "" H 3500 2850 50  0000 C CNN
F 3 "" H 3500 2850 50  0000 C CNN
	1    3500 2850
	0    -1   -1   0   
$EndComp
$Comp
L XO53 X?
U 1 1 58897591
P 1550 3650
F 0 "X?" H 1550 3400 60  0000 C CNN
F 1 "XO53" H 1550 3900 60  0000 C CNN
F 2 "" H 1550 3650 60  0000 C CNN
F 3 "" H 1550 3650 60  0000 C CNN
	1    1550 3650
	-1   0    0    -1  
$EndComp
NoConn ~ 2050 3550
$Comp
L C C?
U 1 1 58897627
P 800 3650
F 0 "C?" H 825 3750 50  0000 L CNN
F 1 "100n" H 825 3550 50  0000 L CNN
F 2 "" H 838 3500 50  0000 C CNN
F 3 "" H 800 3650 50  0000 C CNN
	1    800  3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889775D
P 900 3950
F 0 "#PWR?" H 900 3700 50  0001 C CNN
F 1 "GND" H 900 3800 50  0000 C CNN
F 2 "" H 900 3950 50  0000 C CNN
F 3 "" H 900 3950 50  0000 C CNN
	1    900  3950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588979C8
P 900 3400
F 0 "#PWR?" H 900 3250 50  0001 C CNN
F 1 "+3V3" H 900 3540 50  0000 C CNN
F 2 "" H 900 3400 50  0000 C CNN
F 3 "" H 900 3400 50  0000 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588A31AA
P 3500 3300
F 0 "C?" H 3525 3400 50  0000 L CNN
F 1 "2µ2" H 3525 3200 50  0000 L CNN
F 2 "" H 3538 3150 50  0000 C CNN
F 3 "" H 3500 3300 50  0000 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588A31EC
P 3100 3300
F 0 "C?" H 3125 3400 50  0000 L CNN
F 1 "2µ2" H 3125 3200 50  0000 L CNN
F 2 "" H 3138 3150 50  0000 C CNN
F 3 "" H 3100 3300 50  0000 C CNN
	1    3100 3300
	1    0    0    -1  
$EndComp
Text Notes 3400 3150 3    39   ~ 0
Low ESR\n(<2Ohms)
$Comp
L GND #PWR?
U 1 1 588A32F9
P 3300 3550
F 0 "#PWR?" H 3300 3300 50  0001 C CNN
F 1 "GND" H 3300 3400 50  0000 C CNN
F 2 "" H 3300 3550 50  0000 C CNN
F 3 "" H 3300 3550 50  0000 C CNN
	1    3300 3550
	1    0    0    -1  
$EndComp
Text HLabel 12900 4650 2    59   Output ~ 0
pressure_SCL
Text HLabel 12900 4750 2    59   BiDi ~ 0
pressure_SDA
Text HLabel 12900 6950 2    59   Output ~ 0
RXSM_TX
Text HLabel 12900 7650 2    59   Input ~ 0
RXSM_RX
Text HLabel 3500 5050 0    59   Output ~ 0
LED1
Text HLabel 3500 5150 0    59   Output ~ 0
LED2
Text HLabel 3500 5250 0    59   Output ~ 0
LED3
Text HLabel 3500 5350 0    59   Input ~ 0
SW1
Text HLabel 3500 7550 0    59   Output ~ 0
RasPi_TX
Text HLabel 3500 7450 0    59   Input ~ 0
RasPi_RX
Text HLabel 3500 7650 0    59   Output ~ 0
temp_SPI1_SCK
Text HLabel 3500 7950 0    59   Input ~ 0
temp_SPI1_MISO
Text HLabel 3500 8050 0    59   Output ~ 0
temp_SPI1_MOSI
Text HLabel 3500 5950 0    59   Input ~ 0
temp1_INT
Text HLabel 3500 6150 0    59   Input ~ 0
temp2_INT
Text HLabel 3500 6350 0    59   Input ~ 0
temp3_INT
Text HLabel 12900 7050 2    59   Input ~ 0
temp4_INT
Text HLabel 3500 6050 0    59   Output ~ 0
temp1_CS
Text HLabel 3500 6250 0    59   Output ~ 0
temp2_CS
Text HLabel 3500 6750 0    59   Output ~ 0
temp3_CS
Text HLabel 12900 7150 2    59   Output ~ 0
temp4_CS
Text HLabel 12900 7250 2    59   Input ~ 0
temp5_INT
Text HLabel 3500 3850 0    59   Output ~ 0
temp5_CS
Text HLabel 12900 5450 2    60   Output ~ 0
probe1_EN
Text HLabel 12900 5550 2    60   Output ~ 0
probe2_EN
Text HLabel 12900 2550 2    60   Output ~ 0
probe3_EN
Text HLabel 12900 4850 2    60   Output ~ 0
cam_light_EN
Text HLabel 12900 4950 2    60   Output ~ 0
lens_heater_EN
Text HLabel 3500 4250 0    60   Input ~ 0
bat_charge_status
Text HLabel 3500 4350 0    60   Output ~ 0
bat_boost_EN
Text HLabel 3500 4450 0    60   Output ~ 0
bat_charge_EN
$Comp
L C C?
U 1 1 589026F7
P 9500 10500
F 0 "C?" H 9525 10600 50  0000 L CNN
F 1 "100n" H 9525 10400 50  0000 L CNN
F 2 "" H 9538 10350 50  0000 C CNN
F 3 "" H 9500 10500 50  0000 C CNN
	1    9500 10500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58902762
P 9800 10500
F 0 "C?" H 9825 10600 50  0000 L CNN
F 1 "100n" H 9825 10400 50  0000 L CNN
F 2 "" H 9838 10350 50  0000 C CNN
F 3 "" H 9800 10500 50  0000 C CNN
	1    9800 10500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 589027A2
P 10100 10500
F 0 "C?" H 10125 10600 50  0000 L CNN
F 1 "100n" H 10125 10400 50  0000 L CNN
F 2 "" H 10138 10350 50  0000 C CNN
F 3 "" H 10100 10500 50  0000 C CNN
	1    10100 10500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 589027E5
P 10400 10500
F 0 "C?" H 10425 10600 50  0000 L CNN
F 1 "100n" H 10425 10400 50  0000 L CNN
F 2 "" H 10438 10350 50  0000 C CNN
F 3 "" H 10400 10500 50  0000 C CNN
	1    10400 10500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58902827
P 10700 10500
F 0 "C?" H 10725 10600 50  0000 L CNN
F 1 "100n" H 10725 10400 50  0000 L CNN
F 2 "" H 10738 10350 50  0000 C CNN
F 3 "" H 10700 10500 50  0000 C CNN
	1    10700 10500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58902870
P 11000 10500
F 0 "C?" H 11025 10600 50  0000 L CNN
F 1 "100n" H 11025 10400 50  0000 L CNN
F 2 "" H 11038 10350 50  0000 C CNN
F 3 "" H 11000 10500 50  0000 C CNN
	1    11000 10500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 589028B8
P 10250 10850
F 0 "#PWR?" H 10250 10600 50  0001 C CNN
F 1 "GND" H 10250 10700 50  0000 C CNN
F 2 "" H 10250 10850 50  0000 C CNN
F 3 "" H 10250 10850 50  0000 C CNN
	1    10250 10850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58902D50
P 10250 10150
F 0 "#PWR?" H 10250 10000 50  0001 C CNN
F 1 "+3V3" H 10250 10290 50  0000 C CNN
F 2 "" H 10250 10150 50  0000 C CNN
F 3 "" H 10250 10150 50  0000 C CNN
	1    10250 10150
	1    0    0    -1  
$EndComp
Text HLabel 12900 8250 2    60   Input ~ 0
RXSM_LO
Text HLabel 12900 8350 2    60   Input ~ 0
RXSM_SOE
Text HLabel 12900 8450 2    60   Input ~ 0
RXSM_SODS
$Comp
L CONN_01X03 P?
U 1 1 58CF021A
P 14550 3650
F 0 "P?" H 14550 3850 50  0000 C CNN
F 1 "SWD" V 14650 3650 50  0000 C CNN
F 2 "" H 14550 3650 50  0000 C CNN
F 3 "" H 14550 3650 50  0000 C CNN
	1    14550 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58CF0348
P 14250 3850
F 0 "#PWR?" H 14250 3600 50  0001 C CNN
F 1 "GND" H 14250 3700 50  0000 C CNN
F 2 "" H 14250 3850 50  0000 C CNN
F 3 "" H 14250 3850 50  0000 C CNN
	1    14250 3850
	1    0    0    -1  
$EndComp
Text Label 13850 3650 0    60   ~ 0
SWDIO
Text Label 13850 3750 0    60   ~ 0
SWCLK
Text Notes 800  10950 0    60   ~ 0
SPI usage:\n* SPI1: extADC\n* SPI2: Flash storage 1\n* SPI3: Flash storage\n* SPI4: Temperature sensors 1-3\n* SPI5: Temperature sensors 4-6\n\nUART usage:\n* UART5: RXSM communication\n* UART8: Raspberry Pi\n* USART1: Debugging\n\nI2C usage:\n* I2C1: Pressure sensor\n* I2C2: Batt/structure temperature\n\nTimer:\n* TIM1 (Advanced): BLDC Motor\n* TIM4 (General Purpose): Motor encoder\n* TIM2/TIM3/TIM5 (General Purpose): Heat probe encoder\n* TIM8 (Advanced): Hall sensor\n* TIM9 (Basic): 1x Heat probe PWM\n* TIM12 (Basic): 2x Heat probe PWM\n* TIM10 (Basic): 1x LED light\n* TIM11 (Basic): 1x Camera lens heater
Text HLabel 3500 5750 0    60   BiDi ~ 0
temperature_SDA
Text HLabel 3500 5850 0    60   Output ~ 0
temperature_SCL
Text HLabel 3500 5450 0    59   Input ~ 0
SW2
Text HLabel 12900 3850 2    60   Input ~ 0
encoder1_A
Text HLabel 12900 4350 2    60   Input ~ 0
encoder1_B
Text HLabel 12900 4450 2    60   Input ~ 0
encoder2_A
Text HLabel 12900 4550 2    60   Input ~ 0
encoder2_B
Text HLabel 12900 2350 2    60   Input ~ 0
encoder3_A
Text HLabel 12900 2450 2    60   Input ~ 0
encoder3_B
$Comp
L CONN_01X03 P?
U 1 1 590458AD
P 14550 3250
F 0 "P?" H 14550 3450 50  0000 C CNN
F 1 "DEBUG" V 14650 3250 50  0000 C CNN
F 2 "" H 14550 3250 50  0000 C CNN
F 3 "" H 14550 3250 50  0000 C CNN
	1    14550 3250
	1    0    0    -1  
$EndComp
Text Label 13700 3250 0    59   ~ 0
debug_TX
Text Label 13700 3350 0    59   ~ 0
debug_RX
Wire Wire Line
	8300 9450 8300 9650
Wire Wire Line
	7700 9550 8600 9550
Wire Wire Line
	8100 9550 8100 9450
Wire Wire Line
	8200 9550 8200 9450
Connection ~ 8200 9550
Connection ~ 8300 9550
Wire Wire Line
	8500 9550 8500 9450
Wire Wire Line
	8400 9550 8400 9450
Connection ~ 8400 9550
Wire Wire Line
	8200 1650 8200 1850
Wire Wire Line
	7900 1750 7900 1850
Connection ~ 8200 1750
Wire Wire Line
	8000 1750 8000 1850
Connection ~ 8000 1750
Wire Wire Line
	8100 1750 8100 1850
Connection ~ 8100 1750
Wire Wire Line
	8500 1750 8500 1850
Wire Wire Line
	8400 1750 8400 1850
Connection ~ 8400 1750
Wire Wire Line
	8300 1750 8300 1850
Connection ~ 8300 1750
Wire Wire Line
	2750 2700 2750 2250
Wire Wire Line
	3600 2650 2750 2650
Connection ~ 2750 2650
Wire Wire Line
	2150 3150 2500 3150
Wire Wire Line
	2500 3150 2500 3100
Wire Wire Line
	2750 3200 2750 3000
Wire Wire Line
	2400 3200 2750 3200
Wire Wire Line
	2600 3200 2600 3250
Wire Wire Line
	2400 3200 2400 3150
Connection ~ 2400 3150
Connection ~ 2600 3200
Wire Wire Line
	2500 1550 2750 1550
Wire Wire Line
	2750 1550 2750 1650
Wire Wire Line
	2650 1450 2650 1550
Connection ~ 2650 1550
Wire Wire Line
	3500 2850 3600 2850
Wire Wire Line
	2150 2350 2150 2650
Wire Wire Line
	2150 2950 2150 3150
Wire Wire Line
	2050 3750 3600 3750
Wire Wire Line
	800  3500 800  3450
Wire Wire Line
	800  3450 1000 3450
Wire Wire Line
	900  3450 900  3400
Wire Wire Line
	1000 3450 1000 3550
Wire Wire Line
	1000 3550 1050 3550
Connection ~ 900  3450
Wire Wire Line
	1050 3750 1000 3750
Wire Wire Line
	1000 3750 1000 3900
Wire Wire Line
	1000 3900 800  3900
Wire Wire Line
	900  3900 900  3950
Wire Wire Line
	800  3900 800  3800
Connection ~ 900  3900
Wire Wire Line
	3500 3150 3600 3150
Wire Wire Line
	3600 3050 3100 3050
Wire Wire Line
	3100 3450 3100 3500
Wire Wire Line
	3100 3500 3500 3500
Wire Wire Line
	3300 3500 3300 3550
Connection ~ 3300 3500
Wire Wire Line
	10250 10850 10250 10750
Wire Wire Line
	9200 10750 11300 10750
Wire Wire Line
	9500 10750 9500 10650
Wire Wire Line
	9800 10650 9800 10750
Connection ~ 9800 10750
Wire Wire Line
	10100 10650 10100 10750
Connection ~ 10100 10750
Wire Wire Line
	11000 10750 11000 10650
Connection ~ 10250 10750
Wire Wire Line
	10700 10650 10700 10750
Connection ~ 10700 10750
Wire Wire Line
	10400 10650 10400 10750
Connection ~ 10400 10750
Wire Wire Line
	10250 10150 10250 10250
Wire Wire Line
	9200 10250 11300 10250
Wire Wire Line
	9500 10250 9500 10350
Wire Wire Line
	9800 10350 9800 10250
Connection ~ 9800 10250
Wire Wire Line
	10100 10250 10100 10350
Connection ~ 10100 10250
Wire Wire Line
	11000 10250 11000 10350
Connection ~ 10250 10250
Wire Wire Line
	10700 10350 10700 10250
Connection ~ 10700 10250
Wire Wire Line
	10400 10250 10400 10350
Connection ~ 10400 10250
Wire Wire Line
	14250 3250 14250 3850
Wire Wire Line
	14250 3650 14350 3650
Wire Wire Line
	14350 3750 12800 3750
Wire Wire Line
	12800 3650 14150 3650
Wire Wire Line
	14150 3650 14150 3550
Wire Wire Line
	14150 3550 14350 3550
Text HLabel 12900 2850 2    60   Output ~ 0
extADC_SPI_SCK
Text HLabel 12900 2950 2    60   Input ~ 0
extADC_SPI_MISO
Text HLabel 12900 3050 2    60   Output ~ 0
extADC_SPI_MOSI
Text HLabel 12900 2750 2    60   Output ~ 0
extADC_SPI_CS1
Text HLabel 12900 8950 2    60   Output ~ 0
brake_EN
Text HLabel 12900 8650 2    60   Input ~ 0
encoderMotor_A
Text HLabel 12900 8750 2    60   Input ~ 0
encoderMotor_B
Text HLabel 12900 6550 2    60   Input ~ 0
hall_W
Text HLabel 12900 6450 2    60   Input ~ 0
hall_V
Text HLabel 12900 6350 2    60   Input ~ 0
hall_U
Text HLabel 3500 6450 0    59   Output ~ 0
temp_SPI2_SCK
Text HLabel 3500 6550 0    59   Input ~ 0
temp_SPI2_MISO
Text HLabel 3500 6650 0    59   Output ~ 0
temp_SPI2_MOSI
Text HLabel 12900 5750 2    59   Input ~ 0
temp6_INT
Text HLabel 12900 5850 2    59   Output ~ 0
temp6_CS
Text HLabel 3500 8250 0    60   Output ~ 0
Motor_U_N
Text HLabel 3500 8350 0    60   Output ~ 0
Motor_U_P
Text HLabel 3500 8550 0    60   Output ~ 0
Motor_V_P
Text HLabel 3500 8450 0    60   Output ~ 0
Motor_V_N
Text HLabel 3500 8750 0    60   Output ~ 0
Motor_W_P
Text HLabel 3500 8650 0    60   Output ~ 0
Motor_W_N
Wire Wire Line
	8600 9550 8600 9450
Connection ~ 8500 9550
Wire Wire Line
	8000 9550 8000 9450
Connection ~ 8100 9550
Wire Wire Line
	7600 1850 7600 1750
Connection ~ 7900 1750
Wire Wire Line
	7800 1750 7800 1850
Connection ~ 7800 1750
Wire Wire Line
	7700 1850 7700 1750
Connection ~ 7700 1750
Connection ~ 8500 1750
Wire Wire Line
	8800 1750 8800 1850
Connection ~ 8800 1750
Wire Wire Line
	8700 1750 8700 1850
Connection ~ 8700 1750
Wire Wire Line
	8600 1750 8600 1850
Connection ~ 8600 1750
$Comp
L STM32F429ZITx U?
U 1 1 58FC7E3E
P 8200 5650
F 0 "U?" H 3800 9275 50  0000 L BNN
F 1 "STM32F429ZITx" H 12600 9275 50  0000 R BNN
F 2 "LQFP144" H 12600 9225 50  0001 R TNN
F 3 "" H 8200 5650 50  0001 C CNN
	1    8200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1750 8800 1750
Wire Wire Line
	7700 9550 7700 9450
Connection ~ 8000 9550
Wire Wire Line
	7800 9450 7800 9550
Connection ~ 7800 9550
Wire Wire Line
	7900 9550 7900 9450
Connection ~ 7900 9550
Wire Wire Line
	3100 3050 3100 3150
Wire Wire Line
	3500 3500 3500 3450
Wire Wire Line
	2150 2350 3600 2350
Wire Wire Line
	2500 2250 2500 2500
Connection ~ 2500 2350
Wire Wire Line
	2500 1950 2500 1550
$Comp
L +3V3 #PWR?
U 1 1 58FCC3B7
P 3500 2450
F 0 "#PWR?" H 3500 2300 50  0001 C CNN
F 1 "+3V3" H 3500 2590 50  0000 C CNN
F 2 "" H 3500 2450 50  0000 C CNN
F 3 "" H 3500 2450 50  0000 C CNN
	1    3500 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 2450 3600 2450
$Comp
L C C?
U 1 1 58FCCB1D
P 11300 10500
F 0 "C?" H 11325 10600 50  0000 L CNN
F 1 "100n" H 11325 10400 50  0000 L CNN
F 2 "" H 11338 10350 50  0000 C CNN
F 3 "" H 11300 10500 50  0000 C CNN
	1    11300 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 10750 11300 10650
Wire Wire Line
	11300 10250 11300 10350
$Comp
L C C?
U 1 1 58FCCBFD
P 9200 10500
F 0 "C?" H 9225 10600 50  0000 L CNN
F 1 "100n" H 9225 10400 50  0000 L CNN
F 2 "" H 9238 10350 50  0000 C CNN
F 3 "" H 9200 10500 50  0000 C CNN
	1    9200 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 10650 9200 10750
Wire Wire Line
	9200 10250 9200 10350
Connection ~ 9500 10250
Connection ~ 9500 10750
Connection ~ 11000 10750
Connection ~ 11000 10250
$Comp
L C C?
U 1 1 58FCEA1E
P 8400 10500
F 0 "C?" H 8425 10600 50  0000 L CNN
F 1 "10µ" H 8425 10400 50  0000 L CNN
F 2 "" H 8438 10350 50  0001 C CNN
F 3 "" H 8400 10500 50  0001 C CNN
	1    8400 10500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58FCEB0F
P 8700 10500
F 0 "C?" H 8725 10600 50  0000 L CNN
F 1 "4µ7" H 8725 10400 50  0000 L CNN
F 2 "" H 8738 10350 50  0001 C CNN
F 3 "" H 8700 10500 50  0001 C CNN
	1    8700 10500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58FCEDB8
P 8550 10150
F 0 "#PWR?" H 8550 10000 50  0001 C CNN
F 1 "+3V3" H 8550 10290 50  0000 C CNN
F 2 "" H 8550 10150 50  0000 C CNN
F 3 "" H 8550 10150 50  0000 C CNN
	1    8550 10150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58FCEE45
P 8550 10850
F 0 "#PWR?" H 8550 10600 50  0001 C CNN
F 1 "GND" H 8550 10700 50  0000 C CNN
F 2 "" H 8550 10850 50  0000 C CNN
F 3 "" H 8550 10850 50  0000 C CNN
	1    8550 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 10150 8550 10250
Wire Wire Line
	8400 10250 8700 10250
Wire Wire Line
	8700 10250 8700 10350
Wire Wire Line
	8400 10250 8400 10350
Connection ~ 8550 10250
Wire Wire Line
	8400 10650 8400 10750
Wire Wire Line
	8400 10750 8700 10750
Wire Wire Line
	8550 10750 8550 10850
Wire Wire Line
	8700 10750 8700 10650
Connection ~ 8550 10750
Wire Wire Line
	14250 3250 14350 3250
Connection ~ 14250 3650
Wire Wire Line
	12800 3350 14350 3350
Wire Wire Line
	12800 3250 14150 3250
Wire Wire Line
	14150 3250 14150 3150
Wire Wire Line
	14150 3150 14350 3150
$Sheet
S 14700 6650 1250 500 
U 58FCE1AC
F0 "Mainboard_Flash_2" 60
F1 "mainboard_flash_2.sch" 60
F2 "CS" I L 14700 7050 60 
F3 "SCK" I L 14700 6750 60 
F4 "MOSI" I L 14700 6950 60 
F5 "MISO" O L 14700 6850 60 
$EndSheet
Wire Wire Line
	14700 6750 12800 6750
Wire Wire Line
	12800 6850 14700 6850
Wire Wire Line
	14700 6950 14500 6950
Wire Wire Line
	14500 6950 14500 8050
Wire Wire Line
	14500 8050 12800 8050
$Sheet
S 14700 5750 1250 500 
U 58FD1F3B
F0 "Mainboard_Flash_1" 60
F1 "mainboard_flash_1.sch" 60
F2 "CS" I L 14700 6150 60 
F3 "SCK" I L 14700 5850 60 
F4 "MOSI" I L 14700 6050 60 
F5 "MISO" O L 14700 5950 60 
$EndSheet
Wire Wire Line
	12800 5950 14700 5950
Wire Wire Line
	14700 6050 12800 6050
Wire Wire Line
	14700 5850 14600 5850
Wire Wire Line
	14600 5850 14600 5050
Wire Wire Line
	14600 5050 12800 5050
$EndSCHEMATC
