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
Sheet 2 10
Title "Powerboard 5V regulator"
Date "2017-03-14"
Rev "20"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LMZ14203 U201
U 1 1 5886813E
P 5750 3350
F 0 "U201" H 5950 3100 60  0000 C CNN
F 1 "LMZ14203" H 5750 3550 60  0000 C CNN
F 2 "TI_TO-PMOD:7TO-PMOD" H 5750 3300 60  0001 C CNN
F 3 "" H 5750 3300 60  0000 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C201
U 1 1 58868203
P 4350 3600
F 0 "C201" H 4375 3700 50  0000 L CNN
F 1 "10µ/40V" V 4300 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4388 3450 50  0001 C CNN
F 3 "" H 4350 3600 50  0000 C CNN
	1    4350 3600
	1    0    0    -1  
$EndComp
$Comp
L C C202
U 1 1 58868254
P 4600 3600
F 0 "C202" H 4625 3700 50  0000 L CNN
F 1 "1µ/40V" V 4550 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4638 3450 50  0001 C CNN
F 3 "" H 4600 3600 50  0000 C CNN
	1    4600 3600
	1    0    0    -1  
$EndComp
$Comp
L R R201
U 1 1 588682AE
P 4800 3600
F 0 "R201" V 4880 3600 50  0000 C CNN
F 1 "68k1" V 4800 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4730 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0000 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
$Comp
L R R203
U 1 1 588682F3
P 5100 3350
F 0 "R203" V 5180 3350 50  0000 C CNN
F 1 "100k" V 5100 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5030 3350 50  0001 C CNN
F 3 "" H 5100 3350 50  0000 C CNN
	1    5100 3350
	0    1    1    0   
$EndComp
$Comp
L R R202
U 1 1 58868335
P 4800 4100
F 0 "R202" V 4880 4100 50  0000 C CNN
F 1 "11k8" V 4800 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4730 4100 50  0001 C CNN
F 3 "" H 4800 4100 50  0000 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5886836B
P 5750 4450
F 0 "#PWR038" H 5750 4200 50  0001 C CNN
F 1 "GND" H 5750 4300 50  0000 C CNN
F 2 "" H 5750 4450 50  0000 C CNN
F 3 "" H 5750 4450 50  0000 C CNN
	1    5750 4450
	1    0    0    -1  
$EndComp
$Comp
L C C203
U 1 1 5886861B
P 6200 4100
F 0 "C203" H 6225 4200 50  0000 L CNN
F 1 "22n" H 6225 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6238 3950 50  0001 C CNN
F 3 "" H 6200 4100 50  0000 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
$Comp
L R R204
U 1 1 58868BB2
P 6500 3700
F 0 "R204" V 6580 3700 50  0000 C CNN
F 1 "5k62" V 6500 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6430 3700 50  0001 C CNN
F 3 "" H 6500 3700 50  0000 C CNN
	1    6500 3700
	1    0    0    -1  
$EndComp
$Comp
L C C204
U 1 1 58868C01
P 6700 3700
F 0 "C204" H 6725 3800 50  0000 L CNN
F 1 "22n" H 6725 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6738 3550 50  0001 C CNN
F 3 "" H 6700 3700 50  0000 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
$Comp
L R R205
U 1 1 58868C3C
P 6600 4100
F 0 "R205" V 6680 4100 50  0000 C CNN
F 1 "1k07" V 6600 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6530 4100 50  0001 C CNN
F 3 "" H 6600 4100 50  0000 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
$Comp
L C C205
U 1 1 58868C81
P 7100 3500
F 0 "C205" H 7125 3600 50  0000 L CNN
F 1 "1µ" H 7125 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7138 3350 50  0001 C CNN
F 3 "" H 7100 3500 50  0000 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
$Comp
L CP C206
U 1 1 58868D2E
P 7350 3500
F 0 "C206" H 7375 3600 50  0000 L CNN
F 1 "100µ/10V" H 7375 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1812_HandSoldering" H 7388 3350 50  0001 C CNN
F 3 "" H 7350 3500 50  0000 C CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3250 6150 3250
Wire Wire Line
	6500 3550 6500 3250
Connection ~ 6500 3250
Wire Wire Line
	6700 3550 6700 3250
Connection ~ 6700 3250
Wire Wire Line
	6150 3350 6350 3350
Wire Wire Line
	6350 3350 6350 3900
Wire Wire Line
	6350 3900 6700 3900
Wire Wire Line
	6600 3900 6600 3950
Wire Wire Line
	6500 3850 6500 3900
Connection ~ 6500 3900
Wire Wire Line
	6700 3900 6700 3850
Connection ~ 6600 3900
Wire Wire Line
	6200 3950 6200 3450
Wire Wire Line
	6200 3450 6150 3450
Wire Wire Line
	6200 4400 6200 4250
Wire Wire Line
	5750 4400 5750 4450
Wire Wire Line
	4800 4400 4800 4250
Connection ~ 5750 4400
Wire Wire Line
	4800 3950 4800 3750
Wire Wire Line
	5350 3450 5250 3450
Wire Wire Line
	5250 3450 5250 3850
Wire Wire Line
	5250 3850 4800 3850
Connection ~ 4800 3850
Wire Wire Line
	5350 3350 5250 3350
Wire Wire Line
	4950 3350 4800 3350
Wire Wire Line
	4800 3250 4800 3450
Wire Wire Line
	4250 3250 5350 3250
Wire Wire Line
	4600 3450 4600 3250
Connection ~ 4600 3250
Wire Wire Line
	4350 3750 4350 4400
Connection ~ 4800 4400
Wire Wire Line
	4600 3750 4600 4400
Connection ~ 4600 4400
Wire Wire Line
	6600 4400 6600 4250
Connection ~ 6200 4400
Wire Wire Line
	7100 4400 7100 3650
Connection ~ 6600 4400
Wire Wire Line
	7350 4400 7350 3650
Connection ~ 7100 4400
Wire Wire Line
	7100 3350 7100 3250
Connection ~ 7100 3250
Wire Wire Line
	7350 3250 7350 3350
Connection ~ 7350 3250
Wire Wire Line
	5700 4400 5700 3650
Connection ~ 5700 4400
Wire Wire Line
	5800 4400 5800 3650
Connection ~ 5800 4400
Text Label 4850 3250 0    60   ~ 0
RXSM_28V
Wire Wire Line
	4350 3450 4350 3250
Connection ~ 4350 3250
Wire Wire Line
	4350 4400 7350 4400
Text HLabel 4250 3250 0    60   Input ~ 0
RXSM_28V_IN
Text HLabel 7450 3250 2    60   Input ~ 0
5V_3A_OUT
Connection ~ 4800 3250
Connection ~ 4800 3350
$EndSCHEMATC
