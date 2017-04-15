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
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Mainboard overview"
Date "2017-03-14"
Rev "03"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 P?
U 1 1 5889381A
P 1150 1550
F 0 "P?" H 1150 1800 50  0000 C CNN
F 1 "Pressure" V 1250 1550 50  0000 C CNN
F 2 "" H 1150 1550 50  0000 C CNN
F 3 "" H 1150 1550 50  0000 C CNN
	1    1150 1550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 588938DA
P 1450 1800
F 0 "#PWR?" H 1450 1550 50  0001 C CNN
F 1 "GND" H 1450 1650 50  0000 C CNN
F 2 "" H 1450 1800 50  0000 C CNN
F 3 "" H 1450 1800 50  0000 C CNN
	1    1450 1800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588938ED
P 1450 1300
F 0 "#PWR?" H 1450 1150 50  0001 C CNN
F 1 "+3V3" H 1450 1440 50  0000 C CNN
F 2 "" H 1450 1300 50  0000 C CNN
F 3 "" H 1450 1300 50  0000 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
Text Label 8400 3750 2    60   ~ 0
temp_sdi
Text Label 8400 3650 2    60   ~ 0
temp_sdo
Text Label 8400 3550 2    60   ~ 0
temp_sck
Text Label 4300 3850 0    60   ~ 0
Bat_Heat_EN
Text Label 4300 4150 0    60   ~ 0
Probe3_EN
Text Label 4300 4050 0    60   ~ 0
Probe2_EN
Text Label 4300 3950 0    60   ~ 0
Probe1_EN
Text Label 4300 4250 0    60   ~ 0
Motor1_EN
Text Label 4300 4350 0    60   ~ 0
Motor1_DIR
Text Label 4300 4450 0    60   ~ 0
Motor1_PWM
Text Label 4300 4650 0    60   ~ 0
Charge_status
Text Label 4300 4750 0    60   ~ 0
Boost24V_EN
Text Label 4300 4850 0    60   ~ 0
Charge_EN
Text Label 4300 3750 0    60   ~ 0
Cam_Light_EN
$Comp
L LM1117-3.3 U?
U 1 1 588947D5
P 5500 6800
F 0 "U?" H 5600 6550 50  0000 C CNN
F 1 "LM1117-3.3" H 5500 7050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0000 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588947DC
P 5500 7350
F 0 "#PWR?" H 5500 7100 50  0001 C CNN
F 1 "GND" H 5500 7200 50  0000 C CNN
F 2 "" H 5500 7350 50  0000 C CNN
F 3 "" H 5500 7350 50  0000 C CNN
	1    5500 7350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588947E2
P 6500 6800
F 0 "#PWR?" H 6500 6650 50  0001 C CNN
F 1 "+3V3" H 6500 6940 50  0000 C CNN
F 2 "" H 6500 6800 50  0000 C CNN
F 3 "" H 6500 6800 50  0000 C CNN
	1    6500 6800
	0    1    1    0   
$EndComp
$Comp
L CP C?
U 1 1 588947E8
P 4750 7100
F 0 "C?" H 4775 7200 50  0000 L CNN
F 1 "10µ" H 4775 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4788 6950 50  0001 C CNN
F 3 "" H 4750 7100 50  0000 C CNN
	1    4750 7100
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588947EF
P 6250 7100
F 0 "C?" H 6275 7200 50  0000 L CNN
F 1 "10µ" H 6275 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6288 6950 50  0001 C CNN
F 3 "" H 6250 7100 50  0000 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L?
U 1 1 588947F6
P 3850 6800
F 0 "L?" H 3850 6900 50  0000 C CNN
F 1 "10µH" H 3850 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3850 6800 50  0001 C CNN
F 3 "" H 3850 6800 50  0000 C CNN
	1    3850 6800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588947FD
P 4300 7050
F 0 "C?" H 4325 7150 50  0000 L CNN
F 1 "100n" H 4325 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4338 6900 50  0001 C CNN
F 3 "" H 4300 7050 50  0000 C CNN
	1    4300 7050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5889504A
P 3250 6800
F 0 "#PWR?" H 3250 6650 50  0001 C CNN
F 1 "+5V" H 3250 6940 50  0000 C CNN
F 2 "" H 3250 6800 50  0000 C CNN
F 3 "" H 3250 6800 50  0000 C CNN
	1    3250 6800
	0    -1   -1   0   
$EndComp
Text Label 8500 1600 2    60   ~ 0
RasPi_TX
Text Label 8500 1700 2    60   ~ 0
RasPi_RX
$Comp
L R R?
U 1 1 5889A1AE
P 8150 5450
F 0 "R?" V 8230 5450 50  0000 C CNN
F 1 "1k" V 8150 5450 50  0000 C CNN
F 2 "" V 8080 5450 50  0000 C CNN
F 3 "" H 8150 5450 50  0000 C CNN
	1    8150 5450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5889A20A
P 8150 5250
F 0 "R?" V 8050 5250 50  0000 C CNN
F 1 "1k" V 8150 5250 50  0000 C CNN
F 2 "" V 8080 5250 50  0000 C CNN
F 3 "" H 8150 5250 50  0000 C CNN
	1    8150 5250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5889B140
P 8950 5800
F 0 "#PWR?" H 8950 5550 50  0001 C CNN
F 1 "GND" H 8950 5650 50  0000 C CNN
F 2 "" H 8950 5800 50  0000 C CNN
F 3 "" H 8950 5800 50  0000 C CNN
	1    8950 5800
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5889CCC2
P 1350 2450
F 0 "#PWR?" H 1350 2300 50  0001 C CNN
F 1 "+3V3" H 1350 2590 50  0000 C CNN
F 2 "" H 1350 2450 50  0000 C CNN
F 3 "" H 1350 2450 50  0000 C CNN
	1    1350 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889CF45
P 1350 2950
F 0 "#PWR?" H 1350 2700 50  0001 C CNN
F 1 "GND" H 1350 2800 50  0000 C CNN
F 2 "" H 1350 2950 50  0000 C CNN
F 3 "" H 1350 2950 50  0000 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5889DFDA
P 3000 1950
F 0 "#PWR?" H 3000 1800 50  0001 C CNN
F 1 "+3V3" H 3000 2090 50  0000 C CNN
F 2 "" H 3000 1950 50  0000 C CNN
F 3 "" H 3000 1950 50  0000 C CNN
	1    3000 1950
	1    0    0    -1  
$EndComp
Text Notes 7950 1500 0    39   ~ 0
RasPi voltage 3.3V
Text Notes 3550 7200 0    39   ~ 0
power input PI filter
$Comp
L C C?
U 1 1 588A230B
P 5950 7100
F 0 "C?" H 5975 7200 50  0000 L CNN
F 1 "100n" H 5975 7000 50  0000 L CNN
F 2 "" H 5988 6950 50  0000 C CNN
F 3 "" H 5950 7100 50  0000 C CNN
	1    5950 7100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588A2CE0
P 5050 7100
F 0 "C?" H 5075 7200 50  0000 L CNN
F 1 "100n" H 5075 7000 50  0000 L CNN
F 2 "" H 5088 6950 50  0000 C CNN
F 3 "" H 5050 7100 50  0000 C CNN
	1    5050 7100
	1    0    0    -1  
$EndComp
Text Label 2400 1500 2    59   ~ 0
pressure_SCL
Text Label 2400 1600 2    59   ~ 0
pressure_SDA
Text Label 8400 3850 2    60   ~ 0
temp1_int
Text Label 8400 3950 2    60   ~ 0
temp2_int
Text Label 8400 4050 2    60   ~ 0
temp3_int
Text Label 8400 4150 2    60   ~ 0
temp4_int
Text Label 8400 4250 2    60   ~ 0
temp5_int
Text Label 8400 4350 2    60   ~ 0
temp1_nCS
Text Label 8400 4450 2    60   ~ 0
temp2_nCS
Text Label 8400 4550 2    60   ~ 0
temp3_nCS
Text Label 8400 4650 2    60   ~ 0
temp4_nCS
Text Label 8400 4750 2    60   ~ 0
temp5_nCS
$Comp
L R R?
U 1 1 58C8FC8C
P 2000 1700
F 0 "R?" V 2080 1700 50  0000 C CNN
F 1 "4k7" V 2000 1700 50  0000 C CNN
F 2 "" V 1930 1700 50  0000 C CNN
F 3 "" H 2000 1700 50  0000 C CNN
	1    2000 1700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 58C90829
P 2250 1850
F 0 "R?" V 2330 1850 50  0000 C CNN
F 1 "4k7" V 2250 1850 50  0000 C CNN
F 2 "" V 2180 1850 50  0000 C CNN
F 3 "" H 2250 1850 50  0000 C CNN
	1    2250 1850
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58C90F6C
P 2500 1700
F 0 "#PWR?" H 2500 1550 50  0001 C CNN
F 1 "+3V3" H 2500 1840 50  0000 C CNN
F 2 "" H 2500 1700 50  0000 C CNN
F 3 "" H 2500 1700 50  0000 C CNN
	1    2500 1700
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 58C7A49A
P 3350 7050
F 0 "C?" H 3375 7150 50  0000 L CNN
F 1 "1µ" H 3375 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 6900 50  0001 C CNN
F 3 "" H 3350 7050 50  0000 C CNN
	1    3350 7050
	1    0    0    -1  
$EndComp
$Sheet
S 5050 1500 2850 4400
U 5889F4B8
F0 "Mainboard microcontroller" 60
F1 "mainboard_microcontroller.sch" 60
F2 "RXSM_RX" I R 7900 2000 59 
F3 "RasPi_RX" I R 7900 1700 59 
F4 "temp1_INT" I R 7900 3850 59 
F5 "temp2_INT" I R 7900 3950 59 
F6 "temp3_INT" I R 7900 4050 59 
F7 "temp4_INT" I R 7900 4150 59 
F8 "temp5_INT" I R 7900 4250 59 
F9 "bat_charge_status" I L 5050 4650 60 
F10 "RXSM_LO" I R 7900 2300 60 
F11 "RXSM_SOE" I R 7900 2400 60 
F12 "RXSM_SODS" I R 7900 2500 60 
F13 "lens_heater_EN" O L 5050 3850 60 
F14 "pressure_SCL" O L 5050 2450 60 
F15 "pressure_SDA" B L 5050 2550 60 
F16 "cam_light_EN" O L 5050 3750 60 
F17 "probe1_EN" O L 5050 3950 60 
F18 "probe2_EN" O L 5050 4050 60 
F19 "probe3_EN" O L 5050 4150 60 
F20 "motor1_EN" O L 5050 4250 60 
F21 "motor1_DIR" O L 5050 4350 60 
F22 "motor1_PWM" O L 5050 4450 60 
F23 "bat_boost_EN" O L 5050 4750 60 
F24 "bat_charge_EN" O L 5050 4850 60 
F25 "temperature_SDA" B L 5050 2750 60 
F26 "temperature_SCL" O L 5050 2650 60 
F27 "LED1" I R 7900 5250 60 
F28 "LED2" I R 7900 5350 60 
F29 "LED3" I R 7900 5450 60 
F30 "SW1" I R 7900 5650 60 
F31 "SW2" I R 7900 5800 60 
F32 "encoder1_A" I L 5050 1600 60 
F33 "encoder1_B" I L 5050 1700 60 
F34 "encoder2_A" I L 5050 1800 60 
F35 "encoder2_B" I L 5050 1900 60 
F36 "encoder3_A" I L 5050 2000 60 
F37 "encoder3_B" I L 5050 2100 60 
F38 "RXSM_TX" O R 7900 2100 60 
F39 "RasPi_TX" O R 7900 1600 60 
F40 "temp1_CS" O R 7900 4350 60 
F41 "temp2_CS" O R 7900 4450 60 
F42 "temp3_CS" O R 7900 4550 60 
F43 "temp4_CS" O R 7900 4650 60 
F44 "temp5_CS" O R 7900 4750 60 
F45 "temp_SPI_SCK" O R 7900 3550 60 
F46 "temp_SPI_MISO" I R 7900 3650 60 
F47 "temp_SPI_MOSI" O R 7900 3750 60 
F48 "extADC_SPI_SCK" O L 5050 3050 60 
F49 "extADC_SPI_MISO" I L 5050 3150 60 
F50 "extADC_SPI_MOSI" O L 5050 3250 60 
F51 "extADC_SPI_CS1" O L 5050 3350 60 
F52 "extADC_SPI_CS2" O L 5050 3450 60 
$EndSheet
Text Notes 950  2000 1    60   ~ 0
AMSYS\n5915-0010-D\n(3.3V)\nor First Sensor HCLA
$Comp
L CONN_01X04 P?
U 1 1 58F4DF3E
P 1050 2700
F 0 "P?" H 1050 2950 50  0000 C CNN
F 1 "Temperature" V 1150 2700 50  0000 C CNN
F 2 "" H 1050 2700 50  0000 C CNN
F 3 "" H 1050 2700 50  0000 C CNN
	1    1050 2700
	-1   0    0    1   
$EndComp
Text Label 2300 2650 2    59   ~ 0
temperature_SCL
Text Label 2300 2750 2    59   ~ 0
temperature_SDA
$Comp
L R R?
U 1 1 58F52855
P 1900 2850
F 0 "R?" V 1980 2850 50  0000 C CNN
F 1 "4k7" V 1900 2850 50  0000 C CNN
F 2 "" V 1830 2850 50  0000 C CNN
F 3 "" H 1900 2850 50  0000 C CNN
	1    1900 2850
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 58F5285B
P 2150 3000
F 0 "R?" V 2230 3000 50  0000 C CNN
F 1 "4k7" V 2150 3000 50  0000 C CNN
F 2 "" V 2080 3000 50  0000 C CNN
F 3 "" H 2150 3000 50  0000 C CNN
	1    2150 3000
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58F52861
P 2400 2850
F 0 "#PWR?" H 2400 2700 50  0001 C CNN
F 1 "+3V3" H 2400 2990 50  0000 C CNN
F 2 "" H 2400 2850 50  0000 C CNN
F 3 "" H 2400 2850 50  0000 C CNN
	1    2400 2850
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 58F66ED7
P 8550 5800
F 0 "SW?" H 8700 5910 50  0000 C CNN
F 1 "SW_PUSH" H 8550 5720 50  0000 C CNN
F 2 "" H 8550 5800 50  0000 C CNN
F 3 "" H 8550 5800 50  0000 C CNN
	1    8550 5800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 58F672A6
P 9550 5650
F 0 "SW?" H 9700 5760 50  0000 C CNN
F 1 "SW_PUSH" H 9550 5570 50  0000 C CNN
F 2 "" H 9550 5650 50  0000 C CNN
F 3 "" H 9550 5650 50  0000 C CNN
	1    9550 5650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58F6790E
P 8550 5350
F 0 "R?" V 8700 5350 50  0000 C CNN
F 1 "1k" V 8550 5350 50  0000 C CNN
F 2 "" V 8480 5350 50  0000 C CNN
F 3 "" H 8550 5350 50  0000 C CNN
	1    8550 5350
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 58F67ACE
P 8950 5250
F 0 "D?" H 9100 5300 50  0000 C CNN
F 1 "RED" H 8950 5150 50  0000 C CNN
F 2 "" H 8950 5250 50  0001 C CNN
F 3 "" H 8950 5250 50  0001 C CNN
	1    8950 5250
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 58F67CC7
P 8950 5450
F 0 "D?" H 8850 5500 50  0000 C CNN
F 1 "BLUE" H 8950 5550 50  0000 C CNN
F 2 "" H 8950 5450 50  0001 C CNN
F 3 "" H 8950 5450 50  0001 C CNN
	1    8950 5450
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 58F67EAA
P 9350 5350
F 0 "D?" H 9250 5400 50  0000 C CNN
F 1 "GREEN" H 9350 5200 50  0000 C CNN
F 2 "" H 9350 5350 50  0001 C CNN
F 3 "" H 9350 5350 50  0001 C CNN
	1    9350 5350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 58F680A4
P 9700 5350
F 0 "#PWR?" H 9700 5100 50  0001 C CNN
F 1 "GND" H 9700 5200 50  0000 C CNN
F 2 "" H 9700 5350 50  0000 C CNN
F 3 "" H 9700 5350 50  0000 C CNN
	1    9700 5350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58F6B2FF
P 9950 5650
F 0 "#PWR?" H 9950 5400 50  0001 C CNN
F 1 "GND" H 9950 5500 50  0000 C CNN
F 2 "" H 9950 5650 50  0000 C CNN
F 3 "" H 9950 5650 50  0000 C CNN
	1    9950 5650
	0    -1   -1   0   
$EndComp
$Comp
L DB9_FEMALE J?
U 1 1 58F94E12
P 4100 1800
F 0 "J?" H 4100 2350 50  0000 C CNN
F 1 "Probe position sensors" V 4300 1800 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58F97C6C
P 4600 2200
F 0 "#PWR?" H 4600 1950 50  0001 C CNN
F 1 "GND" H 4600 2050 50  0000 C CNN
F 2 "" H 4600 2200 50  0001 C CNN
F 3 "" H 4600 2200 50  0001 C CNN
	1    4600 2200
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 58F9B376
P 4600 1300
F 0 "#PWR?" H 4600 1150 50  0001 C CNN
F 1 "+5V" H 4600 1440 50  0000 C CNN
F 2 "" H 4600 1300 50  0000 C CNN
F 3 "" H 4600 1300 50  0000 C CNN
	1    4600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1300 1450 1400
Wire Wire Line
	1450 1400 1350 1400
Wire Wire Line
	1450 1800 1450 1700
Wire Wire Line
	1450 1700 1350 1700
Wire Wire Line
	5500 7100 5500 7350
Wire Wire Line
	6500 6800 5800 6800
Wire Wire Line
	5950 6950 5950 6800
Connection ~ 5950 6800
Wire Wire Line
	5950 7300 5950 7250
Connection ~ 5500 7300
Wire Wire Line
	5050 7300 5050 7250
Wire Wire Line
	3250 6800 3600 6800
Connection ~ 5050 7300
Wire Wire Line
	4300 7200 4300 7300
Wire Wire Line
	4100 6800 5200 6800
Wire Wire Line
	5050 6950 5050 6800
Connection ~ 5050 6800
Wire Wire Line
	4300 6900 4300 6800
Connection ~ 4300 6800
Wire Wire Line
	3350 7300 6250 7300
Wire Wire Line
	1350 2450 1350 2550
Wire Wire Line
	1350 2550 1250 2550
Wire Wire Line
	1250 2850 1350 2850
Wire Wire Line
	1350 2850 1350 2950
Wire Wire Line
	6250 7300 6250 7250
Connection ~ 5950 7300
Wire Wire Line
	6250 6950 6250 6800
Connection ~ 6250 6800
Wire Wire Line
	4750 7300 4750 7250
Connection ~ 4750 7300
Wire Wire Line
	4750 6950 4750 6800
Connection ~ 4750 6800
Wire Wire Line
	1350 1600 3600 1600
Wire Wire Line
	1350 1500 3700 1500
Wire Wire Line
	5050 2450 3700 2450
Wire Wire Line
	3700 2450 3700 1500
Wire Wire Line
	3600 1600 3600 2550
Wire Wire Line
	3600 2550 5050 2550
Wire Wire Line
	8400 3850 7900 3850
Wire Wire Line
	7900 3950 8400 3950
Wire Wire Line
	8400 4050 7900 4050
Wire Wire Line
	7900 4150 8400 4150
Wire Wire Line
	8400 4250 7900 4250
Wire Wire Line
	7900 4350 8400 4350
Wire Wire Line
	8400 4450 7900 4450
Wire Wire Line
	7900 4550 8400 4550
Wire Wire Line
	8400 4650 7900 4650
Wire Wire Line
	7900 4750 8400 4750
Wire Wire Line
	1850 1700 1750 1700
Wire Wire Line
	1750 1700 1750 1600
Connection ~ 1750 1600
Wire Wire Line
	2100 1850 1650 1850
Wire Wire Line
	1650 1850 1650 1500
Connection ~ 1650 1500
Wire Wire Line
	2500 1700 2150 1700
Wire Wire Line
	2400 1850 2450 1850
Wire Wire Line
	2450 1850 2450 1700
Connection ~ 2450 1700
Wire Wire Line
	3350 6900 3350 6800
Connection ~ 3350 6800
Wire Wire Line
	3350 7200 3350 7300
Connection ~ 4300 7300
Wire Wire Line
	7900 1600 8600 1600
Wire Wire Line
	7900 1700 8900 1700
Wire Wire Line
	1750 2850 1650 2850
Wire Wire Line
	1650 2850 1650 2750
Connection ~ 1650 2750
Wire Wire Line
	2000 3000 1550 3000
Wire Wire Line
	1550 3000 1550 2650
Connection ~ 1550 2650
Wire Wire Line
	2400 2850 2050 2850
Wire Wire Line
	2300 3000 2350 3000
Wire Wire Line
	2350 3000 2350 2850
Connection ~ 2350 2850
Wire Wire Line
	1250 2650 5050 2650
Wire Wire Line
	1250 2750 5050 2750
Wire Wire Line
	9700 5350 9500 5350
Wire Wire Line
	9600 5250 9600 5450
Wire Wire Line
	9600 5250 9100 5250
Connection ~ 9600 5350
Wire Wire Line
	9600 5450 9100 5450
Wire Wire Line
	8800 5450 8300 5450
Wire Wire Line
	8000 5450 7900 5450
Wire Wire Line
	7900 5350 8400 5350
Wire Wire Line
	8000 5250 7900 5250
Wire Wire Line
	8800 5250 8300 5250
Wire Wire Line
	8700 5350 9200 5350
Wire Wire Line
	7900 5800 8250 5800
Wire Wire Line
	7900 5650 9250 5650
Wire Wire Line
	9950 5650 9850 5650
Wire Wire Line
	8950 5800 8850 5800
Wire Wire Line
	8400 3650 7900 3650
Wire Wire Line
	7900 3750 8400 3750
Wire Wire Line
	4400 1500 4950 1500
Wire Wire Line
	4950 1500 4950 1600
Wire Wire Line
	4950 1600 5050 1600
Wire Wire Line
	5050 1700 4850 1700
Wire Wire Line
	4850 1700 4850 1600
Wire Wire Line
	4850 1600 4400 1600
Wire Wire Line
	4400 1700 4750 1700
Wire Wire Line
	4750 1700 4750 1800
Wire Wire Line
	4750 1800 5050 1800
Wire Wire Line
	4400 1900 5050 1900
Wire Wire Line
	4400 2000 5050 2000
Wire Wire Line
	5050 2100 4400 2100
Wire Wire Line
	4400 2200 4600 2200
Wire Wire Line
	4400 1400 4500 1400
Wire Wire Line
	4500 1400 4500 2200
Connection ~ 4500 2200
Wire Wire Line
	4600 1300 4600 1800
Wire Wire Line
	4600 1800 4400 1800
Text Notes 900  3250 1    60   ~ 0
Various I2C temperature\nsensors (DS1731)\nBattery, structure, PCBs,\ncupola, camera, ...
Text Notes 2900 6600 0    60   ~ 0
3.3V power supply (from 5V) for µC and periphery
Text Notes 10000 5500 0    60   ~ 0
status LEDs and switches\nfor testing
Text Label 8500 2300 2    60   ~ 0
RXSM_LO
Text Label 8500 2400 2    60   ~ 0
RXSM_SOE
Text Label 8500 2500 2    60   ~ 0
RXSM_SODS
Wire Wire Line
	8500 2300 7900 2300
Wire Wire Line
	7900 2400 8500 2400
Wire Wire Line
	8500 2500 7900 2500
Wire Wire Line
	5050 3750 4300 3750
Wire Wire Line
	4300 3850 5050 3850
Wire Wire Line
	5050 3950 4300 3950
Wire Wire Line
	4300 4050 5050 4050
Wire Wire Line
	5050 4150 4300 4150
Wire Wire Line
	4300 4250 5050 4250
Wire Wire Line
	5050 4350 4300 4350
Wire Wire Line
	4300 4450 5050 4450
Wire Wire Line
	4300 4650 5050 4650
Wire Wire Line
	5050 4750 4300 4750
Wire Wire Line
	4300 4850 5050 4850
Text Label 4300 3050 0    60   ~ 0
extADC_SPI_SCK
Wire Wire Line
	4300 3050 5050 3050
Text Label 4300 3150 0    60   ~ 0
extADC_SPI_MISO
Text Label 4300 3250 0    60   ~ 0
extADC_SPI_MOSI
Text Label 4300 3350 0    60   ~ 0
extADC_SPI_CS1
Text Label 4300 3450 0    60   ~ 0
extADC_SPI_CS2
Wire Wire Line
	4300 3150 5050 3150
Wire Wire Line
	5050 3250 4300 3250
Wire Wire Line
	4300 3350 5050 3350
Wire Wire Line
	5050 3450 4300 3450
$Comp
L DB9_FEMALE J?
U 1 1 59082736
P 9400 1200
F 0 "J?" H 9400 1750 50  0000 C CNN
F 1 "Camera board" V 9600 1200 50  0000 C CNN
F 2 "" H 9400 1200 50  0001 C CNN
F 3 "" H 9400 1200 50  0001 C CNN
	1    9400 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59083068
P 8750 1000
F 0 "#PWR?" H 8750 750 50  0001 C CNN
F 1 "GND" H 8750 850 50  0000 C CNN
F 2 "" H 8750 1000 50  0001 C CNN
F 3 "" H 8750 1000 50  0001 C CNN
	1    8750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1600 8600 800 
Wire Wire Line
	8600 800  9100 800 
NoConn ~ 9100 1100
NoConn ~ 9100 1200
NoConn ~ 9100 1300
NoConn ~ 9100 1400
NoConn ~ 9100 1500
NoConn ~ 9100 1600
Wire Wire Line
	8750 1000 8750 900 
Wire Wire Line
	8750 900  9100 900 
Wire Wire Line
	9100 1000 8900 1000
Wire Wire Line
	8900 1000 8900 1700
$Comp
L DB37_MALE J?
U 1 1 5908B98D
P 800 5500
F 0 "J?" H 800 7500 50  0000 C CNN
F 1 "Powerboard" H 800 3500 50  0000 C CNN
F 2 "" H 800 5500 50  0001 C CNN
F 3 "" H 800 5500 50  0001 C CNN
	1    800  5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 3550 8400 3550
Text Notes 8700 4100 0    60   ~ 0
ToDo: 6x LTC2984 sub-schematic with 2x SPI
Text Label 8500 2000 2    60   ~ 0
RXSM_RX
Text Label 8500 2100 2    60   ~ 0
RXSM_TX
Wire Wire Line
	7900 2000 8500 2000
Wire Wire Line
	7900 2100 8500 2100
$EndSCHEMATC
