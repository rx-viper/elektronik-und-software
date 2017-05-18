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
LIBS:optical-distance-cache
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
L HEDS-9731#15X E1
U 1 1 591DC4C2
P 2700 1000
F 0 "E1" H 2700 1300 60  0000 C CNN
F 1 "HEDS-9731#15X" H 2700 700 60  0000 C CNN
F 2 "rchojetzki-optical-distance:HEDS-973X#X50" H 2750 850 60  0001 C CNN
F 3 "" H 2750 850 60  0001 C CNN
	1    2700 1000
	1    0    0    -1  
$EndComp
$Comp
L DS26LV31T U1
U 1 1 591E182B
P 2700 2250
F 0 "U1" H 2700 2700 60  0000 C CNN
F 1 "DS26LV31T" H 2700 1800 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 2350 2250 60  0001 C CNN
F 3 "" H 2350 2250 60  0001 C CNN
	1    2700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1150 2150 1150
Wire Wire Line
	2250 950  2000 950 
Wire Wire Line
	2000 950  2000 2500
$Comp
L CONN_02X03 J1
U 1 1 591E1D87
P 1000 950
F 0 "J1" H 1000 1150 50  0000 C CNN
F 1 "CONN_02X03" H 1000 750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 1000 -250 50  0001 C CNN
F 3 "" H 1000 -250 50  0001 C CNN
	1    1000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 850  1900 2600
Wire Wire Line
	1900 2600 2150 2600
Wire Wire Line
	2150 1150 2150 1400
Wire Wire Line
	2150 1400 3400 1400
Wire Wire Line
	3400 1400 3400 2000
Wire Wire Line
	3400 2000 3250 2000
Wire Wire Line
	3250 1900 3300 1900
Wire Wire Line
	3300 1900 3300 1700
Wire Wire Line
	3300 1700 650  1700
Wire Wire Line
	1250 1050 1900 1050
Wire Wire Line
	3250 2200 3350 2200
Wire Wire Line
	3350 2200 3350 2850
Wire Wire Line
	3350 2850 600  2850
Wire Wire Line
	600  2850 600  850 
Wire Wire Line
	3250 2100 3400 2100
Wire Wire Line
	3400 2100 3400 2900
Wire Wire Line
	3400 2900 550  2900
Wire Wire Line
	2250 1050 2100 1050
Wire Wire Line
	2100 1050 2100 1700
Connection ~ 2100 1700
$Comp
L R R1
U 1 1 591E282A
P 1100 1800
F 0 "R1" V 1180 1800 50  0000 C CNN
F 1 "4,7K" V 1100 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1030 1800 50  0001 C CNN
F 3 "" H 1100 1800 50  0001 C CNN
	1    1100 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	650  1800 950  1800
Connection ~ 650  1700
Wire Wire Line
	1900 1800 1250 1800
Connection ~ 1900 1800
Wire Wire Line
	1350 1800 1350 2200
Wire Wire Line
	1350 2200 2150 2200
Connection ~ 1350 1800
Wire Wire Line
	850  1800 850  2800
Wire Wire Line
	850  2800 3300 2800
Wire Wire Line
	3300 2800 3300 2300
Wire Wire Line
	3300 2300 3250 2300
Connection ~ 850  1800
Wire Wire Line
	1900 850  2250 850 
Connection ~ 1900 1050
Wire Wire Line
	750  1050 650  1050
Wire Wire Line
	650  1050 650  1800
Wire Wire Line
	600  850  750  850 
Wire Wire Line
	750  950  550  950 
Wire Wire Line
	550  950  550  2900
Wire Wire Line
	1800 2300 2150 2300
Wire Wire Line
	1700 2400 2150 2400
Wire Wire Line
	2000 2500 2150 2500
Wire Wire Line
	1700 850  1700 2400
Wire Wire Line
	1700 850  1250 850 
Wire Wire Line
	1250 950  1800 950 
Wire Wire Line
	1800 950  1800 2300
$EndSCHEMATC
