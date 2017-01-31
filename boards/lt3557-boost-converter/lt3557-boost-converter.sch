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
LIBS:lt3557-boost-converter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L CONN_01X02 P?
U 1 1 588F8DF1
P 3950 3750
F 0 "P?" H 3950 3900 50  0000 C CNN
F 1 "BAT IN" V 4050 3750 50  0000 C CNN
F 2 "" H 3950 3750 50  0000 C CNN
F 3 "" H 3950 3750 50  0000 C CNN
	1    3950 3750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 588F8E73
P 6550 3750
F 0 "P?" H 6550 3900 50  0000 C CNN
F 1 "24V OUT" V 6650 3750 50  0000 C CNN
F 2 "" H 6550 3750 50  0000 C CNN
F 3 "" H 6550 3750 50  0000 C CNN
	1    6550 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588F8FEC
P 6250 3900
F 0 "#PWR?" H 6250 3650 50  0001 C CNN
F 1 "GND" H 6250 3750 50  0000 C CNN
F 2 "" H 6250 3900 50  0000 C CNN
F 3 "" H 6250 3900 50  0000 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588F9004
P 4250 3900
F 0 "#PWR?" H 4250 3650 50  0001 C CNN
F 1 "GND" H 4250 3750 50  0000 C CNN
F 2 "" H 4250 3900 50  0000 C CNN
F 3 "" H 4250 3900 50  0000 C CNN
	1    4250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 4250 3800
Wire Wire Line
	4250 3500 4250 3900
Wire Wire Line
	6250 3900 6250 3800
Wire Wire Line
	6250 3800 6350 3800
$Sheet
S 4450 3300 1650 950 
U 588F905D
F0 "LT3757" 60
F1 "lt3757.sch" 60
F2 "Bat_IN" I L 4450 3700 60 
F3 "24V_OUT" I R 6100 3700 60 
F4 "Enable" I L 4450 3400 60 
$EndSheet
$Comp
L CONN_01X02 P?
U 1 1 588F9182
P 3950 3450
F 0 "P?" H 3950 3600 50  0000 C CNN
F 1 "Enable" V 4050 3450 50  0000 C CNN
F 2 "" H 3950 3450 50  0000 C CNN
F 3 "" H 3950 3450 50  0000 C CNN
	1    3950 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 3700 4450 3700
Wire Wire Line
	4450 3400 4150 3400
Wire Wire Line
	4150 3500 4250 3500
Connection ~ 4250 3800
Wire Wire Line
	6350 3700 6100 3700
$EndSCHEMATC
