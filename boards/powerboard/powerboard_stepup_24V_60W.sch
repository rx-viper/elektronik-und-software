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
LIBS:TI-LMZ1xxxx
LIBS:DRV8816
LIBS:ACS711
LIBS:lt1370
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2100 1450 0    60   Input ~ 0
BAT_10V_IN
Text HLabel 7100 1450 2    60   Input ~ 0
24W_60W_OUT
Text HLabel 3400 1950 0    60   Input ~ 0
EN_PWM_IN
$Comp
L GND #PWR020
U 1 1 58878312
P 4000 3650
AR Path="/5886F238/58878312" Ref="#PWR020"  Part="1" 
AR Path="/5886F2AA/58878312" Ref="#PWR022"  Part="1" 
AR Path="/5886F5A0/58878312" Ref="#PWR024"  Part="1" 
F 0 "#PWR020" H 4000 3400 50  0001 C CNN
F 1 "GND" H 4000 3500 50  0000 C CNN
F 2 "" H 4000 3650 50  0000 C CNN
F 3 "" H 4000 3650 50  0000 C CNN
	1    4000 3650
	1    0    0    -1  
$EndComp
$Comp
L LT1370 U?
U 1 1 588A8663
P 4100 2050
F 0 "U?" H 3850 2400 60  0000 C CNN
F 1 "LT1370" H 4250 2400 60  0000 C CNN
F 2 "" H 4950 1625 60  0000 C CNN
F 3 "" H 4950 1625 60  0000 C CNN
	1    4100 2050
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 588A86BB
P 4450 1450
F 0 "L?" V 4400 1450 50  0000 C CNN
F 1 "ca. 10µH" V 4550 1450 50  0000 C CNN
F 2 "" H 4450 1450 50  0000 C CNN
F 3 "" H 4450 1450 50  0000 C CNN
	1    4450 1450
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 588A86F2
P 5100 1450
F 0 "D?" H 5100 1550 50  0000 C CNN
F 1 "MBRD835L o.ä." H 5100 1350 50  0000 C CNN
F 2 "" H 5100 1450 50  0000 C CNN
F 3 "" H 5100 1450 50  0000 C CNN
	1    5100 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1850 4850 1850
Wire Wire Line
	4850 1850 4850 1450
Wire Wire Line
	4750 1450 4950 1450
Connection ~ 4850 1450
Wire Wire Line
	4050 1550 4050 1450
Wire Wire Line
	2100 1450 4150 1450
$Comp
L R R?
U 1 1 588A8805
P 5350 1700
F 0 "R?" V 5430 1700 50  0000 C CNN
F 1 "113k" V 5350 1700 50  0000 C CNN
F 2 "" V 5280 1700 50  0000 C CNN
F 3 "" H 5350 1700 50  0000 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 588A8867
P 5350 2300
F 0 "R?" V 5430 2300 50  0000 C CNN
F 1 "6k19" V 5350 2300 50  0000 C CNN
F 2 "" V 5280 2300 50  0000 C CNN
F 3 "" H 5350 2300 50  0000 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2150 5350 1850
Wire Wire Line
	4600 2000 5350 2000
Connection ~ 5350 2000
Wire Wire Line
	5350 1550 5350 1450
Wire Wire Line
	5250 1450 7100 1450
NoConn ~ 4600 2100
$Comp
L C C?
U 1 1 588A8A56
P 4300 2900
F 0 "C?" H 4325 3000 50  0000 L CNN
F 1 "47n" H 4325 2800 50  0000 L CNN
F 2 "" H 4338 2750 50  0000 C CNN
F 3 "" H 4300 2900 50  0000 C CNN
	1    4300 2900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 588A8B43
P 4300 3300
F 0 "R?" V 4380 3300 50  0000 C CNN
F 1 "2k" V 4300 3300 50  0000 C CNN
F 2 "" V 4230 3300 50  0000 C CNN
F 3 "" H 4300 3300 50  0000 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588A8BB9
P 4650 3100
F 0 "C?" H 4675 3200 50  0000 L CNN
F 1 "4n7" H 4675 3000 50  0000 L CNN
F 2 "" H 4688 2950 50  0000 C CNN
F 3 "" H 4650 3100 50  0000 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2550 4300 2750
Wire Wire Line
	4300 2650 4650 2650
Wire Wire Line
	4650 2650 4650 2950
Connection ~ 4300 2650
Wire Wire Line
	4300 3150 4300 3050
Wire Wire Line
	4000 2650 4000 3650
Wire Wire Line
	2400 3550 6100 3550
Wire Wire Line
	4300 3550 4300 3450
Wire Wire Line
	4650 3550 4650 3250
Connection ~ 4300 3550
Wire Wire Line
	3950 2650 4050 2650
Wire Wire Line
	3950 2650 3950 2550
Connection ~ 4000 3550
Wire Wire Line
	4050 2650 4050 2550
Connection ~ 4000 2650
Wire Wire Line
	5350 3550 5350 2450
Connection ~ 4650 3550
Connection ~ 4050 1450
Wire Wire Line
	3400 1950 3600 1950
$Comp
L CP C?
U 1 1 588A9B10
P 2400 1950
F 0 "C?" H 2425 2050 50  0000 L CNN
F 1 "22µ 25V" V 2450 1550 50  0000 L CNN
F 2 "" H 2438 1800 50  0000 C CNN
F 3 "" H 2400 1950 50  0000 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1800 2400 1450
Connection ~ 2400 1450
Wire Wire Line
	2400 2100 2400 3550
$Comp
L CP C?
U 1 1 588A9E5D
P 5750 2000
F 0 "C?" H 5775 2100 50  0000 L CNN
F 1 "22µ 50V" V 5800 1600 50  0000 L CNN
F 2 "" H 5788 1850 50  0000 C CNN
F 3 "" H 5750 2000 50  0000 C CNN
	1    5750 2000
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588AA272
P 6100 2000
F 0 "C?" H 6125 2100 50  0000 L CNN
F 1 "22µ 50V" V 6150 1600 50  0000 L CNN
F 2 "" H 6138 1850 50  0000 C CNN
F 3 "" H 6100 2000 50  0000 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1450 5750 1850
Connection ~ 5350 1450
Wire Wire Line
	6100 1450 6100 1850
Connection ~ 5750 1450
Connection ~ 6100 1450
Wire Wire Line
	5750 3550 5750 2150
Connection ~ 5350 3550
Wire Wire Line
	6100 3550 6100 2150
Connection ~ 5750 3550
$EndSCHEMATC
