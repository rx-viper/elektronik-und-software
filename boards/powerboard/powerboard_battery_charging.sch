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
Sheet 4 10
Title "Powerboard Battery Charging"
Date "2017-03-15"
Rev "20"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LTC4010 U501
U 1 1 58C99575
P 5950 3550
F 0 "U501" H 6200 3100 60  0000 C CNN
F 1 "LTC4010" H 5950 4100 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16-1EP_4.4x5mm_Pitch0.65mm" H 5950 3550 60  0001 C CNN
F 3 "" H 5950 3550 60  0000 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 58C99739
P 4100 3800
F 0 "C501" H 4125 3900 50  0000 L CNN
F 1 "68n" H 4125 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4138 3650 50  0001 C CNN
F 3 "" H 4100 3800 50  0000 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 58C99770
P 3950 4150
F 0 "#PWR052" H 3950 3900 50  0001 C CNN
F 1 "GND" H 3950 4000 50  0000 C CNN
F 2 "" H 3950 4150 50  0000 C CNN
F 3 "" H 3950 4150 50  0000 C CNN
	1    3950 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 58C99B11
P 5300 4350
F 0 "#PWR053" H 5300 4100 50  0001 C CNN
F 1 "GND" H 5300 4200 50  0000 C CNN
F 2 "" H 5300 4350 50  0000 C CNN
F 3 "" H 5300 4350 50  0000 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L R R506
U 1 1 58C99B3E
P 5300 4100
F 0 "R506" V 5380 4100 50  0000 C CNN
F 1 "50k" V 5300 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5230 4100 50  0001 C CNN
F 3 "" H 5300 4100 50  0000 C CNN
	1    5300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4350 5300 4250
Wire Wire Line
	5300 3950 5300 3850
Wire Wire Line
	5300 3850 5400 3850
Wire Wire Line
	5300 4300 5200 4300
Wire Wire Line
	5200 4300 5200 3350
Wire Wire Line
	5200 3350 5400 3350
Connection ~ 5300 4300
Wire Wire Line
	5400 3450 5200 3450
Connection ~ 5200 3450
Text HLabel 8900 4250 2    60   Input ~ 0
battery
Wire Wire Line
	6600 3450 6500 3450
$Comp
L INDUCTOR_SMALL L501
U 1 1 58C9A44D
P 7850 3500
F 0 "L501" H 7850 3450 50  0000 C CNN
F 1 "Coilcraft XAL6060-223" H 8150 3600 50  0000 C CNN
F 2 "L_Coilcraft:L_Coilcraft_XAL60xx_Handsoldering" H 7850 3500 50  0001 C CNN
F 3 "" H 7850 3500 50  0000 C CNN
	1    7850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3500 7400 3500
Wire Wire Line
	7400 3450 7400 3550
Connection ~ 7400 3500
Wire Wire Line
	7400 4000 7400 3950
Wire Wire Line
	6500 3550 7000 3550
Wire Wire Line
	7000 3550 7000 3800
Wire Wire Line
	7000 3200 7000 3350
Wire Wire Line
	7000 3350 6500 3350
$Comp
L R R507
U 1 1 58C9A5DA
P 8200 3850
F 0 "R507" V 8280 3850 50  0000 C CNN
F 1 "100m" V 8200 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" V 8130 3850 50  0001 C CNN
F 3 "" H 8200 3850 50  0000 C CNN
	1    8200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3500 8200 3500
Wire Wire Line
	8200 3500 8200 3700
Wire Wire Line
	6600 4250 8900 4250
Wire Wire Line
	6600 4250 6600 3750
Wire Wire Line
	6600 3750 6500 3750
Connection ~ 8200 4250
Wire Wire Line
	6500 3850 6500 4700
Wire Wire Line
	8050 3600 8050 4700
Wire Wire Line
	8050 3600 8200 3600
Wire Wire Line
	8200 4000 8200 4350
Connection ~ 8200 3600
Text Label 6500 4350 1    60   ~ 0
bat_sense
Text Label 6850 3550 0    60   ~ 0
bat_bgate
Text Label 6550 3350 0    60   ~ 0
bat_tgate
Text Label 7500 4250 0    60   ~ 0
bat_battery
Text HLabel 2700 2600 0    60   Input ~ 0
charge_power
Wire Wire Line
	6600 2600 6600 3250
Wire Wire Line
	6600 3250 6500 3250
Wire Wire Line
	6800 4000 6800 3950
Wire Wire Line
	6800 3650 6500 3650
$Comp
L C C504
U 1 1 58C9B1B6
P 6800 3800
F 0 "C504" H 6825 3900 50  0000 L CNN
F 1 "100n" H 6825 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6838 3650 50  0001 C CNN
F 3 "" H 6800 3800 50  0000 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4750 8200 4650
Text HLabel 5100 3250 0    60   Input ~ 0
charge_status
Wire Wire Line
	5100 3250 5400 3250
$Comp
L CP C503
U 1 1 58C9C4F4
P 5750 2350
F 0 "C503" H 5775 2450 50  0000 L CNN
F 1 "10µ" H 5775 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5788 2200 50  0001 C CNN
F 3 "" H 5750 2350 50  0000 C CNN
	1    5750 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R505
U 1 1 58C9CAC3
P 4950 3750
F 0 "R505" V 5030 3750 50  0000 C CNN
F 1 "10k" V 4950 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4880 3750 50  0001 C CNN
F 3 "" H 4950 3750 50  0000 C CNN
	1    4950 3750
	0    1    1    0   
$EndComp
$Comp
L C C502
U 1 1 58C9CB16
P 4700 4000
F 0 "C502" H 4725 4100 50  0000 L CNN
F 1 "33n" H 4725 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4738 3850 50  0001 C CNN
F 3 "" H 4700 4000 50  0000 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3750 5400 3750
Wire Wire Line
	5400 3650 4700 3650
Wire Wire Line
	4700 3650 4700 3850
Wire Wire Line
	4500 3750 4800 3750
Connection ~ 4700 3750
$Comp
L GND #PWR054
U 1 1 58C9CC60
P 4700 4250
F 0 "#PWR054" H 4700 4000 50  0001 C CNN
F 1 "GND" H 4700 4100 50  0000 C CNN
F 2 "" H 4700 4250 50  0000 C CNN
F 3 "" H 4700 4250 50  0000 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4250 4700 4150
$Comp
L R R504
U 1 1 58C9CCE4
P 4500 4000
F 0 "R504" V 4580 4000 50  0000 C CNN
F 1 "10k" V 4500 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4430 4000 50  0001 C CNN
F 3 "" H 4500 4000 50  0000 C CNN
	1    4500 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 3750 4500 3850
Wire Wire Line
	4500 4150 4500 4800
Wire Wire Line
	4500 4800 7150 4800
Wire Wire Line
	7150 4800 7150 4250
Connection ~ 7150 4250
NoConn ~ 6500 3150
NoConn ~ 5400 3150
Wire Wire Line
	7400 2600 7400 3050
Connection ~ 6600 2600
Text Notes 8500 3950 0    49   ~ 0
Charge current: 2A\nR_sense = 100mV / I_charge\n0.1 ohms = 100mV / 1A
$Comp
L GND #PWR055
U 1 1 58CF4775
P 6000 2400
F 0 "#PWR055" H 6000 2150 50  0001 C CNN
F 1 "GND" H 6000 2250 50  0000 C CNN
F 2 "" H 6000 2400 50  0000 C CNN
F 3 "" H 6000 2400 50  0000 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2000 6000 2400
Wire Wire Line
	6000 2350 5900 2350
Wire Wire Line
	5600 2350 5500 2350
Wire Wire Line
	5500 2000 5500 2600
Connection ~ 5500 2600
Wire Wire Line
	3450 2600 7400 2600
Text HLabel 3700 3550 0    59   Input ~ 0
charge_enable
$Comp
L GND #PWR057
U 1 1 58FD411A
P 5950 4250
F 0 "#PWR057" H 5950 4000 50  0001 C CNN
F 1 "GND" H 5950 4100 50  0000 C CNN
F 2 "" H 5950 4250 50  0000 C CNN
F 3 "" H 5950 4250 50  0000 C CNN
	1    5950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4250 5950 4150
$Comp
L D_Schottky D501
U 1 1 58FD4C3D
P 3300 2600
F 0 "D501" H 3300 2700 50  0000 C CNN
F 1 "MBRS360BT3G" H 3300 2500 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB_Handsoldering" H 3300 2600 50  0001 C CNN
F 3 "" H 3300 2600 50  0001 C CNN
	1    3300 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2600 2700 2600
$Comp
L IRF7343PBF Q503
U 1 1 59433B06
P 7300 3750
F 0 "Q503" H 7550 3825 50  0000 L CNN
F 1 "IRF7343PBF" H 7550 3750 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7550 3675 50  0001 L CNN
F 3 "" H 7300 3750 50  0001 L CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
$Comp
L IRF7343PBF Q503
U 2 1 59433B99
P 7300 3250
F 0 "Q503" V 7300 2850 50  0000 L CNN
F 1 "IRF7343PBF" V 7200 2650 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7550 3175 50  0001 L CNN
F 3 "" H 7300 3250 50  0001 L CNN
	2    7300 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	7000 3200 7100 3200
Wire Wire Line
	7500 3450 7500 3550
Connection ~ 7500 3500
Wire Wire Line
	7000 3800 7100 3800
Text Notes 8150 3350 0    60   ~ 0
22µH
Text Label 7600 3500 1    60   ~ 0
bat_inductor
Wire Wire Line
	3700 3550 5400 3550
Wire Wire Line
	3800 3950 3800 4050
Wire Wire Line
	3800 4050 4100 4050
Wire Wire Line
	4100 4050 4100 3950
Wire Wire Line
	3950 4150 3950 4050
Connection ~ 3950 4050
Wire Wire Line
	4100 3650 4100 3550
Connection ~ 4100 3550
Wire Wire Line
	3800 3650 3800 3550
Connection ~ 3800 3550
$Comp
L R R508
U 1 1 5A1446F4
P 3800 3800
F 0 "R508" V 3880 3800 50  0000 C CNN
F 1 "10k" V 3800 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3730 3800 50  0001 C CNN
F 3 "" H 3800 3800 50  0000 C CNN
	1    3800 3800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A144E32
P 8200 4750
F 0 "#PWR?" H 8200 4500 50  0001 C CNN
F 1 "GND" H 8200 4600 50  0000 C CNN
F 2 "" H 8200 4750 50  0000 C CNN
F 3 "" H 8200 4750 50  0000 C CNN
	1    8200 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A144E6A
P 7400 4000
F 0 "#PWR?" H 7400 3750 50  0001 C CNN
F 1 "GND" H 7400 3850 50  0000 C CNN
F 2 "" H 7400 4000 50  0000 C CNN
F 3 "" H 7400 4000 50  0000 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A144EA2
P 6800 4000
F 0 "#PWR?" H 6800 3750 50  0001 C CNN
F 1 "GND" H 6800 3850 50  0000 C CNN
F 2 "" H 6800 4000 50  0000 C CNN
F 3 "" H 6800 4000 50  0000 C CNN
	1    6800 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A14A095
P 6600 3450
F 0 "#PWR?" H 6600 3200 50  0001 C CNN
F 1 "GND" H 6600 3300 50  0000 C CNN
F 2 "" H 6600 3450 50  0000 C CNN
F 3 "" H 6600 3450 50  0000 C CNN
	1    6600 3450
	0    -1   -1   0   
$EndComp
$Comp
L C C506
U 1 1 5A162346
P 8600 4500
F 0 "C506" H 8625 4600 50  0000 L CNN
F 1 "100n" H 8625 4400 50  0000 L CNN
F 2 "" H 8638 4350 50  0001 C CNN
F 3 "" H 8600 4500 50  0001 C CNN
	1    8600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4250 8600 4350
Connection ~ 8600 4250
$Comp
L GND #PWR?
U 1 1 5A162449
P 8600 4750
F 0 "#PWR?" H 8600 4500 50  0001 C CNN
F 1 "GND" H 8600 4600 50  0000 C CNN
F 2 "" H 8600 4750 50  0000 C CNN
F 3 "" H 8600 4750 50  0000 C CNN
	1    8600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4750 8600 4650
Wire Wire Line
	8050 4700 6500 4700
$Comp
L C C507
U 1 1 5A163209
P 6700 4450
F 0 "C507" H 6725 4550 50  0000 L CNN
F 1 "470n" H 6725 4350 50  0000 L CNN
F 2 "" H 6738 4300 50  0001 C CNN
F 3 "" H 6700 4450 50  0001 C CNN
	1    6700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4300 6700 4250
Connection ~ 6700 4250
Wire Wire Line
	6700 4600 6700 4700
Connection ~ 6700 4700
$Comp
L C C508
U 1 1 5A163915
P 5750 2000
F 0 "C508" H 5775 2100 50  0000 L CNN
F 1 "220n" H 5775 1900 50  0000 L CNN
F 2 "" H 5788 1850 50  0001 C CNN
F 3 "" H 5750 2000 50  0001 C CNN
	1    5750 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 2000 5500 2000
Connection ~ 5500 2350
Connection ~ 6000 2350
Wire Wire Line
	6000 2000 5900 2000
$Comp
L C C505
U 1 1 5A15E124
P 8200 4500
F 0 "C505" H 8225 4600 50  0000 L CNN
F 1 "10µ" H 8225 4400 50  0000 L CNN
F 2 "" H 8238 4350 50  0001 C CNN
F 3 "" H 8200 4500 50  0001 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
