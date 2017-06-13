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
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 10
Title "Powerboard: Heat Probes"
Date "2017-04-15"
Rev "10"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR058
U 1 1 58F51ACB
P 6250 5800
F 0 "#PWR058" H 6250 5550 50  0001 C CNN
F 1 "GND" H 6250 5650 50  0000 C CNN
F 2 "" H 6250 5800 50  0000 C CNN
F 3 "" H 6250 5800 50  0000 C CNN
	1    6250 5800
	0    -1   -1   0   
$EndComp
Text Label 4450 2750 0    60   ~ 0
Probe1
Text Label 4200 4200 0    60   ~ 0
Probe2
Text Label 4550 5600 0    60   ~ 0
Probe3
Text Label 2800 3900 2    60   ~ 0
Probe2_EN
Text Label 2800 5300 2    60   ~ 0
Probe3_EN
Text Label 2800 2450 2    60   ~ 0
Probe1_EN
$Comp
L ACS711 U801
U 1 1 58F51AD7
P 5650 2800
F 0 "U801" H 5650 2500 60  0000 C CNN
F 1 "ACS711" H 5650 3100 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 2800 60  0001 C CNN
F 3 "" H 5650 2800 60  0001 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
$Comp
L ACS711 U802
U 1 1 58F51ADE
P 5650 4250
F 0 "U802" H 5650 3950 60  0000 C CNN
F 1 "ACS711" H 5650 4550 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 4250 60  0001 C CNN
F 3 "" H 5650 4250 60  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
$Comp
L ACS711 U803
U 1 1 58F51AE5
P 5650 5650
F 0 "U803" H 5650 5350 60  0000 C CNN
F 1 "ACS711" H 5650 5950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 5650 60  0001 C CNN
F 3 "" H 5650 5650 60  0001 C CNN
	1    5650 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 58F51AEC
P 5050 5900
F 0 "#PWR059" H 5050 5650 50  0001 C CNN
F 1 "GND" H 5050 5750 50  0000 C CNN
F 2 "" H 5050 5900 50  0000 C CNN
F 3 "" H 5050 5900 50  0000 C CNN
	1    5050 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 58F51AF2
P 5050 3050
F 0 "#PWR060" H 5050 2800 50  0001 C CNN
F 1 "GND" H 5050 2900 50  0000 C CNN
F 2 "" H 5050 3050 50  0000 C CNN
F 3 "" H 5050 3050 50  0000 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 58F51AF8
P 5050 4500
F 0 "#PWR061" H 5050 4250 50  0001 C CNN
F 1 "GND" H 5050 4350 50  0000 C CNN
F 2 "" H 5050 4500 50  0000 C CNN
F 3 "" H 5050 4500 50  0000 C CNN
	1    5050 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 58F51AFE
P 6250 4400
F 0 "#PWR062" H 6250 4150 50  0001 C CNN
F 1 "GND" H 6250 4250 50  0000 C CNN
F 2 "" H 6250 4400 50  0000 C CNN
F 3 "" H 6250 4400 50  0000 C CNN
	1    6250 4400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR063
U 1 1 58F51B04
P 6250 2950
F 0 "#PWR063" H 6250 2700 50  0001 C CNN
F 1 "GND" H 6250 2800 50  0000 C CNN
F 2 "" H 6250 2950 50  0000 C CNN
F 3 "" H 6250 2950 50  0000 C CNN
	1    6250 2950
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR064
U 1 1 58F51B0A
P 6250 5500
F 0 "#PWR064" H 6250 5350 50  0001 C CNN
F 1 "+3V3" H 6250 5640 50  0000 C CNN
F 2 "" H 6250 5500 50  0000 C CNN
F 3 "" H 6250 5500 50  0000 C CNN
	1    6250 5500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR065
U 1 1 58F51B10
P 6250 4100
F 0 "#PWR065" H 6250 3950 50  0001 C CNN
F 1 "+3V3" H 6250 4240 50  0000 C CNN
F 2 "" H 6250 4100 50  0000 C CNN
F 3 "" H 6250 4100 50  0000 C CNN
	1    6250 4100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR066
U 1 1 58F51B16
P 6250 2650
F 0 "#PWR066" H 6250 2500 50  0001 C CNN
F 1 "+3V3" H 6250 2790 50  0000 C CNN
F 2 "" H 6250 2650 50  0000 C CNN
F 3 "" H 6250 2650 50  0000 C CNN
	1    6250 2650
	1    0    0    -1  
$EndComp
NoConn ~ 6150 2850
NoConn ~ 6150 4300
NoConn ~ 6150 5700
Text Label 6350 5600 0    60   ~ 0
Probe3_Current
Text Label 6350 4200 0    60   ~ 0
Probe2_Current
Text Label 6350 2750 0    60   ~ 0
Probe1_Current
$Comp
L C C801
U 1 1 58F51B22
P 4550 6850
F 0 "C801" H 4575 6950 50  0000 L CNN
F 1 "100n" H 4575 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 6700 50  0001 C CNN
F 3 "" H 4550 6850 50  0000 C CNN
	1    4550 6850
	1    0    0    -1  
$EndComp
$Comp
L C C802
U 1 1 58F51B29
P 4750 6850
F 0 "C802" H 4775 6950 50  0000 L CNN
F 1 "100n" H 4775 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 6700 50  0001 C CNN
F 3 "" H 4750 6850 50  0000 C CNN
	1    4750 6850
	1    0    0    -1  
$EndComp
$Comp
L C C803
U 1 1 58F51B30
P 4950 6850
F 0 "C803" H 4975 6950 50  0000 L CNN
F 1 "100n" H 4975 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4988 6700 50  0001 C CNN
F 3 "" H 4950 6850 50  0000 C CNN
	1    4950 6850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR067
U 1 1 58F51B37
P 4750 6600
F 0 "#PWR067" H 4750 6450 50  0001 C CNN
F 1 "+3V3" H 4750 6740 50  0000 C CNN
F 2 "" H 4750 6600 50  0000 C CNN
F 3 "" H 4750 6600 50  0000 C CNN
	1    4750 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR068
U 1 1 58F51B3D
P 4750 7100
F 0 "#PWR068" H 4750 6850 50  0001 C CNN
F 1 "GND" H 4750 6950 50  0000 C CNN
F 2 "" H 4750 7100 50  0000 C CNN
F 3 "" H 4750 7100 50  0000 C CNN
	1    4750 7100
	1    0    0    -1  
$EndComp
$Comp
L R R801
U 1 1 58F51B4A
P 3050 2450
F 0 "R801" V 3130 2450 50  0000 C CNN
F 1 "10k" V 3050 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2980 2450 50  0001 C CNN
F 3 "" H 3050 2450 50  0000 C CNN
	1    3050 2450
	0    1    1    0   
$EndComp
$Comp
L R R802
U 1 1 58F51B58
P 3050 3900
F 0 "R802" V 3130 3900 50  0000 C CNN
F 1 "10k" V 3050 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2980 3900 50  0001 C CNN
F 3 "" H 3050 3900 50  0000 C CNN
	1    3050 3900
	0    1    1    0   
$EndComp
$Comp
L R R803
U 1 1 58F51B66
P 3050 5300
F 0 "R803" V 3130 5300 50  0000 C CNN
F 1 "10k" V 3050 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2980 5300 50  0001 C CNN
F 3 "" H 3050 5300 50  0000 C CNN
	1    3050 5300
	0    1    1    0   
$EndComp
$Comp
L R R804
U 1 1 58F51B6E
P 3550 2750
F 0 "R804" V 3630 2750 50  0000 C CNN
F 1 "100k" V 3550 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3480 2750 50  0001 C CNN
F 3 "" H 3550 2750 50  0000 C CNN
	1    3550 2750
	0    1    1    0   
$EndComp
$Comp
L R R805
U 1 1 58F51B75
P 3550 4200
F 0 "R805" V 3630 4200 50  0000 C CNN
F 1 "100k" V 3550 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3480 4200 50  0001 C CNN
F 3 "" H 3550 4200 50  0000 C CNN
	1    3550 4200
	0    1    1    0   
$EndComp
$Comp
L R R806
U 1 1 58F51B7C
P 3550 5600
F 0 "R806" V 3630 5600 50  0000 C CNN
F 1 "100k" V 3550 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3480 5600 50  0001 C CNN
F 3 "" H 3550 5600 50  0000 C CNN
	1    3550 5600
	0    1    1    0   
$EndComp
Text Notes 4100 6350 0    60   ~ 0
3x decoupling capacitors for ACS711
Text HLabel 2200 2450 0    60   Input ~ 0
Probe1_EN
Text HLabel 2200 3900 0    60   Input ~ 0
Probe2_EN
Text HLabel 2200 5300 0    60   Input ~ 0
Probe3_EN
Text Notes 4850 2050 0    60   ~ 0
3x ACS711: Hall Effect Linear Current Sensor
Text HLabel 9150 2200 0    60   Input ~ 0
24V_BAT_1
$Comp
L DB25_FEMALE J801
U 1 1 58F5DCF8
P 10200 3400
F 0 "J801" H 10200 4750 50  0000 C CNN
F 1 "Heat probe power" H 10200 2025 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 10200 3400 50  0001 C CNN
F 3 "" H 10200 3400 50  0001 C CNN
	1    10200 3400
	1    0    0    -1  
$EndComp
Text HLabel 7150 2750 2    60   Output ~ 0
Probe1_Current
Text HLabel 7150 4200 2    60   Output ~ 0
Probe2_Current
Text HLabel 7150 5600 2    60   Output ~ 0
Probe3_Current
Text HLabel 9150 3000 0    60   Input ~ 0
24V_BAT_2
Text HLabel 9150 3800 0    60   Input ~ 0
24V_BAT_3
$Comp
L CSD17501Q5A Q801
U 1 1 5940F127
P 3600 2150
F 0 "Q801" H 3400 2450 50  0000 L CNN
F 1 "BUK7Y4R8-60E" H 3400 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-669_LFPAK" H 3600 2350 50  0001 C CIN
F 3 "" V 3600 2150 50  0001 L CNN
	1    3600 2150
	0    1    -1   0   
$EndComp
Wire Wire Line
	5050 3050 5050 2850
Wire Wire Line
	5050 2850 5150 2850
Wire Wire Line
	5150 2950 5050 2950
Connection ~ 5050 2950
Wire Wire Line
	5050 4500 5050 4300
Wire Wire Line
	5050 4300 5150 4300
Wire Wire Line
	5150 4400 5050 4400
Connection ~ 5050 4400
Wire Wire Line
	5050 5900 5050 5700
Wire Wire Line
	5050 5700 5150 5700
Wire Wire Line
	5150 5800 5050 5800
Connection ~ 5050 5800
Wire Wire Line
	6250 2950 6150 2950
Wire Wire Line
	6150 4400 6250 4400
Wire Wire Line
	6250 5800 6150 5800
Wire Wire Line
	6150 5600 7150 5600
Wire Wire Line
	6150 2750 7150 2750
Wire Wire Line
	6150 4200 7150 4200
Wire Wire Line
	6150 4100 6250 4100
Wire Wire Line
	6250 2650 6150 2650
Wire Wire Line
	6150 5500 6250 5500
Wire Wire Line
	4750 7000 4750 7100
Wire Wire Line
	4550 7050 4950 7050
Wire Wire Line
	4550 7050 4550 7000
Wire Wire Line
	4950 7050 4950 7000
Connection ~ 4750 7050
Wire Wire Line
	4550 6700 4550 6650
Wire Wire Line
	4550 6650 4950 6650
Wire Wire Line
	4750 6600 4750 6700
Connection ~ 4750 6650
Wire Wire Line
	4950 6650 4950 6700
Wire Wire Line
	5150 4100 5050 4100
Wire Wire Line
	5050 4100 5050 4200
Connection ~ 5050 4200
Connection ~ 5050 5600
Wire Wire Line
	5050 5600 5050 5500
Wire Wire Line
	5050 5500 5150 5500
Wire Wire Line
	3800 2450 3800 2750
Wire Wire Line
	3500 2450 3200 2450
Wire Wire Line
	3400 2750 3300 2750
Wire Wire Line
	3300 2750 3300 2450
Connection ~ 3300 2450
Wire Wire Line
	3700 4200 5150 4200
Wire Wire Line
	3800 3900 3800 4200
Wire Wire Line
	3500 3900 3200 3900
Wire Wire Line
	3300 3900 3300 4200
Wire Wire Line
	3300 4200 3400 4200
Connection ~ 3300 3900
Wire Wire Line
	3700 5600 5150 5600
Wire Wire Line
	3800 5300 3800 5600
Wire Wire Line
	3500 5300 3200 5300
Wire Wire Line
	3300 5300 3300 5600
Wire Wire Line
	3300 5600 3400 5600
Connection ~ 3300 5300
Connection ~ 3800 5600
Connection ~ 3800 4200
Connection ~ 3800 2750
Wire Wire Line
	3700 2750 5150 2750
Wire Wire Line
	5150 2650 5050 2650
Wire Wire Line
	5050 2650 5050 2750
Connection ~ 5050 2750
Wire Wire Line
	2200 2450 2900 2450
Wire Wire Line
	2200 3900 2900 3900
Wire Wire Line
	2200 5300 2900 5300
Wire Wire Line
	9150 2200 9900 2200
Wire Wire Line
	9250 2300 9900 2300
Connection ~ 9250 2200
Wire Wire Line
	9250 2400 9900 2400
Connection ~ 9250 2300
Wire Wire Line
	9250 2500 9900 2500
Connection ~ 9250 2400
Wire Wire Line
	8500 1750 8500 2900
Wire Wire Line
	8500 2600 9900 2600
Wire Wire Line
	8500 2700 9900 2700
Connection ~ 8500 2600
Wire Wire Line
	8500 2800 9900 2800
Connection ~ 8500 2700
Wire Wire Line
	8500 2900 9900 2900
Connection ~ 8500 2800
Wire Wire Line
	9150 3000 9900 3000
Wire Wire Line
	9250 3100 9900 3100
Connection ~ 9250 3000
Wire Wire Line
	9250 3200 9900 3200
Connection ~ 9250 3100
Wire Wire Line
	9250 3300 9900 3300
Connection ~ 9250 3200
Wire Wire Line
	8500 3400 8500 3700
Wire Wire Line
	4700 3400 9900 3400
Wire Wire Line
	8500 3500 9900 3500
Connection ~ 8500 3500
Connection ~ 8500 3600
Wire Wire Line
	8500 3700 9900 3700
Wire Wire Line
	9150 3800 9900 3800
Wire Wire Line
	9250 3900 9900 3900
Connection ~ 9250 3800
Wire Wire Line
	9250 4000 9900 4000
Connection ~ 9250 3900
Wire Wire Line
	9250 4100 9900 4100
Connection ~ 9250 4000
Wire Wire Line
	8500 5000 8500 4200
Wire Wire Line
	8500 4200 9900 4200
Wire Wire Line
	9900 4300 8500 4300
Connection ~ 8500 4300
Wire Wire Line
	8500 4400 9900 4400
Connection ~ 8500 4400
Wire Wire Line
	9900 4500 8500 4500
Connection ~ 8500 4500
Wire Wire Line
	9250 3000 9250 3300
Wire Wire Line
	9250 3800 9250 4100
Wire Wire Line
	9250 2200 9250 2500
Wire Wire Line
	3500 1850 3500 1750
Wire Wire Line
	3500 1750 8500 1750
Wire Wire Line
	3800 1750 3800 1850
Wire Wire Line
	3600 1850 3600 1750
Connection ~ 3600 1750
Wire Wire Line
	3700 1750 3700 1850
Connection ~ 3700 1750
Connection ~ 3800 1750
Wire Wire Line
	3600 2450 3600 2550
Wire Wire Line
	3600 2550 3800 2550
Connection ~ 3800 2550
Wire Wire Line
	3700 2450 3700 2550
Connection ~ 3700 2550
$Comp
L CSD17501Q5A Q802
U 1 1 59410A63
P 3600 3600
F 0 "Q802" H 3400 3900 50  0000 L CNN
F 1 "BUK7Y4R8-60E" H 3400 3350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-669_LFPAK" H 3600 3800 50  0001 C CIN
F 3 "" V 3600 3600 50  0001 L CNN
	1    3600 3600
	0    1    -1   0   
$EndComp
$Comp
L CSD17501Q5A Q803
U 1 1 59410B41
P 3600 5000
F 0 "Q803" H 3400 5300 50  0000 L CNN
F 1 "BUK7Y4R8-60E" H 3400 4750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-669_LFPAK" H 3600 5200 50  0001 C CIN
F 3 "" V 3600 5000 50  0001 L CNN
	1    3600 5000
	0    1    -1   0   
$EndComp
Wire Wire Line
	3800 5400 3600 5400
Wire Wire Line
	3600 5400 3600 5300
Connection ~ 3800 5400
Wire Wire Line
	3700 5300 3700 5400
Connection ~ 3700 5400
Wire Wire Line
	3500 4700 3500 4600
Wire Wire Line
	3500 4600 4700 4600
Wire Wire Line
	3800 4600 3800 4700
Wire Wire Line
	3700 4700 3700 4600
Connection ~ 3700 4600
Wire Wire Line
	3600 4600 3600 4700
Connection ~ 3600 4600
Wire Wire Line
	4700 4600 4700 5000
Wire Wire Line
	4700 5000 8500 5000
Connection ~ 3800 4600
Wire Wire Line
	3600 3900 3600 4000
Wire Wire Line
	3600 4000 3800 4000
Connection ~ 3800 4000
Wire Wire Line
	3700 3900 3700 4000
Connection ~ 3700 4000
Wire Wire Line
	3500 3300 3500 3200
Wire Wire Line
	3500 3200 4700 3200
Wire Wire Line
	3800 3200 3800 3300
Wire Wire Line
	3700 3300 3700 3200
Connection ~ 3700 3200
Wire Wire Line
	3600 3200 3600 3300
Connection ~ 3600 3200
Wire Wire Line
	4700 3200 4700 3400
Connection ~ 8500 3400
Connection ~ 3800 3200
$EndSCHEMATC
