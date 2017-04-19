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
Sheet 3 11
Title "Powerboard 24V regulator"
Date "2017-03-14"
Rev "02"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2850 1300 0    60   Input ~ 0
Bat_IN
Text HLabel 8700 1300 2    60   Input ~ 0
24V_OUT
$Comp
L GND #PWR?
U 1 1 588F90A8
P 4600 3550
F 0 "#PWR?" H 4600 3300 50  0001 C CNN
F 1 "GND" H 4600 3400 50  0000 C CNN
F 2 "" H 4600 3550 50  0000 C CNN
F 3 "" H 4600 3550 50  0000 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
Text HLabel 2850 1900 0    60   Input ~ 0
Enable
$Comp
L LT3757 U?
U 1 1 588F9C46
P 4600 2100
F 0 "U?" H 4250 2550 60  0000 C CNN
F 1 "LT3757" H 4850 2550 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-10-1EP_3x3mm_Pitch0.5mm" H 4600 2100 60  0001 C CNN
F 3 "" H 4600 2100 60  0001 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1300 4900 1300
Wire Wire Line
	4600 1300 4600 1500
$Comp
L INDUCTOR L?
U 1 1 588F9D48
P 5200 1300
F 0 "L?" V 5150 1300 50  0000 C CNN
F 1 "0.72µH" V 5300 1300 50  0000 C CNN
F 2 "GH_Inductors:Inductor_Wurth_HCI-1890" H 5200 1300 50  0001 C CNN
F 3 "" H 5200 1300 50  0000 C CNN
	1    5200 1300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 588F9F5B
P 5900 2650
F 0 "R?" V 5980 2650 50  0000 C CNN
F 1 "2m" V 5900 2650 50  0000 C CNN
F 2 "resistor-power-shunt:WSLP2726" V 5830 2650 50  0001 C CNN
F 3 "" H 5900 2650 50  0000 C CNN
	1    5900 2650
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 588FA0E6
P 7050 2150
F 0 "R?" V 7130 2150 50  0000 C CNN
F 1 "226k" V 7050 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6980 2150 50  0001 C CNN
F 3 "" H 7050 2150 50  0000 C CNN
	1    7050 2150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 588FA11B
P 7050 2650
F 0 "R?" V 7130 2650 50  0000 C CNN
F 1 "16k2" V 7050 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6980 2650 50  0001 C CNN
F 3 "" H 7050 2650 50  0000 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588FA17F
P 7550 2150
F 0 "C?" H 7575 2250 50  0000 L CNN
F 1 "120µ" H 7575 2050 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 7588 2000 50  0001 C CNN
F 3 "" H 7550 2150 50  0000 C CNN
	1    7550 2150
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588FA2C0
P 7900 2150
F 0 "C?" H 7925 2250 50  0000 L CNN
F 1 "120µ" H 7925 2050 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 7938 2000 50  0001 C CNN
F 3 "" H 7900 2150 50  0000 C CNN
	1    7900 2150
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588FA2F5
P 8250 2150
F 0 "C?" H 8275 2250 50  0000 L CNN
F 1 "120µ" H 8275 2050 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 8288 2000 50  0001 C CNN
F 3 "" H 8250 2150 50  0000 C CNN
	1    8250 2150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 588FA451
P 3300 2100
F 0 "R?" V 3200 2100 50  0000 C CNN
F 1 "27k" V 3300 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3230 2100 50  0001 C CNN
F 3 "" H 3300 2100 50  0000 C CNN
	1    3300 2100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 588FA49A
P 3300 1650
F 0 "R?" V 3250 1800 50  0000 C CNN
F 1 "100k" V 3300 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3230 1650 50  0001 C CNN
F 3 "" H 3300 1650 50  0000 C CNN
	1    3300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3000 1300
Connection ~ 3000 1300
Wire Wire Line
	3000 1750 3000 3450
$Comp
L R R?
U 1 1 588FA63C
P 3650 2400
F 0 "R?" V 3730 2400 50  0000 C CNN
F 1 "10k5" V 3650 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3580 2400 50  0001 C CNN
F 3 "" H 3650 2400 50  0000 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588FA6E1
P 3900 2500
F 0 "C?" H 3925 2600 50  0000 L CNN
F 1 "100n" H 3925 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3938 2350 50  0001 C CNN
F 3 "" H 3900 2500 50  0000 C CNN
	1    3900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2250 3650 2150
Wire Wire Line
	3650 2150 4000 2150
Wire Wire Line
	4000 2250 3900 2250
Wire Wire Line
	3900 2250 3900 2350
Wire Wire Line
	3300 1950 3300 1800
Wire Wire Line
	3300 1500 3300 1300
Connection ~ 3300 1300
Wire Wire Line
	4000 2050 3500 2050
Wire Wire Line
	3500 2050 3500 3450
Wire Wire Line
	3000 3450 8600 3450
Wire Wire Line
	4600 2700 4600 3550
Wire Wire Line
	3650 2550 3650 3450
Connection ~ 3650 3450
Wire Wire Line
	3900 2650 3900 3450
Connection ~ 3900 3450
Wire Wire Line
	3300 2250 3300 3450
Connection ~ 3500 3450
Wire Wire Line
	4000 1950 3550 1950
Wire Wire Line
	3550 1950 3550 1900
Wire Wire Line
	3550 1900 2850 1900
Connection ~ 3300 1900
Connection ~ 4600 1300
Wire Wire Line
	5900 1300 5900 1800
Connection ~ 5900 1300
Wire Wire Line
	5600 2000 5200 2000
Wire Wire Line
	5900 2200 5900 2500
Wire Wire Line
	5250 2400 7050 2400
Wire Wire Line
	7050 2300 7050 2500
Connection ~ 7050 2400
Wire Wire Line
	7050 2000 7050 1300
Wire Wire Line
	8250 1300 8250 2000
Connection ~ 7050 1300
Wire Wire Line
	7900 2000 7900 1300
Connection ~ 7900 1300
Wire Wire Line
	7550 2000 7550 1300
Connection ~ 7550 1300
Wire Wire Line
	7050 3450 7050 2800
Connection ~ 4600 3450
Wire Wire Line
	5900 2800 5900 3450
Connection ~ 5900 3450
Wire Wire Line
	8250 3450 8250 2300
Connection ~ 7050 3450
Wire Wire Line
	7550 2300 7550 3450
Connection ~ 7550 3450
Wire Wire Line
	7900 2300 7900 3450
Connection ~ 7900 3450
Connection ~ 8250 1300
$Comp
L R R?
U 1 1 588FB43F
P 4350 2900
F 0 "R?" V 4430 2900 50  0000 C CNN
F 1 "22k" V 4350 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4280 2900 50  0001 C CNN
F 3 "" H 4350 2900 50  0000 C CNN
	1    4350 2900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588FB4B3
P 4350 3250
F 0 "C?" H 4375 3350 50  0000 L CNN
F 1 "6n8" H 4375 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4388 3100 50  0001 C CNN
F 3 "" H 4350 3250 50  0000 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3450 4350 3400
Connection ~ 4350 3450
Wire Wire Line
	4350 3100 4350 3050
Wire Wire Line
	4100 2750 4500 2750
Wire Wire Line
	4500 2750 4500 2700
$Comp
L C C?
U 1 1 588FB818
P 4850 3050
F 0 "C?" H 4875 3150 50  0000 L CNN
F 1 "4µ7" H 4875 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4888 2900 50  0001 C CNN
F 3 "" H 4850 3050 50  0000 C CNN
	1    4850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2900 4850 2800
Wire Wire Line
	4700 2800 5150 2800
Wire Wire Line
	4700 2800 4700 2700
Wire Wire Line
	4850 3200 4850 3450
Connection ~ 4850 3450
Connection ~ 3300 3450
Wire Wire Line
	5150 2800 5150 3950
Wire Wire Line
	5150 3950 2300 3950
Wire Wire Line
	2300 3950 2300 1050
Wire Wire Line
	2300 1050 3550 1050
Wire Wire Line
	3550 1050 3550 1300
Connection ~ 3550 1300
Connection ~ 4850 2800
$Comp
L C C?
U 1 1 588FE63C
P 4100 3050
F 0 "C?" H 4125 3150 50  0000 L CNN
F 1 "100p" H 4125 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4138 2900 50  0001 C CNN
F 3 "" H 4100 3050 50  0000 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4100 2750
Connection ~ 4350 2750
Wire Wire Line
	4100 3200 4100 3450
Connection ~ 4100 3450
Wire Wire Line
	5200 2200 5250 2200
Wire Wire Line
	5250 2200 5250 2400
$Comp
L R R?
U 1 1 588FE946
P 5650 2250
F 0 "R?" V 5730 2250 50  0000 C CNN
F 1 "(22)" V 5650 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5580 2250 50  0001 C CNN
F 3 "" H 5650 2250 50  0000 C CNN
	1    5650 2250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 588FE99D
P 5400 2650
F 0 "C?" H 5425 2750 50  0000 L CNN
F 1 "(2n2)" H 5425 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5438 2500 50  0001 C CNN
F 3 "" H 5400 2650 50  0000 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2100 5350 2100
Wire Wire Line
	5350 2100 5350 2250
Wire Wire Line
	5350 2250 5500 2250
Wire Wire Line
	5400 2500 5400 2250
Connection ~ 5400 2250
Wire Wire Line
	5800 2250 5900 2250
Connection ~ 5900 2250
Wire Wire Line
	5400 2800 5400 3450
Connection ~ 5400 3450
Text Notes 4150 1100 0    39   ~ 0
Würth 7443556082\nL=0.82µH I_R=41.5A I_SAT=65A R_DC=0.54mOhm L_R=0.72µH
Text Notes 5950 850  0    39   ~ 0
Vishay VS-42CTQ030S-M3\n30V 2x20A D²PAK (TO-263AB) V_F=0.38V
$Comp
L CP C?
U 1 1 58924C20
P 3000 1600
F 0 "C?" H 3025 1700 50  0000 L CNN
F 1 "120µ" H 3025 1500 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 3038 1450 50  0001 C CNN
F 3 "" H 3000 1600 50  0000 C CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
Text Notes 5950 3850 0    39   ~ 0
Capacitors:\n1x + 4x Panasonic 35SVPF82M 35V 82µF 20mΩ, I_ripple=4A\nMouser #667-35SVPF82M
$Comp
L CP C?
U 1 1 58924E09
P 8600 2150
F 0 "C?" H 8625 2250 50  0000 L CNN
F 1 "120µ" H 8625 2050 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 8638 2000 50  0001 C CNN
F 3 "" H 8600 2150 50  0000 C CNN
	1    8600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2000 8600 1300
Connection ~ 8600 1300
Wire Wire Line
	8600 3450 8600 2300
Connection ~ 8250 3450
Text Notes 5950 2850 0    39   ~ 0
Vishay WSLP2726 2mΩ
$Comp
L Q_NMOS_GDS Q?
U 1 1 58928FBF
P 5800 2000
F 0 "Q?" H 6100 2050 50  0000 R CNN
F 1 "FDB86566" H 6350 1950 50  0000 R CNN
F 2 "Diodes_SMD:DD-PAK_TO263_DualDiode_ThermalVias" H 6000 2100 50  0001 C CNN
F 3 "" H 5800 2000 50  0000 C CNN
	1    5800 2000
	1    0    0    -1  
$EndComp
Text Notes 6150 1950 0    39   ~ 0
Fairchild FDB86566\n60V 110A 2.7mΩ\nQ_G=80nC  C_RSS=57pF
Text Label 5250 2100 0    39   ~ 0
V_SENSE
Text Label 6350 2400 0    39   ~ 0
FBX
Text Label 5400 2000 0    39   ~ 0
GATE
Text Label 4200 2750 0    39   ~ 0
V_c
Text Label 3700 2150 0    39   ~ 0
RT
Text Label 3900 2250 0    39   ~ 0
SS
Text Label 5800 1300 0    39   ~ 0
L_D_FET
$Comp
L D_Schottky_x2_KCom_AKA D?
U 1 1 58A9C328
P 6450 1300
F 0 "D?" V 6350 1150 50  0000 C CNN
F 1 "VS-42CTQ030S-M3" V 6100 1300 50  0000 C CNN
F 2 "Diodes_SMD:DD-PAK_TO263_DualDiode_ThermalVias" H 6450 1300 50  0001 C CNN
F 3 "" H 6450 1300 50  0000 C CNN
	1    6450 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1300 6250 1300
Wire Wire Line
	6250 1000 6250 1600
Wire Wire Line
	6250 1000 6450 1000
Wire Wire Line
	6250 1600 6450 1600
Connection ~ 6250 1300
Wire Wire Line
	6650 1300 8700 1300
Text Notes 3450 2350 1    39   ~ 0
Datasheet R4
Text Notes 2200 3800 1    49   ~ 0
UVLO lock-out is set by R3 and R4 (see datasheet p.8-9):\n1.22V * (100k ohm + 27k ohm)/27k ohm = 5.739V\n(Per cell: 1.22V * (100k ohm + 27k ohm)/27k ohm / 8cells = 0.773V/cell)\n-> R3 = 100k; R4 = 27k\n
Text Notes 3450 1800 1    39   ~ 0
Datasheet R3
$EndSCHEMATC
