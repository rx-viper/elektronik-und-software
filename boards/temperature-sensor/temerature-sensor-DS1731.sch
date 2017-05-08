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
LIBS:rchojetzki-viper-temp-board
LIBS:open-project
LIBS:temerature-sensor-DS1731-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DS1731U U1
U 1 1 58FF72EC
P 2350 1700
F 0 "U1" H 2200 2050 50  0000 C CNN
F 1 "DS1731U" H 2150 1450 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8-1EP_3.9x4.9mm_Pitch1.27mm" H 2250 1700 50  0001 C CNN
F 3 "" H 2350 1800 50  0001 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04_MALE J1
U 1 1 58FF763C
P 650 1450
F 0 "J1" H 650 1825 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 650 1050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 650 1750 50  0001 C CNN
F 3 "" H 650 1750 50  0001 C CNN
	1    650  1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1500 2800 1500
Text Label 1000 1150 0    60   ~ 0
GND
Text Label 1000 1350 0    60   ~ 0
VDD
Wire Wire Line
	2950 1600 2800 1600
Wire Wire Line
	3550 1700 2800 1700
Wire Wire Line
	4150 1800 2800 1800
$Comp
L C C1
U 1 1 591086F1
P 1700 1150
F 0 "C1" H 1725 1250 50  0000 L CNN
F 1 "100nF" H 1725 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1738 1000 50  0001 C CNN
F 3 "" H 1700 1150 50  0001 C CNN
	1    1700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2250 4500 2250
Wire Wire Line
	4500 2250 4500 2150
Wire Wire Line
	3900 2050 3900 2250
Connection ~ 3900 2250
Wire Wire Line
	3300 1950 3300 2250
Connection ~ 3300 2250
Wire Wire Line
	4500 1150 4500 1450
Wire Wire Line
	3900 1350 3900 1150
Connection ~ 3900 1150
Wire Wire Line
	3300 1250 3300 1150
Connection ~ 3300 1150
Wire Wire Line
	3000 1500 3000 1150
Connection ~ 3000 1150
Wire Wire Line
	950  1350 2000 1350
$Comp
L S_JUMPER3 S1
U 1 1 5910A1C4
P 3300 1600
F 0 "S1" V 3100 1600 60  0000 C CNN
F 1 "S_JUMPER3" V 3200 1600 31  0000 C CNN
F 2 "open-project:S_JUMPER_3" H 3300 1600 60  0001 C CNN
F 3 "" H 3300 1600 60  0001 C CNN
	1    3300 1600
	-1   0    0    1   
$EndComp
$Comp
L S_JUMPER3 S2
U 1 1 5910A375
P 3900 1700
F 0 "S2" V 3700 1700 60  0000 C CNN
F 1 "S_JUMPER3" V 3800 1700 31  0000 C CNN
F 2 "open-project:S_JUMPER_3" H 3900 1700 60  0001 C CNN
F 3 "" H 3900 1700 60  0001 C CNN
	1    3900 1700
	-1   0    0    1   
$EndComp
$Comp
L S_JUMPER3 S3
U 1 1 5910A463
P 4500 1800
F 0 "S3" V 4300 1800 60  0000 C CNN
F 1 "S_JUMPER3" V 4400 1800 31  0000 C CNN
F 2 "open-project:S_JUMPER_3" H 4500 1800 60  0001 C CNN
F 3 "" H 4500 1800 60  0001 C CNN
	1    4500 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1600 1200 1600
Wire Wire Line
	1200 1600 1200 1550
Wire Wire Line
	1200 1550 950  1550
Wire Wire Line
	950  1750 1650 1750
Text Label 1000 1550 0    60   ~ 0
SCL
Text Label 1000 1750 0    60   ~ 0
SDA
Wire Wire Line
	2050 1500 1650 1500
Wire Wire Line
	1650 1500 1650 1750
Wire Wire Line
	950  1150 1550 1150
Wire Wire Line
	1550 1800 2050 1800
Wire Wire Line
	1550 1000 1550 2250
Connection ~ 1550 1800
Wire Wire Line
	2000 1350 2000 1150
Wire Wire Line
	2000 1150 4500 1150
Wire Wire Line
	1700 1300 1700 1350
Connection ~ 1700 1350
Wire Wire Line
	1550 1000 1700 1000
Connection ~ 1550 1150
$EndSCHEMATC
