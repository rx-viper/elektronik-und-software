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
LIBS:lt3757
LIBS:lt3757-boost-converter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "LT3757 Boost Converter 24V Connectors"
Date "2017-06-19"
Rev "20"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 588F9004
P 3050 4000
F 0 "#PWR01" H 3050 3750 50  0001 C CNN
F 1 "GND" H 3050 3850 50  0000 C CNN
F 2 "" H 3050 4000 50  0000 C CNN
F 3 "" H 3050 4000 50  0000 C CNN
	1    3050 4000
	1    0    0    -1  
$EndComp
$Sheet
S 4450 3300 1650 950 
U 588F905D
F0 "LT3757" 60
F1 "lt3757.sch" 60
F2 "Bat_IN" I L 4450 3700 60 
F3 "24V_OUT" I R 6100 3700 60 
F4 "Enable" I L 4450 3400 60 
$EndSheet
Wire Wire Line
	4150 3700 4450 3700
Wire Wire Line
	4450 3400 4150 3400
Wire Wire Line
	6350 3700 6100 3700
$Comp
L CONN_01X01 J1
U 1 1 5947E114
P 3050 3700
F 0 "J1" H 3050 3800 50  0000 C CNN
F 1 "GND" V 3150 3700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3050 3700 50  0001 C CNN
F 3 "" H 3050 3700 50  0001 C CNN
	1    3050 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 3900 3050 4000
$Comp
L CONN_01X01 J2
U 1 1 5947E36C
P 3950 3400
F 0 "J2" H 3950 3500 50  0000 C CNN
F 1 "Enable" V 4050 3400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3950 3400 50  0001 C CNN
F 3 "" H 3950 3400 50  0001 C CNN
	1    3950 3400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J3
U 1 1 5947E41A
P 3950 3700
F 0 "J3" H 3950 3800 50  0000 C CNN
F 1 "BAT" V 4050 3700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J4
U 1 1 5947E508
P 6550 3700
F 0 "J4" H 6550 3800 50  0000 C CNN
F 1 "24V" V 6650 3700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6550 3700 50  0001 C CNN
F 3 "" H 6550 3700 50  0001 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J5
U 1 1 59480535
P 3750 6050
F 0 "J5" H 3750 6150 50  0000 C CNN
F 1 "M3" V 3850 6050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 3750 6050 50  0001 C CNN
F 3 "" H 3750 6050 50  0001 C CNN
	1    3750 6050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 J6
U 1 1 594806B2
P 3950 6050
F 0 "J6" H 3950 6150 50  0000 C CNN
F 1 "M3" V 4050 6050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 3950 6050 50  0001 C CNN
F 3 "" H 3950 6050 50  0001 C CNN
	1    3950 6050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 J7
U 1 1 594806EE
P 4150 6050
F 0 "J7" H 4150 6150 50  0000 C CNN
F 1 "M3" V 4250 6050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4150 6050 50  0001 C CNN
F 3 "" H 4150 6050 50  0001 C CNN
	1    4150 6050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 J8
U 1 1 59480729
P 4350 6050
F 0 "J8" H 4350 6150 50  0000 C CNN
F 1 "M3" V 4450 6050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4350 6050 50  0001 C CNN
F 3 "" H 4350 6050 50  0001 C CNN
	1    4350 6050
	0    -1   -1   0   
$EndComp
NoConn ~ 3750 6250
NoConn ~ 3950 6250
NoConn ~ 4150 6250
NoConn ~ 4350 6250
$Comp
L GND #PWR02
U 1 1 594829D4
P 2650 4000
F 0 "#PWR02" H 2650 3750 50  0001 C CNN
F 1 "GND" H 2650 3850 50  0000 C CNN
F 2 "" H 2650 4000 50  0000 C CNN
F 3 "" H 2650 4000 50  0000 C CNN
	1    2650 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J9
U 1 1 594829DA
P 2650 3700
F 0 "J9" H 2650 3800 50  0000 C CNN
F 1 "GND" V 2750 3700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 2650 3700 50  0001 C CNN
F 3 "" H 2650 3700 50  0001 C CNN
	1    2650 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3900 2650 4000
Text Notes 3700 5850 0    60   ~ 0
Mounting holes
$EndSCHEMATC
