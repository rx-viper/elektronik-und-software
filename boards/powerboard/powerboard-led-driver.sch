EESchema Schematic File Version 2
LIBS:powerboard-rescue
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
LIBS:lt3757
LIBS:common_mode_choke
LIBS:ltc4010
LIBS:pc3h7
LIBS:esd_diode_dual
LIBS:ad7928
LIBS:references
LIBS:lt3592
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
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
L LT3592 U?
U 1 1 58F8C4EB
P 4400 3500
F 0 "U?" H 4100 3900 60  0000 C CNN
F 1 "LT3592" H 4600 3900 60  0000 C CNN
F 2 "" H 4400 3500 60  0001 C CNN
F 3 "" H 4400 3500 60  0001 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58F8C51B
P 3600 3000
F 0 "C?" H 3625 3100 50  0000 L CNN
F 1 "1µ" H 3625 2900 50  0000 L CNN
F 2 "" H 3638 2850 50  0001 C CNN
F 3 "" H 3600 3000 50  0001 C CNN
	1    3600 3000
	1    0    0    -1  
$EndComp
Text HLabel 3350 3250 0    60   Input ~ 0
VIN
$Comp
L R R?
U 1 1 58F8C597
P 3750 4000
F 0 "R?" V 3830 4000 50  0000 C CNN
F 1 "140k" V 3750 4000 50  0000 C CNN
F 2 "" V 3680 4000 50  0001 C CNN
F 3 "" H 3750 4000 50  0001 C CNN
	1    3750 4000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58F8C5E2
P 5650 4150
F 0 "R?" V 5730 4150 50  0000 C CNN
F 1 "4k7" V 5650 4150 50  0000 C CNN
F 2 "" V 5580 4150 50  0001 C CNN
F 3 "" H 5650 4150 50  0001 C CNN
	1    5650 4150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58F8C6D0
P 5400 3750
F 0 "R?" V 5480 3750 50  0000 C CNN
F 1 "100k" V 5400 3750 50  0000 C CNN
F 2 "" V 5330 3750 50  0001 C CNN
F 3 "" H 5400 3750 50  0001 C CNN
	1    5400 3750
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 58F8C88C
P 5400 3450
F 0 "D?" H 5400 3550 50  0000 C CNN
F 1 "D_Schottky" H 5150 3400 50  0000 C CNN
F 2 "" H 5400 3450 50  0001 C CNN
F 3 "" H 5400 3450 50  0001 C CNN
	1    5400 3450
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR_SMALL L?
U 1 1 58F8C8BD
P 6700 3350
F 0 "L?" H 6700 3450 50  0000 C CNN
F 1 "10µH 250mA" H 6700 3300 50  0000 C CNN
F 2 "" H 6700 3350 50  0000 C CNN
F 3 "" H 6700 3350 50  0000 C CNN
	1    6700 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58F8CA2B
P 5400 3250
F 0 "C?" V 5350 3300 50  0000 L CNN
F 1 "100n" V 5350 3000 50  0000 L CNN
F 2 "" H 5438 3100 50  0001 C CNN
F 3 "" H 5400 3250 50  0001 C CNN
	1    5400 3250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 58F8CCC5
P 6250 3650
F 0 "R?" V 6330 3650 50  0000 C CNN
F 1 "2R" V 6250 3650 50  0000 C CNN
F 2 "" V 6180 3650 50  0001 C CNN
F 3 "" H 6250 3650 50  0001 C CNN
	1    6250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3250 3850 3250
Wire Wire Line
	3600 3150 3600 3550
Connection ~ 3600 3250
Wire Wire Line
	4950 3650 6100 3650
Wire Wire Line
	5150 3650 5150 3750
Wire Wire Line
	5150 3750 5250 3750
Wire Wire Line
	4950 3750 5050 3750
Wire Wire Line
	5050 3750 5050 3900
Wire Wire Line
	5050 3900 5650 3900
Wire Wire Line
	5650 3750 5650 4000
Wire Wire Line
	5650 3750 5550 3750
Connection ~ 5650 3900
Wire Wire Line
	5650 4400 5650 4300
Wire Wire Line
	3750 4400 7150 4400
Wire Wire Line
	4400 4050 4400 4500
Wire Wire Line
	3750 4150 3750 4400
Connection ~ 4400 4400
Wire Wire Line
	3750 3850 3750 3750
Wire Wire Line
	3750 3750 3850 3750
Wire Wire Line
	5250 3250 4950 3250
Wire Wire Line
	4950 3350 6450 3350
Wire Wire Line
	5550 3250 5950 3250
Wire Wire Line
	5950 3250 5950 3450
Connection ~ 5950 3350
Wire Wire Line
	5950 3450 5550 3450
Wire Wire Line
	5250 3450 4950 3450
Wire Wire Line
	4950 3550 7150 3550
Wire Wire Line
	7150 3350 7150 3650
Wire Wire Line
	7150 3350 6950 3350
Connection ~ 5150 3650
Wire Wire Line
	6400 3650 6500 3650
Wire Wire Line
	6500 3650 6500 3550
Connection ~ 6500 3550
Wire Wire Line
	6000 3650 6000 3900
Wire Wire Line
	6000 3900 6200 3900
Connection ~ 6000 3650
Text HLabel 6200 3900 2    60   Output ~ 0
LED_OUT
Text Notes 3650 4150 1    60   ~ 0
900kHz
Wire Wire Line
	3600 3550 3850 3550
Text HLabel 3350 3450 0    60   Input ~ 0
Enable
Wire Wire Line
	3350 3450 3850 3450
$Comp
L C C?
U 1 1 58F8D464
P 7150 3800
F 0 "C?" H 7175 3900 50  0000 L CNN
F 1 "4µ7" H 7175 3700 50  0000 L CNN
F 2 "" H 7188 3650 50  0001 C CNN
F 3 "" H 7150 3800 50  0001 C CNN
	1    7150 3800
	1    0    0    -1  
$EndComp
Connection ~ 7150 3550
Wire Wire Line
	7150 4400 7150 3950
Connection ~ 5650 4400
$Comp
L GND #PWR?
U 1 1 58F8D528
P 4400 4500
F 0 "#PWR?" H 4400 4250 50  0001 C CNN
F 1 "GND" H 4400 4350 50  0000 C CNN
F 2 "" H 4400 4500 50  0001 C CNN
F 3 "" H 4400 4500 50  0001 C CNN
	1    4400 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58F8D9DF
P 3600 2750
F 0 "#PWR?" H 3600 2500 50  0001 C CNN
F 1 "GND" H 3600 2600 50  0000 C CNN
F 2 "" H 3600 2750 50  0001 C CNN
F 3 "" H 3600 2750 50  0001 C CNN
	1    3600 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2750 3600 2850
Text Notes 7400 3900 0    60   ~ 0
Datasheet: I_bright = 200mV / R_sense\n\n100mA = 200mV / 2 Ω
Text Notes 4000 5250 0    60   ~ 0
ToDo: Recalculate (depends on number of LEDs and LED current)
$EndSCHEMATC
