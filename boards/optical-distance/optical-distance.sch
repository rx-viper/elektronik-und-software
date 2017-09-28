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
LIBS:optical-distance
LIBS:optical-distance-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Optical distance sensor"
Date "2017-05-30"
Rev "1"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HEDS-9731#15X E1
U 1 1 591DC4C2
P 3750 1700
F 0 "E1" H 3750 2000 60  0000 C CNN
F 1 "HEDS-9731#15X" H 3750 1400 60  0000 C CNN
F 2 "rchojetzki-optical-distance:HEDS-9731#X50" H 3800 1550 60  0001 C CNN
F 3 "" H 3800 1550 60  0001 C CNN
	1    3750 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J1
U 1 1 591E1D87
P 1400 2300
F 0 "J1" H 1400 2500 50  0000 C CNN
F 1 "CONN_02X03" H 1400 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 1400 1100 50  0001 C CNN
F 3 "" H 1400 1100 50  0001 C CNN
	1    1400 2300
	0    -1   -1   0   
$EndComp
$Comp
L DS9638 U1
U 1 1 59247C07
P 2300 1700
F 0 "U1" H 2300 2000 60  0000 C CNN
F 1 "DS9638" H 2300 1400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2200 1700 60  0001 C CNN
F 3 "" H 2200 1700 60  0001 C CNN
	1    2300 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 1550 3300 1550
Wire Wire Line
	2800 1850 3050 1850
Wire Wire Line
	3050 1850 3050 1750
Wire Wire Line
	3050 1750 3300 1750
Wire Wire Line
	3300 1850 3200 1850
Wire Wire Line
	3200 1850 3200 1800
Wire Wire Line
	3200 1800 2900 1800
Wire Wire Line
	2950 1300 2950 1550
Connection ~ 2950 1550
$Comp
L C C1
U 1 1 592486D5
P 1950 2950
F 0 "C1" H 1975 3050 50  0000 L CNN
F 1 "100nF" H 1975 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1988 2800 50  0001 C CNN
F 3 "" H 1950 2950 50  0001 C CNN
	1    1950 2950
	1    0    0    -1  
$EndComp
Text Label 2550 3150 0    60   ~ 0
GND
Text Label 2550 2750 0    60   ~ 0
VCC
Wire Wire Line
	2800 1650 3300 1650
Wire Wire Line
	1400 1750 1750 1750
Wire Wire Line
	1750 1850 1300 1850
Wire Wire Line
	1300 1850 1300 2050
Wire Wire Line
	1400 1750 1400 2050
Wire Wire Line
	1750 1650 1500 1650
Wire Wire Line
	1500 1650 1500 2050
Wire Wire Line
	1750 1550 1700 1550
Wire Wire Line
	1700 1550 1700 2650
Wire Wire Line
	1700 2650 1500 2650
Wire Wire Line
	1500 2650 1500 2550
Wire Wire Line
	2950 2750 2950 1850
Wire Wire Line
	1300 2750 2950 2750
Connection ~ 2950 1850
Wire Wire Line
	1950 2800 1950 2750
Connection ~ 1950 2750
Wire Wire Line
	1950 3100 1950 3150
Wire Wire Line
	1400 3150 4200 3150
Wire Wire Line
	4200 3150 4200 1300
Wire Wire Line
	1300 2550 1300 2750
Wire Wire Line
	1400 2550 1400 3150
Connection ~ 1950 3150
Wire Wire Line
	4200 1300 2950 1300
Wire Wire Line
	2900 1800 2900 1750
Wire Wire Line
	2900 1750 2800 1750
Text Label 1400 2050 1    60   ~ 0
A*
Text Label 1300 2050 1    60   ~ 0
A
Text Label 1500 2050 1    60   ~ 0
B
Text Label 1700 2050 1    60   ~ 0
B*
$EndSCHEMATC
