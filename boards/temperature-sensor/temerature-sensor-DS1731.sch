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
F 2 "" H 2250 1700 50  0001 C CNN
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
F 2 "" H 650 1750 50  0001 C CNN
F 3 "" H 650 1750 50  0001 C CNN
	1    650  1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1150 3650 1150
Wire Wire Line
	3000 1150 3000 1500
Wire Wire Line
	3000 1500 2800 1500
Wire Wire Line
	950  1350 1900 1350
Wire Wire Line
	1900 1350 1900 2300
Wire Wire Line
	1900 1800 2050 1800
Wire Wire Line
	2050 1600 1850 1600
Wire Wire Line
	1850 1600 1850 1750
Wire Wire Line
	1850 1750 950  1750
Wire Wire Line
	2050 1500 1800 1500
Wire Wire Line
	1800 1500 1800 1550
Wire Wire Line
	1800 1550 950  1550
$Comp
L R R1
U 1 1 58FFD826
P 3150 1400
F 0 "R1" V 3230 1400 50  0000 C CNN
F 1 "R" V 3150 1400 50  0000 C CNN
F 2 "" V 3080 1400 50  0001 C CNN
F 3 "" H 3150 1400 50  0001 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58FFD8DE
P 3400 1400
F 0 "R3" V 3480 1400 50  0000 C CNN
F 1 "R" V 3400 1400 50  0000 C CNN
F 2 "" V 3330 1400 50  0001 C CNN
F 3 "" H 3400 1400 50  0001 C CNN
	1    3400 1400
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58FFD929
P 3650 1400
F 0 "R5" V 3730 1400 50  0000 C CNN
F 1 "R" V 3650 1400 50  0000 C CNN
F 2 "" V 3580 1400 50  0001 C CNN
F 3 "" H 3650 1400 50  0001 C CNN
	1    3650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1600 3150 1600
Wire Wire Line
	2800 1700 3400 1700
Wire Wire Line
	3400 1550 3400 1900
Wire Wire Line
	2800 1800 3650 1800
Wire Wire Line
	3650 1550 3650 1900
Connection ~ 3000 1150
Connection ~ 3150 1150
Connection ~ 3400 1150
$Comp
L R R6
U 1 1 58FFDA16
P 3650 2050
F 0 "R6" V 3730 2050 50  0000 C CNN
F 1 "R" V 3650 2050 50  0000 C CNN
F 2 "" V 3580 2050 50  0001 C CNN
F 3 "" H 3650 2050 50  0001 C CNN
	1    3650 2050
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58FFDAB6
P 3400 2050
F 0 "R4" V 3480 2050 50  0000 C CNN
F 1 "R" V 3400 2050 50  0000 C CNN
F 2 "" V 3330 2050 50  0001 C CNN
F 3 "" H 3400 2050 50  0001 C CNN
	1    3400 2050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58FFDAFF
P 3150 2050
F 0 "R2" V 3230 2050 50  0000 C CNN
F 1 "R" V 3150 2050 50  0000 C CNN
F 2 "" V 3080 2050 50  0001 C CNN
F 3 "" H 3150 2050 50  0001 C CNN
	1    3150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1550 3150 1900
Connection ~ 3400 1700
Connection ~ 3650 1800
Wire Wire Line
	3650 1150 3650 1250
Wire Wire Line
	3400 1250 3400 1150
Wire Wire Line
	3150 1250 3150 1150
Connection ~ 3150 1600
Wire Wire Line
	3650 2200 3650 2300
Wire Wire Line
	3650 2300 1900 2300
Connection ~ 1900 1800
Wire Wire Line
	3400 2200 3400 2300
Connection ~ 3400 2300
Wire Wire Line
	3150 2200 3150 2300
Connection ~ 3150 2300
$EndSCHEMATC
