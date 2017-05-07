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
LIBS:DB
LIBS:ds26lv32at
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr User 12598 17717
encoding utf-8
Sheet 2 12
Title "Mainboard Temperature Measurement Systems"
Date "2017-04-19"
Rev "12"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2550 3600 1300 2500
U 58F3DF90
F0 "Mainboard_LTC2984_2" 60
F1 "mainboard-LTC2984_2.sch" 60
F2 "INT" O L 2550 3700 60 
F3 "SCK" I L 2550 3800 60 
F4 "MISO" O L 2550 3900 60 
F5 "MOSI" I L 2550 4000 60 
F6 "~CS" I L 2550 4100 60 
F7 "RTD1_B" I R 3850 3800 60 
F8 "RTD1_C" I R 3850 3900 60 
F9 "RTD1_D" I R 3850 4000 60 
F10 "RTD2_B" I R 3850 4200 60 
F11 "RTD2_C" I R 3850 4300 60 
F12 "RTD2_D" I R 3850 4400 60 
F13 "RTD3_B" I R 3850 4600 60 
F14 "RTD3_C" I R 3850 4700 60 
F15 "RTD3_D" I R 3850 4800 60 
F16 "RTD4_B" I R 3850 5000 60 
F17 "RTD4_C" I R 3850 5100 60 
F18 "RTD4_D" I R 3850 5200 60 
F19 "RTD5_B" I R 3850 5400 60 
F20 "RTD5_C" I R 3850 5500 60 
F21 "RTD5_D" I R 3850 5600 60 
F22 "RTD6_B" I R 3850 5800 60 
F23 "RTD6_C" I R 3850 5900 60 
F24 "RTD6_D" I R 3850 6000 60 
F25 "RTD__A" I R 3850 3650 60 
$EndSheet
Text HLabel 1350 1100 0    60   Input ~ 0
SPI1_SCK
Text HLabel 1350 1300 0    60   Input ~ 0
SPI1_MOSI
Text HLabel 1350 1200 0    60   Output ~ 0
SPI1_MISO
Text HLabel 2300 1400 0    60   Input ~ 0
SPI1_CS1
Text HLabel 2300 4100 0    60   Input ~ 0
SPI1_CS2
Text HLabel 2300 6800 0    60   Input ~ 0
SPI1_CS3
Text HLabel 1350 9200 0    60   Input ~ 0
SPI2_SCK
Text HLabel 1350 9400 0    60   Input ~ 0
SPI2_MOSI
Text HLabel 1350 9300 0    60   Output ~ 0
SPI2_MISO
Text HLabel 2300 9500 0    60   Input ~ 0
SPI2_CS1
Text HLabel 2300 12200 0    60   Input ~ 0
SPI2_CS2
Text HLabel 2300 14900 0    60   Input ~ 0
SPI2_CS3
Text HLabel 2450 1000 0    60   Output ~ 0
INT1
Text HLabel 2450 3700 0    60   Output ~ 0
INT2
Text HLabel 2450 6400 0    60   Output ~ 0
INT3
Text HLabel 2450 9100 0    60   Output ~ 0
INT4
Text HLabel 2450 11800 0    60   Output ~ 0
INT5
Text HLabel 2450 14500 0    60   Output ~ 0
INT6
$Sheet
S 2550 900  1300 2500
U 58F88AA3
F0 "Mainboard_LTC2984_1" 60
F1 "mainboard-LTC2984_1.sch" 60
F2 "INT" O L 2550 1000 60 
F3 "SCK" I L 2550 1100 60 
F4 "MISO" O L 2550 1200 60 
F5 "MOSI" I L 2550 1300 60 
F6 "~CS" I L 2550 1400 60 
F7 "RTD1_B" I R 3850 1100 60 
F8 "RTD1_C" I R 3850 1200 60 
F9 "RTD1_D" I R 3850 1300 60 
F10 "RTD2_B" I R 3850 1500 60 
F11 "RTD2_C" I R 3850 1600 60 
F12 "RTD2_D" I R 3850 1700 60 
F13 "RTD3_B" I R 3850 1900 60 
F14 "RTD3_C" I R 3850 2000 60 
F15 "RTD3_D" I R 3850 2100 60 
F16 "RTD4_B" I R 3850 2300 60 
F17 "RTD4_C" I R 3850 2400 60 
F18 "RTD4_D" I R 3850 2500 60 
F19 "RTD5_B" I R 3850 2700 60 
F20 "RTD5_C" I R 3850 2800 60 
F21 "RTD5_D" I R 3850 2900 60 
F22 "RTD6_B" I R 3850 3100 60 
F23 "RTD6_C" I R 3850 3200 60 
F24 "RTD6_D" I R 3850 3300 60 
F25 "RTD__A" I R 3850 950 60 
$EndSheet
$Sheet
S 2550 6300 1300 2500
U 58F8CE85
F0 "Mainboard_LTC2984_3" 60
F1 "mainboard-LTC2984_3.sch" 60
F2 "INT" O L 2550 6400 60 
F3 "SCK" I L 2550 6500 60 
F4 "MISO" O L 2550 6600 60 
F5 "MOSI" I L 2550 6700 60 
F6 "~CS" I L 2550 6800 60 
F7 "RTD1_B" I R 3850 6500 60 
F8 "RTD1_C" I R 3850 6600 60 
F9 "RTD1_D" I R 3850 6700 60 
F10 "RTD2_B" I R 3850 6900 60 
F11 "RTD2_C" I R 3850 7000 60 
F12 "RTD2_D" I R 3850 7100 60 
F13 "RTD3_B" I R 3850 7300 60 
F14 "RTD3_C" I R 3850 7400 60 
F15 "RTD3_D" I R 3850 7500 60 
F16 "RTD4_B" I R 3850 7700 60 
F17 "RTD4_C" I R 3850 7800 60 
F18 "RTD4_D" I R 3850 7900 60 
F19 "RTD5_B" I R 3850 8100 60 
F20 "RTD5_C" I R 3850 8200 60 
F21 "RTD5_D" I R 3850 8300 60 
F22 "RTD6_B" I R 3850 8500 60 
F23 "RTD6_C" I R 3850 8600 60 
F24 "RTD6_D" I R 3850 8700 60 
F25 "RTD__A" I R 3850 6350 60 
$EndSheet
$Sheet
S 2550 11700 1300 2500
U 58FA8877
F0 "Mainboard_LTC2984_5" 60
F1 "mainboard-LTC2984_5.sch" 60
F2 "INT" O L 2550 11800 60 
F3 "SCK" I L 2550 11900 60 
F4 "MISO" O L 2550 12000 60 
F5 "MOSI" I L 2550 12100 60 
F6 "~CS" I L 2550 12200 60 
F7 "RTD1_B" I R 3850 11900 60 
F8 "RTD1_C" I R 3850 12000 60 
F9 "RTD1_D" I R 3850 12100 60 
F10 "RTD2_B" I R 3850 12300 60 
F11 "RTD2_C" I R 3850 12400 60 
F12 "RTD2_D" I R 3850 12500 60 
F13 "RTD3_B" I R 3850 12700 60 
F14 "RTD3_C" I R 3850 12800 60 
F15 "RTD3_D" I R 3850 12900 60 
F16 "RTD4_B" I R 3850 13100 60 
F17 "RTD4_C" I R 3850 13200 60 
F18 "RTD4_D" I R 3850 13300 60 
F19 "RTD5_B" I R 3850 13500 60 
F20 "RTD5_C" I R 3850 13600 60 
F21 "RTD5_D" I R 3850 13700 60 
F22 "RTD6_B" I R 3850 13900 60 
F23 "RTD6_C" I R 3850 14000 60 
F24 "RTD6_D" I R 3850 14100 60 
F25 "RTD__A" I R 3850 11750 60 
$EndSheet
$Sheet
S 2550 9000 1300 2500
U 58FA8891
F0 "Mainboard_LTC2984_4" 60
F1 "mainboard-LTC2984_4.sch" 60
F2 "INT" O L 2550 9100 60 
F3 "SCK" I L 2550 9200 60 
F4 "MISO" O L 2550 9300 60 
F5 "MOSI" I L 2550 9400 60 
F6 "~CS" I L 2550 9500 60 
F7 "RTD1_B" I R 3850 9200 60 
F8 "RTD1_C" I R 3850 9300 60 
F9 "RTD1_D" I R 3850 9400 60 
F10 "RTD2_B" I R 3850 9600 60 
F11 "RTD2_C" I R 3850 9700 60 
F12 "RTD2_D" I R 3850 9800 60 
F13 "RTD3_B" I R 3850 10000 60 
F14 "RTD3_C" I R 3850 10100 60 
F15 "RTD3_D" I R 3850 10200 60 
F16 "RTD4_B" I R 3850 10400 60 
F17 "RTD4_C" I R 3850 10500 60 
F18 "RTD4_D" I R 3850 10600 60 
F19 "RTD5_B" I R 3850 10800 60 
F20 "RTD5_C" I R 3850 10900 60 
F21 "RTD5_D" I R 3850 11000 60 
F22 "RTD6_B" I R 3850 11200 60 
F23 "RTD6_C" I R 3850 11300 60 
F24 "RTD6_D" I R 3850 11400 60 
F25 "RTD__A" I R 3850 9050 60 
$EndSheet
$Sheet
S 2550 14400 1300 2500
U 58FA88AB
F0 "Mainboard_LTC2984_6" 60
F1 "mainboard-LTC2984_6.sch" 60
F2 "INT" O L 2550 14500 60 
F3 "SCK" I L 2550 14600 60 
F4 "MISO" O L 2550 14700 60 
F5 "MOSI" I L 2550 14800 60 
F6 "~CS" I L 2550 14900 60 
F7 "RTD1_B" I R 3850 14600 60 
F8 "RTD1_C" I R 3850 14700 60 
F9 "RTD1_D" I R 3850 14800 60 
F10 "RTD2_B" I R 3850 15000 60 
F11 "RTD2_C" I R 3850 15100 60 
F12 "RTD2_D" I R 3850 15200 60 
F13 "RTD3_B" I R 3850 15400 60 
F14 "RTD3_C" I R 3850 15500 60 
F15 "RTD3_D" I R 3850 15600 60 
F16 "RTD4_B" I R 3850 15800 60 
F17 "RTD4_C" I R 3850 15900 60 
F18 "RTD4_D" I R 3850 16000 60 
F19 "RTD5_B" I R 3850 16200 60 
F20 "RTD5_C" I R 3850 16300 60 
F21 "RTD5_D" I R 3850 16400 60 
F22 "RTD6_B" I R 3850 16600 60 
F23 "RTD6_C" I R 3850 16700 60 
F24 "RTD6_D" I R 3850 16800 60 
F25 "RTD__A" I R 3850 14450 60 
$EndSheet
$Comp
L GND #PWR014
U 1 1 58FE6256
P 6800 16900
F 0 "#PWR014" H 6800 16650 50  0001 C CNN
F 1 "GND" H 6800 16750 50  0000 C CNN
F 2 "" H 6800 16900 50  0001 C CNN
F 3 "" H 6800 16900 50  0001 C CNN
	1    6800 16900
	1    0    0    -1  
$EndComp
$Comp
L DB_44 U201
U 1 1 590CEC6D
P 10600 11600
F 0 "U201" H 10600 9250 60  0000 C CNN
F 1 "RTD_20-30" H 10600 13850 60  0000 C CNN
F 2 "D-Sub-HD:D-Sub_HD_44_F" H 11800 11600 60  0001 C CNN
F 3 "" H 11800 11600 60  0001 C CNN
	1    10600 11600
	1    0    0    -1  
$EndComp
$Comp
L DB_78 U202
U 1 1 590CF164
P 10750 4700
F 0 "U202" H 10750 400 60  0000 C CNN
F 1 "RTD_1-19" H 10750 8700 60  0000 C CNN
F 2 "D-Sub-HD:D-Sub_HD_78_F" H 10600 8400 60  0001 C CNN
F 3 "" H 10600 8400 60  0001 C CNN
	1    10750 4700
	1    0    0    -1  
$EndComp
NoConn ~ 10200 8600
NoConn ~ 10200 8700
$Comp
L DB25_FEMALE J201
U 1 1 58FE1FD8
P 7200 15600
F 0 "J201" H 7200 16950 50  0000 C CNN
F 1 "RTD_31-36" H 7200 14225 50  0000 C CNN
F 2 "Connectors:DB25FD" H 7200 15600 50  0001 C CNN
F 3 "" H 7200 15600 50  0001 C CNN
	1    7200 15600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 16900 6800 15600
Wire Wire Line
	6800 15600 6900 15600
Wire Wire Line
	3850 16800 6900 16800
Wire Wire Line
	3850 16700 6900 16700
Wire Wire Line
	3850 16600 6900 16600
Wire Wire Line
	3850 16400 6900 16400
Wire Wire Line
	3850 16300 6900 16300
Wire Wire Line
	6900 16200 3850 16200
Wire Wire Line
	3850 16000 6900 16000
Wire Wire Line
	6900 15900 3850 15900
Wire Wire Line
	3850 15800 6900 15800
Wire Wire Line
	3850 14600 4050 14600
Wire Wire Line
	4050 14600 4050 14500
Wire Wire Line
	4050 14500 6900 14500
Wire Wire Line
	6900 14600 4150 14600
Wire Wire Line
	4150 14600 4150 14700
Wire Wire Line
	4150 14700 3850 14700
Wire Wire Line
	3850 14800 4250 14800
Wire Wire Line
	4250 14800 4250 14700
Wire Wire Line
	4250 14700 6900 14700
Wire Wire Line
	6900 14900 4050 14900
Wire Wire Line
	4050 14900 4050 15000
Wire Wire Line
	4050 15000 3850 15000
Wire Wire Line
	3850 15100 4150 15100
Wire Wire Line
	4150 15100 4150 15000
Wire Wire Line
	4150 15000 6900 15000
Wire Wire Line
	6900 15100 4250 15100
Wire Wire Line
	4250 15100 4250 15200
Wire Wire Line
	4250 15200 3850 15200
Wire Wire Line
	3850 15400 4050 15400
Wire Wire Line
	4050 15400 4050 15300
Wire Wire Line
	4050 15300 6900 15300
Wire Wire Line
	6900 15400 4150 15400
Wire Wire Line
	4150 15400 4150 15500
Wire Wire Line
	4150 15500 3850 15500
Wire Wire Line
	3850 15600 4250 15600
Wire Wire Line
	4250 15600 4250 15500
Wire Wire Line
	4250 15500 6900 15500
Wire Wire Line
	3850 14450 3950 14450
Wire Wire Line
	3950 14450 3950 14400
Wire Wire Line
	3950 14400 6900 14400
Wire Wire Line
	5600 14400 5600 16500
Wire Wire Line
	5600 14800 6900 14800
Connection ~ 5600 14400
Wire Wire Line
	5600 15200 6900 15200
Connection ~ 5600 14800
Wire Wire Line
	5600 15700 6900 15700
Connection ~ 5600 15200
Wire Wire Line
	5600 16100 6900 16100
Connection ~ 5600 15700
Wire Wire Line
	5600 16500 6900 16500
Connection ~ 5600 16100
Wire Wire Line
	1350 9200 2550 9200
Wire Wire Line
	1750 11900 2550 11900
Connection ~ 1750 9200
Wire Wire Line
	1350 9300 2550 9300
Wire Wire Line
	2550 9400 1350 9400
Wire Wire Line
	1650 9300 1650 14700
Wire Wire Line
	1650 12000 2550 12000
Connection ~ 1650 9300
Wire Wire Line
	2550 12100 1550 12100
Wire Wire Line
	1550 9400 1550 14800
Connection ~ 1550 9400
Wire Wire Line
	1550 14800 2550 14800
Connection ~ 1550 12100
Wire Wire Line
	1650 14700 2550 14700
Connection ~ 1650 12000
Wire Wire Line
	1750 14600 2550 14600
Connection ~ 1750 11900
Wire Wire Line
	2550 14500 2450 14500
Wire Wire Line
	2300 14900 2550 14900
Wire Wire Line
	2550 11800 2450 11800
Wire Wire Line
	2300 12200 2550 12200
Wire Wire Line
	1350 1100 2550 1100
Wire Wire Line
	2550 1200 1350 1200
Wire Wire Line
	1350 1300 2550 1300
Wire Wire Line
	2300 1400 2550 1400
Wire Wire Line
	2450 1000 2550 1000
Wire Wire Line
	1650 1200 1650 6600
Wire Wire Line
	1650 3900 2550 3900
Connection ~ 1650 1200
Wire Wire Line
	2550 4000 1550 4000
Wire Wire Line
	1550 1300 1550 6700
Connection ~ 1550 1300
Wire Wire Line
	1750 1100 1750 6500
Wire Wire Line
	1750 3800 2550 3800
Connection ~ 1750 1100
Wire Wire Line
	2550 3700 2450 3700
Wire Wire Line
	2300 4100 2550 4100
Wire Wire Line
	1550 6700 2550 6700
Connection ~ 1550 4000
Wire Wire Line
	1650 6600 2550 6600
Connection ~ 1650 3900
Wire Wire Line
	1750 6500 2550 6500
Connection ~ 1750 3800
Wire Wire Line
	2550 6400 2450 6400
Wire Wire Line
	2300 6800 2550 6800
Wire Wire Line
	2300 9500 2550 9500
Wire Wire Line
	2450 9100 2550 9100
Wire Wire Line
	1750 9200 1750 14600
Wire Wire Line
	3850 1200 10200 1200
Wire Wire Line
	3850 1100 10200 1100
Wire Wire Line
	10200 1300 3850 1300
Wire Wire Line
	3850 950  9850 950 
Wire Wire Line
	9850 950  9850 3000
Wire Wire Line
	9850 1000 10200 1000
Wire Wire Line
	9850 1400 10200 1400
Connection ~ 9850 1000
Wire Wire Line
	3850 1500 10200 1500
Wire Wire Line
	10200 1600 3850 1600
Wire Wire Line
	3850 1700 10200 1700
Wire Wire Line
	3850 1900 10200 1900
Wire Wire Line
	10200 2000 3850 2000
Wire Wire Line
	3850 2100 10200 2100
Wire Wire Line
	10200 2300 3850 2300
Wire Wire Line
	3850 2400 10200 2400
Wire Wire Line
	10200 2500 3850 2500
Wire Wire Line
	3850 2700 10200 2700
Wire Wire Line
	10200 2800 3850 2800
Wire Wire Line
	3850 2900 10200 2900
Wire Wire Line
	10200 3100 3850 3100
Wire Wire Line
	3850 3200 10200 3200
Wire Wire Line
	10200 3300 3850 3300
Wire Wire Line
	9850 1800 10200 1800
Connection ~ 9850 1400
Wire Wire Line
	9850 2200 10200 2200
Connection ~ 9850 1800
Wire Wire Line
	9850 2600 10200 2600
Connection ~ 9850 2200
Wire Wire Line
	9850 3000 10200 3000
Connection ~ 9850 2600
Wire Wire Line
	3850 3650 4300 3650
Wire Wire Line
	4300 3650 4300 3400
Wire Wire Line
	4300 3400 10200 3400
Wire Wire Line
	10200 3500 4400 3500
Wire Wire Line
	4400 3500 4400 3800
Wire Wire Line
	4400 3800 3850 3800
Wire Wire Line
	3850 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3600
Wire Wire Line
	4500 3600 10200 3600
Wire Wire Line
	3850 4000 4600 4000
Wire Wire Line
	4600 4000 4600 3700
Wire Wire Line
	4600 3700 10200 3700
Wire Wire Line
	10200 3900 4700 3900
Wire Wire Line
	4700 3900 4700 4200
Wire Wire Line
	4700 4200 3850 4200
Wire Wire Line
	3850 4300 4800 4300
Wire Wire Line
	4800 4300 4800 4000
Wire Wire Line
	4800 4000 10200 4000
Wire Wire Line
	3850 4400 4900 4400
Wire Wire Line
	4900 4400 4900 4100
Wire Wire Line
	4900 4100 10200 4100
Wire Wire Line
	10200 4300 5000 4300
Wire Wire Line
	5000 4300 5000 4600
Wire Wire Line
	5000 4600 3850 4600
Wire Wire Line
	3850 4700 5100 4700
Wire Wire Line
	5100 4700 5100 4400
Wire Wire Line
	5100 4400 10200 4400
Wire Wire Line
	10200 4500 5200 4500
Wire Wire Line
	5200 4500 5200 4800
Wire Wire Line
	5200 4800 3850 4800
Wire Wire Line
	10200 4700 5300 4700
Wire Wire Line
	5300 4700 5300 5000
Wire Wire Line
	5300 5000 3850 5000
Wire Wire Line
	3850 5100 5400 5100
Wire Wire Line
	5400 5100 5400 4800
Wire Wire Line
	5400 4800 10200 4800
Wire Wire Line
	10200 4900 5500 4900
Wire Wire Line
	5500 4900 5500 5200
Wire Wire Line
	5500 5200 3850 5200
Wire Wire Line
	3850 5400 5600 5400
Wire Wire Line
	5600 5400 5600 5100
Wire Wire Line
	5600 5100 10200 5100
Wire Wire Line
	10200 5200 5700 5200
Wire Wire Line
	5700 5200 5700 5500
Wire Wire Line
	5700 5500 3850 5500
Wire Wire Line
	3850 5600 5800 5600
Wire Wire Line
	5800 5600 5800 5300
Wire Wire Line
	5800 5300 10200 5300
Wire Wire Line
	10200 5500 5900 5500
Wire Wire Line
	5900 5500 5900 5800
Wire Wire Line
	5900 5800 3850 5800
Wire Wire Line
	3850 5900 6000 5900
Wire Wire Line
	6000 5900 6000 5600
Wire Wire Line
	6000 5600 10200 5600
Wire Wire Line
	10200 5700 6100 5700
Wire Wire Line
	6100 5700 6100 6000
Wire Wire Line
	6100 6000 3850 6000
Wire Wire Line
	9850 3400 9850 5400
Wire Wire Line
	9850 3800 10200 3800
Connection ~ 9850 3400
Wire Wire Line
	9850 4200 10200 4200
Connection ~ 9850 3800
Wire Wire Line
	9850 4600 10200 4600
Connection ~ 9850 4200
Wire Wire Line
	9850 5000 10200 5000
Connection ~ 9850 4600
Wire Wire Line
	9850 5400 10200 5400
Connection ~ 9850 5000
Wire Wire Line
	3850 6350 6200 6350
Wire Wire Line
	6200 6350 6200 5800
Wire Wire Line
	6200 5800 10200 5800
Wire Wire Line
	10200 5900 6300 5900
Wire Wire Line
	6300 5900 6300 6500
Wire Wire Line
	6300 6500 3850 6500
Wire Wire Line
	3850 6600 6400 6600
Wire Wire Line
	6400 6600 6400 6000
Wire Wire Line
	6400 6000 10200 6000
Wire Wire Line
	10200 6100 6500 6100
Wire Wire Line
	6500 6100 6500 6700
Wire Wire Line
	6500 6700 3850 6700
Wire Wire Line
	3850 6900 6600 6900
Wire Wire Line
	6600 6900 6600 6300
Wire Wire Line
	6600 6300 10200 6300
Wire Wire Line
	10200 6400 6700 6400
Wire Wire Line
	6700 6400 6700 7000
Wire Wire Line
	6700 7000 3850 7000
Wire Wire Line
	3850 7100 6800 7100
Wire Wire Line
	6800 7100 6800 6500
Wire Wire Line
	6800 6500 10200 6500
Wire Wire Line
	10200 6700 6900 6700
Wire Wire Line
	6900 6700 6900 7300
Wire Wire Line
	6900 7300 3850 7300
Wire Wire Line
	3850 7400 7000 7400
Wire Wire Line
	7000 7400 7000 6800
Wire Wire Line
	7000 6800 10200 6800
Wire Wire Line
	3850 7500 7100 7500
Wire Wire Line
	7100 7500 7100 6900
Wire Wire Line
	7100 6900 10200 6900
Wire Wire Line
	10200 7100 7200 7100
Wire Wire Line
	7200 7100 7200 7700
Wire Wire Line
	7200 7700 3850 7700
Wire Wire Line
	3850 7800 7300 7800
Wire Wire Line
	7300 7800 7300 7200
Wire Wire Line
	7300 7200 10200 7200
Wire Wire Line
	10200 7300 7400 7300
Wire Wire Line
	7400 7300 7400 7900
Wire Wire Line
	7400 7900 3850 7900
Wire Wire Line
	3850 8100 7500 8100
Wire Wire Line
	7500 8100 7500 7500
Wire Wire Line
	7500 7500 10200 7500
Wire Wire Line
	10200 7600 7600 7600
Wire Wire Line
	7600 7600 7600 8200
Wire Wire Line
	7600 8200 3850 8200
Wire Wire Line
	3850 8300 7700 8300
Wire Wire Line
	7700 8300 7700 7700
Wire Wire Line
	7700 7700 10200 7700
Wire Wire Line
	10200 7900 7800 7900
Wire Wire Line
	7800 7900 7800 8500
Wire Wire Line
	7800 8500 3850 8500
Wire Wire Line
	3850 8600 7900 8600
Wire Wire Line
	7900 8600 7900 8000
Wire Wire Line
	7900 8000 10200 8000
Wire Wire Line
	10200 8100 8000 8100
Wire Wire Line
	8000 8100 8000 8700
Wire Wire Line
	8000 8700 3850 8700
Wire Wire Line
	9850 5800 9850 7800
Wire Wire Line
	9850 7800 10200 7800
Connection ~ 9850 5800
Wire Wire Line
	10200 6200 9850 6200
Connection ~ 9850 6200
Wire Wire Line
	9850 6600 10200 6600
Connection ~ 9850 6600
Wire Wire Line
	10200 7000 9850 7000
Connection ~ 9850 7000
Wire Wire Line
	9850 7400 10200 7400
Connection ~ 9850 7400
Wire Wire Line
	3850 9050 8200 9050
Wire Wire Line
	8200 9050 8200 8200
Wire Wire Line
	8200 8200 10200 8200
Wire Wire Line
	10200 8300 8300 8300
Wire Wire Line
	8300 8300 8300 9200
Wire Wire Line
	8300 9200 3850 9200
Wire Wire Line
	3850 9300 8400 9300
Wire Wire Line
	8400 9300 8400 8400
Wire Wire Line
	8400 8400 10200 8400
Wire Wire Line
	8500 8500 10200 8500
Wire Wire Line
	8500 8500 8500 9400
Wire Wire Line
	8500 9400 3850 9400
Wire Wire Line
	3850 9600 10200 9600
Wire Wire Line
	9850 8200 9850 11100
Wire Wire Line
	9850 9500 10200 9500
Connection ~ 9850 8200
Wire Wire Line
	10200 9700 3850 9700
Wire Wire Line
	3850 9800 10200 9800
Wire Wire Line
	10200 10000 3850 10000
Wire Wire Line
	3850 10100 10200 10100
Wire Wire Line
	10200 10200 3850 10200
Wire Wire Line
	3850 10400 10200 10400
Wire Wire Line
	10200 10500 3850 10500
Wire Wire Line
	3850 10600 10200 10600
Wire Wire Line
	3850 10800 10200 10800
Wire Wire Line
	10200 10900 3850 10900
Wire Wire Line
	3850 11000 10200 11000
Wire Wire Line
	10200 11200 3850 11200
Wire Wire Line
	3850 11300 10200 11300
Wire Wire Line
	10200 11400 3850 11400
Wire Wire Line
	9850 11100 10200 11100
Connection ~ 9850 9500
Wire Wire Line
	10200 10700 9850 10700
Connection ~ 9850 10700
Wire Wire Line
	9850 10300 10200 10300
Connection ~ 9850 10300
Wire Wire Line
	10200 9900 9850 9900
Connection ~ 9850 9900
Wire Wire Line
	3850 11750 4350 11750
Wire Wire Line
	4350 11750 4350 11500
Wire Wire Line
	4350 11500 10200 11500
Wire Wire Line
	3850 11900 4450 11900
Wire Wire Line
	4450 11900 4450 11600
Wire Wire Line
	4450 11600 10200 11600
Wire Wire Line
	10200 11700 4550 11700
Wire Wire Line
	4550 11700 4550 12000
Wire Wire Line
	4550 12000 3850 12000
Wire Wire Line
	3850 12100 4650 12100
Wire Wire Line
	4650 12100 4650 11800
Wire Wire Line
	4650 11800 10200 11800
Wire Wire Line
	10200 12000 4750 12000
Wire Wire Line
	4750 12000 4750 12300
Wire Wire Line
	4750 12300 3850 12300
Wire Wire Line
	3850 12400 4850 12400
Wire Wire Line
	4850 12400 4850 12100
Wire Wire Line
	4850 12100 10200 12100
Wire Wire Line
	10200 12200 4950 12200
Wire Wire Line
	4950 12200 4950 12500
Wire Wire Line
	4950 12500 3850 12500
Wire Wire Line
	3850 12700 5050 12700
Wire Wire Line
	5050 12700 5050 12400
Wire Wire Line
	5050 12400 10200 12400
Wire Wire Line
	10200 12500 5150 12500
Wire Wire Line
	5150 12500 5150 12800
Wire Wire Line
	5150 12800 3850 12800
Wire Wire Line
	3850 12900 5250 12900
Wire Wire Line
	5250 12900 5250 12600
Wire Wire Line
	5250 12600 10200 12600
Wire Wire Line
	10200 12800 5350 12800
Wire Wire Line
	5350 12800 5350 13100
Wire Wire Line
	5350 13100 3850 13100
Wire Wire Line
	3850 13200 5450 13200
Wire Wire Line
	5450 13200 5450 12900
Wire Wire Line
	5450 12900 10200 12900
Wire Wire Line
	10200 13000 5550 13000
Wire Wire Line
	5550 13000 5550 13300
Wire Wire Line
	5550 13300 3850 13300
Wire Wire Line
	3850 13500 5650 13500
Wire Wire Line
	5650 13500 5650 13200
Wire Wire Line
	5650 13200 10200 13200
Wire Wire Line
	10200 13300 5750 13300
Wire Wire Line
	5750 13300 5750 13600
Wire Wire Line
	5750 13600 3850 13600
Wire Wire Line
	3850 13700 5850 13700
Wire Wire Line
	5850 13700 5850 13400
Wire Wire Line
	5850 13400 10200 13400
Wire Wire Line
	3850 13900 5950 13900
Wire Wire Line
	5950 13900 5950 13600
Wire Wire Line
	5950 13600 10200 13600
Wire Wire Line
	10200 13700 6050 13700
Wire Wire Line
	6050 13700 6050 14000
Wire Wire Line
	6050 14000 3850 14000
Wire Wire Line
	3850 14100 6150 14100
Wire Wire Line
	6150 14100 6150 13800
Wire Wire Line
	6150 13800 10200 13800
Wire Wire Line
	9850 11500 9850 13500
Wire Wire Line
	9850 13500 10200 13500
Connection ~ 9850 11500
Wire Wire Line
	10200 13100 9850 13100
Connection ~ 9850 13100
Wire Wire Line
	9850 12700 10200 12700
Connection ~ 9850 12700
Wire Wire Line
	10200 12300 9850 12300
Connection ~ 9850 12300
Wire Wire Line
	9850 11900 10200 11900
Connection ~ 9850 11900
Text Label 8700 950  0    60   ~ 0
T1_RTD1_A
Text Label 8700 1100 0    60   ~ 0
T1_RTD1_B
Text Label 8700 1200 0    60   ~ 0
T1_RTD1_C
Text Label 8700 1300 0    60   ~ 0
T1_RTD1_D
Text Label 8700 1500 0    60   ~ 0
T1_RTD2_B
Text Label 8700 1600 0    60   ~ 0
T1_RTD2_C
Text Label 8700 1700 0    60   ~ 0
T1_RTD2_D
Text Label 8700 1900 0    60   ~ 0
T1_RTD3_B
Text Label 8700 2000 0    60   ~ 0
T1_RTD3_C
Text Label 8700 2100 0    60   ~ 0
T1_RTD3_D
Text Label 8700 2300 0    60   ~ 0
T1_RTD4_B
Text Label 8700 2400 0    60   ~ 0
T1_RTD4_C
Text Label 8700 2500 0    60   ~ 0
T1_RTD4_D
Text Label 8700 2700 0    60   ~ 0
T1_RTD5_B
Text Label 8700 2800 0    60   ~ 0
T1_RTD5_C
Text Label 8700 2900 0    60   ~ 0
T1_RTD5_D
Text Label 8700 3100 0    60   ~ 0
T1_RTD6_B
Text Label 8700 3200 0    60   ~ 0
T1_RTD6_C
Text Label 8700 3300 0    60   ~ 0
T1_RTD6_D
Text Label 8700 3400 0    60   ~ 0
T2_RTD1_A
Text Label 8700 3500 0    60   ~ 0
T2_RTD1_B
Text Label 8700 3600 0    60   ~ 0
T2_RTD1_C
Text Label 8700 3700 0    60   ~ 0
T2_RTD1_D
Text Label 8700 3900 0    60   ~ 0
T2_RTD2_B
Text Label 8700 4000 0    60   ~ 0
T2_RTD2_C
Text Label 8700 4100 0    60   ~ 0
T2_RTD2_D
Text Label 8700 4300 0    60   ~ 0
T2_RTD3_B
Text Label 8700 4400 0    60   ~ 0
T2_RTD3_C
Text Label 8700 4500 0    60   ~ 0
T2_RTD3_D
Text Label 8700 4700 0    60   ~ 0
T2_RTD4_B
Text Label 8700 4800 0    60   ~ 0
T2_RTD4_C
Text Label 8700 4900 0    60   ~ 0
T2_RTD4_D
Text Label 8700 5100 0    60   ~ 0
T2_RTD5_B
Text Label 8700 5200 0    60   ~ 0
T2_RTD5_C
Text Label 8700 5300 0    60   ~ 0
T2_RTD5_D
Text Label 8700 5500 0    60   ~ 0
T2_RTD6_B
Text Label 8700 5600 0    60   ~ 0
T2_RTD6_C
Text Label 8700 5700 0    60   ~ 0
T2_RTD6_D
Text Label 8700 5800 0    60   ~ 0
T3_RTD1_A
Text Label 8700 5900 0    60   ~ 0
T3_RTD1_B
Text Label 8700 6000 0    60   ~ 0
T3_RTD1_C
Text Label 8700 6100 0    60   ~ 0
T3_RTD1_D
Text Label 8700 6300 0    60   ~ 0
T3_RTD2_B
Text Label 8700 6400 0    60   ~ 0
T3_RTD2_C
Text Label 8700 6500 0    60   ~ 0
T3_RTD2_D
Text Label 8700 6700 0    60   ~ 0
T3_RTD3_B
Text Label 8700 6800 0    60   ~ 0
T3_RTD3_C
Text Label 8700 6900 0    60   ~ 0
T3_RTD3_D
Text Label 8700 7100 0    60   ~ 0
T3_RTD4_B
Text Label 8700 7200 0    60   ~ 0
T3_RTD4_C
Text Label 8700 7300 0    60   ~ 0
T3_RTD4_D
Text Label 8700 7500 0    60   ~ 0
T3_RTD5_B
Text Label 8700 7600 0    60   ~ 0
T3_RTD5_C
Text Label 8700 7700 0    60   ~ 0
T3_RTD5_D
Text Label 8700 7900 0    60   ~ 0
T3_RTD6_B
Text Label 8700 8000 0    60   ~ 0
T3_RTD6_C
Text Label 8700 8100 0    60   ~ 0
T3_RTD6_D
Text Label 8700 8200 0    60   ~ 0
T4_RTD1_A
Text Label 8700 8300 0    60   ~ 0
T4_RTD1_B
Text Label 8700 8400 0    60   ~ 0
T4_RTD1_C
Text Label 8700 8500 0    60   ~ 0
T4_RTD1_D
Text Label 8700 9600 0    60   ~ 0
T4_RTD2_B
Text Label 8700 9700 0    60   ~ 0
T4_RTD2_C
Text Label 8700 9800 0    60   ~ 0
T4_RTD2_D
Text Label 8700 10000 0    60   ~ 0
T4_RTD3_B
Text Label 8700 10100 0    60   ~ 0
T4_RTD3_C
Text Label 8700 10200 0    60   ~ 0
T4_RTD3_D
Text Label 8700 10400 0    60   ~ 0
T4_RTD4_B
Text Label 8700 10500 0    60   ~ 0
T4_RTD4_C
Text Label 8700 10600 0    60   ~ 0
T4_RTD4_D
Text Label 8700 10800 0    60   ~ 0
T4_RTD5_B
Text Label 8700 10900 0    60   ~ 0
T4_RTD5_C
Text Label 8700 11000 0    60   ~ 0
T4_RTD5_D
Text Label 8700 11200 0    60   ~ 0
T4_RTD6_B
Text Label 8700 11300 0    60   ~ 0
T4_RTD6_C
Text Label 8700 11400 0    60   ~ 0
T4_RTD6_D
Text Label 8700 11500 0    60   ~ 0
T5_RTD1_A
Text Label 8700 11600 0    60   ~ 0
T5_RTD1_B
Text Label 8700 11700 0    60   ~ 0
T5_RTD1_C
Text Label 8700 11800 0    60   ~ 0
T5_RTD1_D
Text Label 8700 12000 0    60   ~ 0
T5_RTD2_B
Text Label 8700 12100 0    60   ~ 0
T5_RTD2_C
Text Label 8700 12200 0    60   ~ 0
T5_RTD2_D
Text Label 8700 12400 0    60   ~ 0
T5_RTD3_B
Text Label 8700 12500 0    60   ~ 0
T5_RTD3_C
Text Label 8700 12600 0    60   ~ 0
T5_RTD3_D
Text Label 8700 12800 0    60   ~ 0
T5_RTD4_B
Text Label 8700 12900 0    60   ~ 0
T5_RTD4_C
Text Label 8700 13000 0    60   ~ 0
T5_RTD4_D
Text Label 8700 13200 0    60   ~ 0
T5_RTD5_B
Text Label 8700 13300 0    60   ~ 0
T5_RTD5_C
Text Label 8700 13400 0    60   ~ 0
T5_RTD5_D
Text Label 8700 13600 0    60   ~ 0
T5_RTD6_B
Text Label 8700 13700 0    60   ~ 0
T5_RTD6_C
Text Label 8700 13800 0    60   ~ 0
T5_RTD6_D
Text Label 6000 14400 0    60   ~ 0
T6_RTD1_A
Text Label 6000 14500 0    60   ~ 0
T6_RTD1_B
Text Label 6000 14600 0    60   ~ 0
T6_RTD1_C
Text Label 6000 14700 0    60   ~ 0
T6_RTD1_D
Text Label 6000 14900 0    60   ~ 0
T6_RTD2_B
Text Label 6000 15000 0    60   ~ 0
T6_RTD2_C
Text Label 6000 15100 0    60   ~ 0
T6_RTD2_D
Text Label 6000 15300 0    60   ~ 0
T6_RTD3_B
Text Label 6000 15400 0    60   ~ 0
T6_RTD3_C
Text Label 6000 15500 0    60   ~ 0
T6_RTD3_D
Text Label 6000 15800 0    60   ~ 0
T6_RTD4_B
Text Label 6000 15900 0    60   ~ 0
T6_RTD4_C
Text Label 6000 16000 0    60   ~ 0
T6_RTD4_D
Text Label 6000 16200 0    60   ~ 0
T6_RTD5_B
Text Label 6000 16300 0    60   ~ 0
T6_RTD5_C
Text Label 6000 16400 0    60   ~ 0
T6_RTD5_D
Text Label 6000 16600 0    60   ~ 0
T6_RTD6_B
Text Label 6000 16700 0    60   ~ 0
T6_RTD6_C
Text Label 6000 16800 0    60   ~ 0
T6_RTD6_D
$Comp
L TEST_1P J202
U 1 1 591162B7
P 1350 1600
F 0 "J202" V 1400 1600 50  0000 C CNN
F 1 "T_SPI1_SCK" V 1350 2000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 1600 50  0001 C CNN
F 3 "" H 1550 1600 50  0001 C CNN
	1    1350 1600
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J204
U 1 1 591162BE
P 1350 2000
F 0 "J204" V 1400 2000 50  0000 C CNN
F 1 "T_SPI1_MOSI" V 1350 2400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 2000 50  0001 C CNN
F 3 "" H 1550 2000 50  0001 C CNN
	1    1350 2000
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J203
U 1 1 591162C5
P 1350 1800
F 0 "J203" V 1400 1800 50  0000 C CNN
F 1 "T_SPI1_MISO" V 1350 2200 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 1800 50  0001 C CNN
F 3 "" H 1550 1800 50  0001 C CNN
	1    1350 1800
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J205
U 1 1 591162CC
P 1350 9700
F 0 "J205" V 1400 9700 50  0000 C CNN
F 1 "T_SPI2_SCK" V 1350 10100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 9700 50  0001 C CNN
F 3 "" H 1550 9700 50  0001 C CNN
	1    1350 9700
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J207
U 1 1 591162D3
P 1350 10100
F 0 "J207" V 1400 10100 50  0000 C CNN
F 1 "T_SPI2_MOSI" V 1350 10500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 10100 50  0001 C CNN
F 3 "" H 1550 10100 50  0001 C CNN
	1    1350 10100
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P J206
U 1 1 591162DA
P 1350 9900
F 0 "J206" V 1400 9900 50  0000 C CNN
F 1 "T_SPI2_MISO" V 1350 10300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 9900 50  0001 C CNN
F 3 "" H 1550 9900 50  0001 C CNN
	1    1350 9900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 1600 1750 1600
Connection ~ 1750 1600
Wire Wire Line
	1650 1800 1350 1800
Connection ~ 1650 1800
Wire Wire Line
	1350 2000 1550 2000
Connection ~ 1550 2000
Wire Wire Line
	1350 10100 1550 10100
Connection ~ 1550 10100
Wire Wire Line
	1350 9900 1650 9900
Connection ~ 1650 9900
Wire Wire Line
	1350 9700 1750 9700
Connection ~ 1750 9700
$Comp
L TEST_1P J208
U 1 1 59132096
P 2400 1500
F 0 "J208" H 2500 1550 50  0000 C CNN
F 1 "T_SPI1_CS1" V 2400 1900 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2600 1500 50  0001 C CNN
F 3 "" H 2600 1500 50  0001 C CNN
	1    2400 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1400 2400 1500
Connection ~ 2400 1400
$Comp
L TEST_1P J209
U 1 1 591364FA
P 2400 4200
F 0 "J209" H 2500 4250 50  0000 C CNN
F 1 "T_SPI1_CS2" V 2400 4600 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2600 4200 50  0001 C CNN
F 3 "" H 2600 4200 50  0001 C CNN
	1    2400 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 4100 2400 4200
Connection ~ 2400 4100
$Comp
L TEST_1P J210
U 1 1 5913A386
P 2400 6900
F 0 "J210" H 2500 6950 50  0000 C CNN
F 1 "T_SPI1_CS3" V 2400 7300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2600 6900 50  0001 C CNN
F 3 "" H 2600 6900 50  0001 C CNN
	1    2400 6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 6800 2400 6900
Connection ~ 2400 6800
$Comp
L TEST_1P J211
U 1 1 5913F71A
P 2400 9600
F 0 "J211" H 2500 9650 50  0000 C CNN
F 1 "T_SPI2_CS1" V 2400 10000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2600 9600 50  0001 C CNN
F 3 "" H 2600 9600 50  0001 C CNN
	1    2400 9600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 9500 2400 9600
Connection ~ 2400 9500
$Comp
L TEST_1P J212
U 1 1 59142F0B
P 2400 12300
F 0 "J212" H 2500 12350 50  0000 C CNN
F 1 "T_SPI2_CS2" V 2400 12700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2600 12300 50  0001 C CNN
F 3 "" H 2600 12300 50  0001 C CNN
	1    2400 12300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 12300 2400 12200
Connection ~ 2400 12200
$Comp
L TEST_1P J213
U 1 1 5914BC93
P 2400 15000
F 0 "J213" H 2500 15050 50  0000 C CNN
F 1 "T_SPI2_CS3" V 2400 15400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2600 15000 50  0001 C CNN
F 3 "" H 2600 15000 50  0001 C CNN
	1    2400 15000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 14900 2400 15000
Connection ~ 2400 14900
$EndSCHEMATC
