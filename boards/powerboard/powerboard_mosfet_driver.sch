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
LIBS:ds26lv32at
LIBS:drv8312
LIBS:drv8332
LIBS:cd40109b
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 11
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
L CD40109B U?
U 1 1 5A170032
P 5650 3950
F 0 "U?" H 5650 3350 60  0000 C CNN
F 1 "CD40109B" H 5650 4550 60  0000 C CNN
F 2 "" H 5650 3900 60  0001 C CNN
F 3 "" H 5650 3900 60  0001 C CNN
	1    5650 3950
	1    0    0    -1  
$EndComp
Text HLabel 4800 3700 0    60   Input ~ 0
IN_A
Text HLabel 4800 3900 0    60   Input ~ 0
IN_B
Text HLabel 4800 4100 0    60   Input ~ 0
IN_C
$Comp
L GND #PWR?
U 1 1 5A1700A8
P 5000 4500
F 0 "#PWR?" H 5000 4250 50  0001 C CNN
F 1 "GND" H 5000 4350 50  0000 C CNN
F 2 "" H 5000 4500 50  0001 C CNN
F 3 "" H 5000 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4300 5000 4500
Wire Wire Line
	5000 4400 5100 4400
$Comp
L +3V3 #PWR?
U 1 1 5A170162
P 5000 3400
F 0 "#PWR?" H 5000 3250 50  0001 C CNN
F 1 "+3V3" H 5000 3540 50  0000 C CNN
F 2 "" H 5000 3400 50  0001 C CNN
F 3 "" H 5000 3400 50  0001 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A170178
P 6300 3400
F 0 "#PWR?" H 6300 3250 50  0001 C CNN
F 1 "+12V" H 6300 3540 50  0000 C CNN
F 2 "" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3400 6300 3500
Wire Wire Line
	6300 3500 6200 3500
Wire Wire Line
	5100 3500 5000 3500
Wire Wire Line
	5000 3400 5000 4200
Text HLabel 6300 3650 2    60   Output ~ 0
OUT_A
Text HLabel 6300 3850 2    60   Output ~ 0
OUT_B
Text HLabel 6300 4050 2    60   Output ~ 0
OUT_C
Wire Wire Line
	6200 3650 6300 3650
Wire Wire Line
	6300 3850 6200 3850
Wire Wire Line
	6200 4050 6300 4050
Wire Wire Line
	5000 3600 5100 3600
Connection ~ 5000 3500
Wire Wire Line
	5000 3800 5100 3800
Connection ~ 5000 3600
Wire Wire Line
	5000 4000 5100 4000
Connection ~ 5000 3800
Wire Wire Line
	5000 4200 5100 4200
Connection ~ 5000 4000
Wire Wire Line
	4800 3700 5100 3700
Wire Wire Line
	5100 3900 4800 3900
Wire Wire Line
	4800 4100 5100 4100
$Comp
L C C?
U 1 1 5A180FA1
P 5350 2500
F 0 "C?" H 5375 2600 50  0000 L CNN
F 1 "100n" H 5375 2400 50  0000 L CNN
F 2 "" H 5388 2350 50  0001 C CNN
F 3 "" H 5350 2500 50  0001 C CNN
	1    5350 2500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A181036
P 5750 2500
F 0 "C?" H 5775 2600 50  0000 L CNN
F 1 "100n" H 5775 2400 50  0000 L CNN
F 2 "" H 5788 2350 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A181058
P 5550 2850
F 0 "#PWR?" H 5550 2600 50  0001 C CNN
F 1 "GND" H 5550 2700 50  0000 C CNN
F 2 "" H 5550 2850 50  0001 C CNN
F 3 "" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2750 5750 2650
Wire Wire Line
	5350 2750 5750 2750
Wire Wire Line
	5550 2750 5550 2850
Wire Wire Line
	5350 2750 5350 2650
Connection ~ 5550 2750
$Comp
L +3V3 #PWR?
U 1 1 5A1810CD
P 5350 2250
F 0 "#PWR?" H 5350 2100 50  0001 C CNN
F 1 "+3V3" H 5350 2390 50  0000 C CNN
F 2 "" H 5350 2250 50  0001 C CNN
F 3 "" H 5350 2250 50  0001 C CNN
	1    5350 2250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A1810E1
P 5750 2250
F 0 "#PWR?" H 5750 2100 50  0001 C CNN
F 1 "+12V" H 5750 2390 50  0000 C CNN
F 2 "" H 5750 2250 50  0001 C CNN
F 3 "" H 5750 2250 50  0001 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2250 5750 2350
Wire Wire Line
	5350 2250 5350 2350
Wire Wire Line
	5100 4300 5000 4300
Connection ~ 5000 4400
NoConn ~ 6200 4250
$EndSCHEMATC
