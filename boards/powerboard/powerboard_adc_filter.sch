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
Sheet 10 10
Title "Powerboard: ADC lowpass filters"
Date "2017-04-18"
Rev "20"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1800 2750 0    60   Input ~ 0
IN1
Text HLabel 1800 4050 0    60   Input ~ 0
IN2
Text HLabel 1800 5350 0    60   Input ~ 0
IN3
Text HLabel 6600 1550 0    60   Input ~ 0
IN4
Text HLabel 6600 2850 0    60   Input ~ 0
IN5
Text HLabel 6600 4150 0    60   Input ~ 0
IN6
Text HLabel 6600 5450 0    60   Input ~ 0
IN7
Text HLabel 1800 1450 0    60   Input ~ 0
IN0
Text HLabel 3950 2850 2    60   Output ~ 0
OUT1
Text HLabel 3950 4150 2    60   Output ~ 0
OUT2
Text HLabel 3950 5450 2    60   Output ~ 0
OUT3
Text HLabel 8750 1650 2    60   Output ~ 0
OUT4
Text HLabel 8750 2950 2    60   Output ~ 0
OUT5
Text HLabel 8750 4250 2    60   Output ~ 0
OUT6
Text HLabel 8750 5550 2    60   Output ~ 0
OUT7
Text HLabel 3950 1550 2    60   Output ~ 0
OUT0
$Comp
L LMV324 U1101
U 1 1 58F76E02
P 3400 1550
F 0 "U1101" H 3400 1750 50  0000 L CNN
F 1 "LMV324" H 3400 1350 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3350 1650 50  0001 C CNN
F 3 "" H 3450 1750 50  0001 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L LMV324 U1101
U 2 1 58F76F11
P 3400 2850
F 0 "U1101" H 3400 3050 50  0000 L CNN
F 1 "LMV324" H 3400 2650 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3350 2950 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	2    3400 2850
	1    0    0    -1  
$EndComp
$Comp
L LMV324 U1101
U 3 1 58F76F3E
P 3400 4150
F 0 "U1101" H 3400 4350 50  0000 L CNN
F 1 "LMV324" H 3400 3950 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3350 4250 50  0001 C CNN
F 3 "" H 3450 4350 50  0001 C CNN
	3    3400 4150
	1    0    0    -1  
$EndComp
$Comp
L LMV324 U1101
U 4 1 58F77000
P 3400 5450
F 0 "U1101" H 3400 5650 50  0000 L CNN
F 1 "LMV324" H 3400 5250 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3350 5550 50  0001 C CNN
F 3 "" H 3450 5650 50  0001 C CNN
	4    3400 5450
	1    0    0    -1  
$EndComp
$Comp
L R R1105
U 1 1 58F7710D
P 2650 1450
F 0 "R1105" V 2730 1450 50  0000 C CNN
F 1 "47k" V 2650 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2580 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	0    1    1    0   
$EndComp
$Comp
L R R1101
U 1 1 58F771CC
P 2150 1450
F 0 "R1101" V 2230 1450 50  0000 C CNN
F 1 "47k" V 2150 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2080 1450 50  0001 C CNN
F 3 "" H 2150 1450 50  0001 C CNN
	1    2150 1450
	0    1    1    0   
$EndComp
$Comp
L C C1101
U 1 1 58F771FE
P 2900 1700
F 0 "C1101" H 2750 1800 50  0000 L CNN
F 1 "220n" H 2700 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2938 1550 50  0001 C CNN
F 3 "" H 2900 1700 50  0001 C CNN
	1    2900 1700
	1    0    0    -1  
$EndComp
$Comp
L C C1105
U 1 1 58F77244
P 3300 1050
F 0 "C1105" V 3250 1100 50  0000 L CNN
F 1 "220n" V 3250 800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3338 900 50  0001 C CNN
F 3 "" H 3300 1050 50  0001 C CNN
	1    3300 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 1450 3100 1450
Wire Wire Line
	2900 1550 2900 1450
Connection ~ 2900 1450
Wire Wire Line
	3100 1650 3050 1650
Wire Wire Line
	3050 1650 3050 1900
Wire Wire Line
	3050 1900 3750 1900
Wire Wire Line
	3750 1900 3750 1050
Wire Wire Line
	3700 1550 3950 1550
Wire Wire Line
	3750 1050 3450 1050
Connection ~ 3750 1550
Wire Wire Line
	3150 1050 2400 1050
Wire Wire Line
	2400 1050 2400 1450
Wire Wire Line
	2300 1450 2500 1450
Connection ~ 2400 1450
$Comp
L GND #PWR087
U 1 1 58F77F6F
P 2900 2000
F 0 "#PWR087" H 2900 1750 50  0001 C CNN
F 1 "GND" H 2900 1850 50  0000 C CNN
F 2 "" H 2900 2000 50  0001 C CNN
F 3 "" H 2900 2000 50  0001 C CNN
	1    2900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1850 2900 2000
Wire Wire Line
	2900 1950 3300 1950
Wire Wire Line
	3300 1950 3300 1850
Connection ~ 2900 1950
$Comp
L +2V5 #PWR088
U 1 1 58F781CC
P 3150 1200
F 0 "#PWR088" H 3150 1050 50  0001 C CNN
F 1 "+2V5" H 3150 1340 50  0000 C CNN
F 2 "" H 3150 1200 50  0001 C CNN
F 3 "" H 3150 1200 50  0001 C CNN
	1    3150 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1200 3300 1200
Wire Wire Line
	3300 1200 3300 1250
$Comp
L R R1106
U 1 1 58F79702
P 2650 2750
F 0 "R1106" V 2730 2750 50  0000 C CNN
F 1 "47k" V 2650 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2580 2750 50  0001 C CNN
F 3 "" H 2650 2750 50  0001 C CNN
	1    2650 2750
	0    1    1    0   
$EndComp
$Comp
L R R1102
U 1 1 58F79708
P 2150 2750
F 0 "R1102" V 2230 2750 50  0000 C CNN
F 1 "47k" V 2150 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2080 2750 50  0001 C CNN
F 3 "" H 2150 2750 50  0001 C CNN
	1    2150 2750
	0    1    1    0   
$EndComp
$Comp
L C C1102
U 1 1 58F7970E
P 2900 3000
F 0 "C1102" H 2750 3100 50  0000 L CNN
F 1 "220n" H 2700 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2938 2850 50  0001 C CNN
F 3 "" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
$Comp
L C C1106
U 1 1 58F79714
P 3300 2350
F 0 "C1106" V 3250 2400 50  0000 L CNN
F 1 "220n" V 3250 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3338 2200 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 2750 3100 2750
Wire Wire Line
	2900 2850 2900 2750
Connection ~ 2900 2750
Wire Wire Line
	3100 2950 3050 2950
Wire Wire Line
	3050 2950 3050 3200
Wire Wire Line
	3050 3200 3750 3200
Wire Wire Line
	3750 3200 3750 2350
Wire Wire Line
	3700 2850 3950 2850
Wire Wire Line
	3750 2350 3450 2350
Connection ~ 3750 2850
Wire Wire Line
	3150 2350 2400 2350
Wire Wire Line
	2400 2350 2400 2750
Wire Wire Line
	2300 2750 2500 2750
Connection ~ 2400 2750
$Comp
L GND #PWR089
U 1 1 58F79728
P 2900 3300
F 0 "#PWR089" H 2900 3050 50  0001 C CNN
F 1 "GND" H 2900 3150 50  0000 C CNN
F 2 "" H 2900 3300 50  0001 C CNN
F 3 "" H 2900 3300 50  0001 C CNN
	1    2900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3150 2900 3300
Wire Wire Line
	2900 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3150
Connection ~ 2900 3250
$Comp
L +2V5 #PWR090
U 1 1 58F79732
P 3150 2500
F 0 "#PWR090" H 3150 2350 50  0001 C CNN
F 1 "+2V5" H 3150 2640 50  0000 C CNN
F 2 "" H 3150 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
	1    3150 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2500 3300 2500
Wire Wire Line
	3300 2500 3300 2550
$Comp
L R R1107
U 1 1 58F79AE2
P 2650 4050
F 0 "R1107" V 2730 4050 50  0000 C CNN
F 1 "47k" V 2650 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2580 4050 50  0001 C CNN
F 3 "" H 2650 4050 50  0001 C CNN
	1    2650 4050
	0    1    1    0   
$EndComp
$Comp
L R R1103
U 1 1 58F79AE8
P 2150 4050
F 0 "R1103" V 2230 4050 50  0000 C CNN
F 1 "47k" V 2150 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2080 4050 50  0001 C CNN
F 3 "" H 2150 4050 50  0001 C CNN
	1    2150 4050
	0    1    1    0   
$EndComp
$Comp
L C C1103
U 1 1 58F79AEE
P 2900 4300
F 0 "C1103" H 2750 4400 50  0000 L CNN
F 1 "220n" H 2700 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2938 4150 50  0001 C CNN
F 3 "" H 2900 4300 50  0001 C CNN
	1    2900 4300
	1    0    0    -1  
$EndComp
$Comp
L C C1107
U 1 1 58F79AF4
P 3300 3650
F 0 "C1107" V 3250 3700 50  0000 L CNN
F 1 "220n" V 3250 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3338 3500 50  0001 C CNN
F 3 "" H 3300 3650 50  0001 C CNN
	1    3300 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 4050 3100 4050
Wire Wire Line
	2900 4150 2900 4050
Connection ~ 2900 4050
Wire Wire Line
	3100 4250 3050 4250
Wire Wire Line
	3050 4250 3050 4500
Wire Wire Line
	3050 4500 3750 4500
Wire Wire Line
	3750 4500 3750 3650
Wire Wire Line
	3700 4150 3950 4150
Wire Wire Line
	3750 3650 3450 3650
Connection ~ 3750 4150
Wire Wire Line
	3150 3650 2400 3650
Wire Wire Line
	2400 3650 2400 4050
Wire Wire Line
	2300 4050 2500 4050
Connection ~ 2400 4050
$Comp
L GND #PWR091
U 1 1 58F79B08
P 2900 4600
F 0 "#PWR091" H 2900 4350 50  0001 C CNN
F 1 "GND" H 2900 4450 50  0000 C CNN
F 2 "" H 2900 4600 50  0001 C CNN
F 3 "" H 2900 4600 50  0001 C CNN
	1    2900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4450 2900 4600
Wire Wire Line
	2900 4550 3300 4550
Wire Wire Line
	3300 4550 3300 4450
Connection ~ 2900 4550
$Comp
L +2V5 #PWR092
U 1 1 58F79B12
P 3150 3800
F 0 "#PWR092" H 3150 3650 50  0001 C CNN
F 1 "+2V5" H 3150 3940 50  0000 C CNN
F 2 "" H 3150 3800 50  0001 C CNN
F 3 "" H 3150 3800 50  0001 C CNN
	1    3150 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 3800 3300 3800
Wire Wire Line
	3300 3800 3300 3850
$Comp
L R R1108
U 1 1 58F7A003
P 2650 5350
F 0 "R1108" V 2730 5350 50  0000 C CNN
F 1 "47k" V 2650 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2580 5350 50  0001 C CNN
F 3 "" H 2650 5350 50  0001 C CNN
	1    2650 5350
	0    1    1    0   
$EndComp
$Comp
L R R1104
U 1 1 58F7A009
P 2150 5350
F 0 "R1104" V 2230 5350 50  0000 C CNN
F 1 "47k" V 2150 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2080 5350 50  0001 C CNN
F 3 "" H 2150 5350 50  0001 C CNN
	1    2150 5350
	0    1    1    0   
$EndComp
$Comp
L C C1104
U 1 1 58F7A00F
P 2900 5600
F 0 "C1104" H 2750 5700 50  0000 L CNN
F 1 "220n" H 2700 5500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2938 5450 50  0001 C CNN
F 3 "" H 2900 5600 50  0001 C CNN
	1    2900 5600
	1    0    0    -1  
$EndComp
$Comp
L C C1108
U 1 1 58F7A015
P 3300 4950
F 0 "C1108" V 3250 5000 50  0000 L CNN
F 1 "220n" V 3250 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3338 4800 50  0001 C CNN
F 3 "" H 3300 4950 50  0001 C CNN
	1    3300 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 5350 3100 5350
Wire Wire Line
	2900 5450 2900 5350
Connection ~ 2900 5350
Wire Wire Line
	3100 5550 3050 5550
Wire Wire Line
	3050 5550 3050 5800
Wire Wire Line
	3050 5800 3750 5800
Wire Wire Line
	3750 5800 3750 4950
Wire Wire Line
	3700 5450 3950 5450
Wire Wire Line
	3750 4950 3450 4950
Connection ~ 3750 5450
Wire Wire Line
	3150 4950 2400 4950
Wire Wire Line
	2400 4950 2400 5350
Wire Wire Line
	2300 5350 2500 5350
Connection ~ 2400 5350
$Comp
L GND #PWR093
U 1 1 58F7A029
P 2900 5900
F 0 "#PWR093" H 2900 5650 50  0001 C CNN
F 1 "GND" H 2900 5750 50  0000 C CNN
F 2 "" H 2900 5900 50  0001 C CNN
F 3 "" H 2900 5900 50  0001 C CNN
	1    2900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5750 2900 5900
Wire Wire Line
	2900 5850 3300 5850
Wire Wire Line
	3300 5850 3300 5750
Connection ~ 2900 5850
$Comp
L +2V5 #PWR094
U 1 1 58F7A033
P 3150 5100
F 0 "#PWR094" H 3150 4950 50  0001 C CNN
F 1 "+2V5" H 3150 5240 50  0000 C CNN
F 2 "" H 3150 5100 50  0001 C CNN
F 3 "" H 3150 5100 50  0001 C CNN
	1    3150 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 5100 3300 5100
Wire Wire Line
	3300 5100 3300 5150
Wire Wire Line
	1800 5350 2000 5350
Wire Wire Line
	2000 4050 1800 4050
Wire Wire Line
	2000 2750 1800 2750
Wire Wire Line
	1800 1450 2000 1450
$Comp
L LMV324 U1102
U 1 1 58F7E23C
P 8200 1650
F 0 "U1102" H 8200 1850 50  0000 L CNN
F 1 "LMV324" H 8200 1450 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8150 1750 50  0001 C CNN
F 3 "" H 8250 1850 50  0001 C CNN
	1    8200 1650
	1    0    0    -1  
$EndComp
$Comp
L LMV324 U1102
U 2 1 58F7E242
P 8200 2950
F 0 "U1102" H 8200 3150 50  0000 L CNN
F 1 "LMV324" H 8200 2750 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8150 3050 50  0001 C CNN
F 3 "" H 8250 3150 50  0001 C CNN
	2    8200 2950
	1    0    0    -1  
$EndComp
$Comp
L LMV324 U1102
U 3 1 58F7E248
P 8200 4250
F 0 "U1102" H 8200 4450 50  0000 L CNN
F 1 "LMV324" H 8200 4050 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8150 4350 50  0001 C CNN
F 3 "" H 8250 4450 50  0001 C CNN
	3    8200 4250
	1    0    0    -1  
$EndComp
$Comp
L LMV324 U1102
U 4 1 58F7E24E
P 8200 5550
F 0 "U1102" H 8200 5750 50  0000 L CNN
F 1 "LMV324" H 8200 5350 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8150 5650 50  0001 C CNN
F 3 "" H 8250 5750 50  0001 C CNN
	4    8200 5550
	1    0    0    -1  
$EndComp
$Comp
L R R1113
U 1 1 58F7E254
P 7450 1550
F 0 "R1113" V 7530 1550 50  0000 C CNN
F 1 "47k" V 7450 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7380 1550 50  0001 C CNN
F 3 "" H 7450 1550 50  0001 C CNN
	1    7450 1550
	0    1    1    0   
$EndComp
$Comp
L R R1109
U 1 1 58F7E25A
P 6950 1550
F 0 "R1109" V 7030 1550 50  0000 C CNN
F 1 "47k" V 6950 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 1550 50  0001 C CNN
F 3 "" H 6950 1550 50  0001 C CNN
	1    6950 1550
	0    1    1    0   
$EndComp
$Comp
L C C1109
U 1 1 58F7E260
P 7700 1800
F 0 "C1109" H 7550 1900 50  0000 L CNN
F 1 "220n" H 7500 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7738 1650 50  0001 C CNN
F 3 "" H 7700 1800 50  0001 C CNN
	1    7700 1800
	1    0    0    -1  
$EndComp
$Comp
L C C1113
U 1 1 58F7E266
P 8100 1150
F 0 "C1113" V 8050 1200 50  0000 L CNN
F 1 "220n" V 8050 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8138 1000 50  0001 C CNN
F 3 "" H 8100 1150 50  0001 C CNN
	1    8100 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 1550 7900 1550
Wire Wire Line
	7700 1650 7700 1550
Connection ~ 7700 1550
Wire Wire Line
	7900 1750 7850 1750
Wire Wire Line
	7850 1750 7850 2000
Wire Wire Line
	7850 2000 8550 2000
Wire Wire Line
	8550 2000 8550 1150
Wire Wire Line
	8500 1650 8750 1650
Wire Wire Line
	8550 1150 8250 1150
Connection ~ 8550 1650
Wire Wire Line
	7950 1150 7200 1150
Wire Wire Line
	7200 1150 7200 1550
Wire Wire Line
	7100 1550 7300 1550
Connection ~ 7200 1550
$Comp
L GND #PWR095
U 1 1 58F7E27A
P 7700 2100
F 0 "#PWR095" H 7700 1850 50  0001 C CNN
F 1 "GND" H 7700 1950 50  0000 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1950 7700 2100
Wire Wire Line
	7700 2050 8100 2050
Wire Wire Line
	8100 2050 8100 1950
Connection ~ 7700 2050
$Comp
L +2V5 #PWR096
U 1 1 58F7E284
P 7950 1300
F 0 "#PWR096" H 7950 1150 50  0001 C CNN
F 1 "+2V5" H 7950 1440 50  0000 C CNN
F 2 "" H 7950 1300 50  0001 C CNN
F 3 "" H 7950 1300 50  0001 C CNN
	1    7950 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 1300 8100 1300
Wire Wire Line
	8100 1300 8100 1350
$Comp
L R R1114
U 1 1 58F7E28C
P 7450 2850
F 0 "R1114" V 7530 2850 50  0000 C CNN
F 1 "47k" V 7450 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7380 2850 50  0001 C CNN
F 3 "" H 7450 2850 50  0001 C CNN
	1    7450 2850
	0    1    1    0   
$EndComp
$Comp
L R R1110
U 1 1 58F7E292
P 6950 2850
F 0 "R1110" V 7030 2850 50  0000 C CNN
F 1 "47k" V 6950 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 2850 50  0001 C CNN
F 3 "" H 6950 2850 50  0001 C CNN
	1    6950 2850
	0    1    1    0   
$EndComp
$Comp
L C C1110
U 1 1 58F7E298
P 7700 3100
F 0 "C1110" H 7550 3200 50  0000 L CNN
F 1 "220n" H 7500 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7738 2950 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L C C1114
U 1 1 58F7E29E
P 8100 2450
F 0 "C1114" V 8050 2500 50  0000 L CNN
F 1 "220n" V 8050 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8138 2300 50  0001 C CNN
F 3 "" H 8100 2450 50  0001 C CNN
	1    8100 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2850 7900 2850
Wire Wire Line
	7700 2950 7700 2850
Connection ~ 7700 2850
Wire Wire Line
	7900 3050 7850 3050
Wire Wire Line
	7850 3050 7850 3300
Wire Wire Line
	7850 3300 8550 3300
Wire Wire Line
	8550 3300 8550 2450
Wire Wire Line
	8500 2950 8750 2950
Wire Wire Line
	8550 2450 8250 2450
Connection ~ 8550 2950
Wire Wire Line
	7950 2450 7200 2450
Wire Wire Line
	7200 2450 7200 2850
Wire Wire Line
	7100 2850 7300 2850
Connection ~ 7200 2850
$Comp
L GND #PWR097
U 1 1 58F7E2B2
P 7700 3400
F 0 "#PWR097" H 7700 3150 50  0001 C CNN
F 1 "GND" H 7700 3250 50  0000 C CNN
F 2 "" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 3400 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3250 7700 3400
Wire Wire Line
	7700 3350 8100 3350
Wire Wire Line
	8100 3350 8100 3250
Connection ~ 7700 3350
$Comp
L +2V5 #PWR098
U 1 1 58F7E2BC
P 7950 2600
F 0 "#PWR098" H 7950 2450 50  0001 C CNN
F 1 "+2V5" H 7950 2740 50  0000 C CNN
F 2 "" H 7950 2600 50  0001 C CNN
F 3 "" H 7950 2600 50  0001 C CNN
	1    7950 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 2600 8100 2600
Wire Wire Line
	8100 2600 8100 2650
$Comp
L R R1115
U 1 1 58F7E2C4
P 7450 4150
F 0 "R1115" V 7530 4150 50  0000 C CNN
F 1 "47k" V 7450 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7380 4150 50  0001 C CNN
F 3 "" H 7450 4150 50  0001 C CNN
	1    7450 4150
	0    1    1    0   
$EndComp
$Comp
L R R1111
U 1 1 58F7E2CA
P 6950 4150
F 0 "R1111" V 7030 4150 50  0000 C CNN
F 1 "47k" V 6950 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 4150 50  0001 C CNN
F 3 "" H 6950 4150 50  0001 C CNN
	1    6950 4150
	0    1    1    0   
$EndComp
$Comp
L C C1111
U 1 1 58F7E2D0
P 7700 4400
F 0 "C1111" H 7550 4500 50  0000 L CNN
F 1 "220n" H 7500 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7738 4250 50  0001 C CNN
F 3 "" H 7700 4400 50  0001 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
$Comp
L C C1115
U 1 1 58F7E2D6
P 8100 3750
F 0 "C1115" V 8050 3800 50  0000 L CNN
F 1 "220n" V 8050 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8138 3600 50  0001 C CNN
F 3 "" H 8100 3750 50  0001 C CNN
	1    8100 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4150 7900 4150
Wire Wire Line
	7700 4250 7700 4150
Connection ~ 7700 4150
Wire Wire Line
	7900 4350 7850 4350
Wire Wire Line
	7850 4350 7850 4600
Wire Wire Line
	7850 4600 8550 4600
Wire Wire Line
	8550 4600 8550 3750
Wire Wire Line
	8500 4250 8750 4250
Wire Wire Line
	8550 3750 8250 3750
Connection ~ 8550 4250
Wire Wire Line
	7950 3750 7200 3750
Wire Wire Line
	7200 3750 7200 4150
Wire Wire Line
	7100 4150 7300 4150
Connection ~ 7200 4150
$Comp
L GND #PWR099
U 1 1 58F7E2EA
P 7700 4700
F 0 "#PWR099" H 7700 4450 50  0001 C CNN
F 1 "GND" H 7700 4550 50  0000 C CNN
F 2 "" H 7700 4700 50  0001 C CNN
F 3 "" H 7700 4700 50  0001 C CNN
	1    7700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4550 7700 4700
Wire Wire Line
	7700 4650 8100 4650
Wire Wire Line
	8100 4650 8100 4550
Connection ~ 7700 4650
$Comp
L +2V5 #PWR0100
U 1 1 58F7E2F4
P 7950 3900
F 0 "#PWR0100" H 7950 3750 50  0001 C CNN
F 1 "+2V5" H 7950 4040 50  0000 C CNN
F 2 "" H 7950 3900 50  0001 C CNN
F 3 "" H 7950 3900 50  0001 C CNN
	1    7950 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 3900 8100 3900
Wire Wire Line
	8100 3900 8100 3950
$Comp
L R R1116
U 1 1 58F7E2FC
P 7450 5450
F 0 "R1116" V 7530 5450 50  0000 C CNN
F 1 "47k" V 7450 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7380 5450 50  0001 C CNN
F 3 "" H 7450 5450 50  0001 C CNN
	1    7450 5450
	0    1    1    0   
$EndComp
$Comp
L R R1112
U 1 1 58F7E302
P 6950 5450
F 0 "R1112" V 7030 5450 50  0000 C CNN
F 1 "47k" V 6950 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 5450 50  0001 C CNN
F 3 "" H 6950 5450 50  0001 C CNN
	1    6950 5450
	0    1    1    0   
$EndComp
$Comp
L C C1112
U 1 1 58F7E308
P 7700 5700
F 0 "C1112" H 7550 5800 50  0000 L CNN
F 1 "220n" H 7500 5600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7738 5550 50  0001 C CNN
F 3 "" H 7700 5700 50  0001 C CNN
	1    7700 5700
	1    0    0    -1  
$EndComp
$Comp
L C C1116
U 1 1 58F7E30E
P 8100 5050
F 0 "C1116" V 8050 5100 50  0000 L CNN
F 1 "220n" V 8050 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8138 4900 50  0001 C CNN
F 3 "" H 8100 5050 50  0001 C CNN
	1    8100 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 5450 7900 5450
Wire Wire Line
	7700 5550 7700 5450
Connection ~ 7700 5450
Wire Wire Line
	7900 5650 7850 5650
Wire Wire Line
	7850 5650 7850 5900
Wire Wire Line
	7850 5900 8550 5900
Wire Wire Line
	8550 5900 8550 5050
Wire Wire Line
	8500 5550 8750 5550
Wire Wire Line
	8550 5050 8250 5050
Connection ~ 8550 5550
Wire Wire Line
	7950 5050 7200 5050
Wire Wire Line
	7200 5050 7200 5450
Wire Wire Line
	7100 5450 7300 5450
Connection ~ 7200 5450
$Comp
L GND #PWR0101
U 1 1 58F7E322
P 7700 6000
F 0 "#PWR0101" H 7700 5750 50  0001 C CNN
F 1 "GND" H 7700 5850 50  0000 C CNN
F 2 "" H 7700 6000 50  0001 C CNN
F 3 "" H 7700 6000 50  0001 C CNN
	1    7700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5850 7700 6000
Wire Wire Line
	7700 5950 8100 5950
Wire Wire Line
	8100 5950 8100 5850
Connection ~ 7700 5950
$Comp
L +2V5 #PWR0102
U 1 1 58F7E32C
P 7950 5200
F 0 "#PWR0102" H 7950 5050 50  0001 C CNN
F 1 "+2V5" H 7950 5340 50  0000 C CNN
F 2 "" H 7950 5200 50  0001 C CNN
F 3 "" H 7950 5200 50  0001 C CNN
	1    7950 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 5200 8100 5200
Wire Wire Line
	8100 5200 8100 5250
Wire Wire Line
	6600 5450 6800 5450
Wire Wire Line
	6800 4150 6600 4150
Wire Wire Line
	6800 2850 6600 2850
Wire Wire Line
	6600 1550 6800 1550
Text Notes 4100 6700 0    60   ~ 0
Sallen-Key low pass filter design tool:\nhttp://sim.okawa-denshi.jp/en/OPstool.php
$EndSCHEMATC
