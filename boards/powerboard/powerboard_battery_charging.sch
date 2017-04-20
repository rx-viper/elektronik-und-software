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
Sheet 5 11
Title "Powerboard Battery Charging"
Date "2017-03-15"
Rev "10"
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
F 2 "" H 5950 3550 60  0000 C CNN
F 3 "" H 5950 3550 60  0000 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P501
U 1 1 58C995E6
P 3800 3600
F 0 "P501" H 3800 3750 50  0000 C CNN
F 1 "10k NTC" V 3900 3600 50  0000 C CNN
F 2 "" H 3800 3600 50  0000 C CNN
F 3 "" H 3800 3600 50  0000 C CNN
	1    3800 3600
	-1   0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 58C99739
P 4150 3700
F 0 "C501" H 4175 3800 50  0000 L CNN
F 1 "68n" H 4175 3600 50  0000 L CNN
F 2 "" H 4188 3550 50  0000 C CNN
F 3 "" H 4150 3700 50  0000 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR502
U 1 1 58C99770
P 4050 3950
F 0 "#PWR502" H 4050 3700 50  0001 C CNN
F 1 "GND" H 4050 3800 50  0000 C CNN
F 2 "" H 4050 3950 50  0000 C CNN
F 3 "" H 4050 3950 50  0000 C CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3900 4150 3850
Wire Wire Line
	4000 3900 4150 3900
Wire Wire Line
	4050 3900 4050 3950
Wire Wire Line
	4000 3900 4000 3650
Connection ~ 4050 3900
Connection ~ 4150 3550
$Comp
L GND #PWR504
U 1 1 58C99B11
P 5300 4350
F 0 "#PWR504" H 5300 4100 50  0001 C CNN
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
F 2 "" V 5230 4100 50  0000 C CNN
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
Text HLabel 8300 4250 2    60   Input ~ 0
battery
$Comp
L Q_PMOS_GDS Q503
U 1 1 58C99FDF
P 7300 3250
F 0 "Q503" H 7600 3300 50  0000 R CNN
F 1 "P-FET" H 7750 3200 50  0000 R CNN
F 2 "" H 7500 3350 50  0000 C CNN
F 3 "" H 7300 3250 50  0000 C CNN
	1    7300 3250
	1    0    0    1   
$EndComp
$Comp
L Q_NMOS_GDS Q504
U 1 1 58C9A01A
P 7300 3750
F 0 "Q504" H 7600 3800 50  0000 R CNN
F 1 "N-FET" H 7750 3700 50  0000 R CNN
F 2 "" H 7500 3850 50  0000 C CNN
F 3 "" H 7300 3750 50  0000 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR507
U 1 1 58C9A175
P 6600 3450
F 0 "#PWR507" H 6600 3200 50  0001 C CNN
F 1 "GND" H 6600 3300 50  0000 C CNN
F 2 "" H 6600 3450 50  0000 C CNN
F 3 "" H 6600 3450 50  0000 C CNN
	1    6600 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3450 6500 3450
$Comp
L GND #PWR509
U 1 1 58C9A204
P 7400 4000
F 0 "#PWR509" H 7400 3750 50  0001 C CNN
F 1 "GND" H 7400 3850 50  0000 C CNN
F 2 "" H 7400 4000 50  0000 C CNN
F 3 "" H 7400 4000 50  0000 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L501
U 1 1 58C9A44D
P 7850 3500
F 0 "L501" H 7850 3600 50  0000 C CNN
F 1 "47µH" H 7850 3450 50  0000 C CNN
F 2 "" H 7850 3500 50  0000 C CNN
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
	7000 3550 7000 3750
Wire Wire Line
	7000 3750 7100 3750
Wire Wire Line
	7100 3250 7000 3250
Wire Wire Line
	7000 3250 7000 3350
Wire Wire Line
	7000 3350 6500 3350
$Comp
L R R507
U 1 1 58C9A5DA
P 8200 3850
F 0 "R507" V 8280 3850 50  0000 C CNN
F 1 "0.05" V 8200 3850 50  0000 C CNN
F 2 "" V 8130 3850 50  0000 C CNN
F 3 "" H 8200 3850 50  0000 C CNN
	1    8200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3500 8200 3500
Wire Wire Line
	8200 3500 8200 3700
Wire Wire Line
	6600 4250 8300 4250
Wire Wire Line
	6600 4250 6600 3750
Wire Wire Line
	6600 3750 6500 3750
Connection ~ 8200 4250
Wire Wire Line
	6500 3850 6500 4350
Wire Wire Line
	6500 4350 8050 4350
Wire Wire Line
	8050 4350 8050 3600
Wire Wire Line
	8050 3600 8200 3600
Wire Wire Line
	8200 4000 8200 4350
Connection ~ 8200 3600
Text Label 6500 4350 0    60   ~ 0
bat_sense
Text Label 6850 3550 0    60   ~ 0
bat_bgate
Text Label 6550 3350 0    60   ~ 0
bat_tgate
Text Label 7500 4250 0    60   ~ 0
bat_battery
Text HLabel 1750 2600 0    60   Input ~ 0
charge_power
Wire Wire Line
	6600 2600 6600 3250
Wire Wire Line
	6600 3250 6500 3250
$Comp
L GND #PWR508
U 1 1 58C9B0E7
P 6800 4000
F 0 "#PWR508" H 6800 3750 50  0001 C CNN
F 1 "GND" H 6800 3850 50  0000 C CNN
F 2 "" H 6800 4000 50  0000 C CNN
F 3 "" H 6800 4000 50  0000 C CNN
	1    6800 4000
	1    0    0    -1  
$EndComp
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
F 2 "" H 6838 3650 50  0000 C CNN
F 3 "" H 6800 3800 50  0000 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L CP C505
U 1 1 58C9B593
P 8200 4500
F 0 "C505" H 8225 4600 50  0000 L CNN
F 1 "10µ" H 8225 4400 50  0000 L CNN
F 2 "" H 8238 4350 50  0000 C CNN
F 3 "" H 8200 4500 50  0000 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR510
U 1 1 58C9B63D
P 8200 4750
F 0 "#PWR510" H 8200 4500 50  0001 C CNN
F 1 "GND" H 8200 4600 50  0000 C CNN
F 2 "" H 8200 4750 50  0000 C CNN
F 3 "" H 8200 4750 50  0000 C CNN
	1    8200 4750
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
F 2 "" H 5788 2200 50  0000 C CNN
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
F 2 "" V 4880 3750 50  0000 C CNN
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
F 2 "" H 4738 3850 50  0000 C CNN
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
L GND #PWR503
U 1 1 58C9CC60
P 4700 4250
F 0 "#PWR503" H 4700 4000 50  0001 C CNN
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
F 2 "" V 4430 4000 50  0000 C CNN
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
Charge current: 2A\nR_sense = 100mV / I_charge\n0.05 ohms = 100mV / 2A
$Comp
L GND #PWR506
U 1 1 58CF4775
P 6000 2400
F 0 "#PWR506" H 6000 2150 50  0001 C CNN
F 1 "GND" H 6000 2250 50  0000 C CNN
F 2 "" H 6000 2400 50  0000 C CNN
F 3 "" H 6000 2400 50  0000 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2400 6000 2350
Wire Wire Line
	6000 2350 5900 2350
Wire Wire Line
	5600 2350 5500 2350
Wire Wire Line
	5500 2350 5500 2600
Connection ~ 5500 2600
Wire Wire Line
	3450 2600 7400 2600
$Comp
L Q_PMOS_GDS Q502
U 1 1 58CF4C3B
P 3250 2700
F 0 "Q502" H 3550 2750 50  0000 R CNN
F 1 "P-FET" H 3700 2650 50  0000 R CNN
F 2 "" H 3450 2800 50  0000 C CNN
F 3 "" H 3250 2700 50  0000 C CNN
	1    3250 2700
	0    1    -1   0   
$EndComp
Wire Wire Line
	2500 2600 3050 2600
$Comp
L R R503
U 1 1 58CF537E
P 3000 2850
F 0 "R503" V 3080 2850 50  0000 C CNN
F 1 "10k" V 3000 2850 50  0000 C CNN
F 2 "" V 2930 2850 50  0000 C CNN
F 3 "" H 3000 2850 50  0000 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q501
U 1 1 58CF53DF
P 3150 3350
F 0 "Q501" H 3450 3400 50  0000 R CNN
F 1 "N-FET" H 3600 3300 50  0000 R CNN
F 2 "" H 3350 3450 50  0000 C CNN
F 3 "" H 3150 3350 50  0000 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
$Comp
L R R501
U 1 1 58CF5633
P 2700 3350
F 0 "R501" V 2780 3350 50  0000 C CNN
F 1 "1k" V 2700 3350 50  0000 C CNN
F 2 "" V 2630 3350 50  0000 C CNN
F 3 "" H 2700 3350 50  0000 C CNN
	1    2700 3350
	0    1    1    0   
$EndComp
$Comp
L R R502
U 1 1 58CF56A1
P 2900 3600
F 0 "R502" V 2980 3600 50  0000 C CNN
F 1 "10k" V 2900 3600 50  0000 C CNN
F 2 "" V 2830 3600 50  0000 C CNN
F 3 "" H 2900 3600 50  0000 C CNN
	1    2900 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 3350 2950 3350
Wire Wire Line
	2900 3450 2900 3350
Connection ~ 2900 3350
Wire Wire Line
	3000 2700 3000 2600
Connection ~ 3000 2600
Wire Wire Line
	3250 2900 3250 3150
Wire Wire Line
	3250 3050 3000 3050
Wire Wire Line
	3000 3050 3000 3000
Connection ~ 3250 3050
Wire Wire Line
	3250 3550 3250 3900
Wire Wire Line
	3250 3800 2900 3800
Wire Wire Line
	2900 3800 2900 3750
$Comp
L GND #PWR501
U 1 1 58CF5A6D
P 3250 3900
F 0 "#PWR501" H 3250 3650 50  0001 C CNN
F 1 "GND" H 3250 3750 50  0000 C CNN
F 2 "" H 3250 3900 50  0000 C CNN
F 3 "" H 3250 3900 50  0000 C CNN
	1    3250 3900
	1    0    0    -1  
$EndComp
Connection ~ 3250 3800
Text HLabel 2450 3350 0    39   Input ~ 0
charge_enable
Wire Wire Line
	2450 3350 2550 3350
Wire Wire Line
	4000 3550 5400 3550
$Comp
L GND #PWR505
U 1 1 58FD411A
P 5950 4250
F 0 "#PWR505" H 5950 4000 50  0001 C CNN
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
P 2350 2600
F 0 "D501" H 2350 2700 50  0000 C CNN
F 1 "Schottky 1A 50V" H 2350 2500 50  0000 C CNN
F 2 "" H 2350 2600 50  0001 C CNN
F 3 "" H 2350 2600 50  0001 C CNN
	1    2350 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 2600 1750 2600
$EndSCHEMATC
