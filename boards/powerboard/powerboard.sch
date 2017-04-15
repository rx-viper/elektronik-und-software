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
Sheet 1 10
Title "Powerboard overview"
Date "2017-03-14"
Rev "02"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1900 1100 1350 400 
U 5886B9BC
F0 "Powerboard Regulator 28V to 5V" 60
F1 "powerboard_regulator_28V-to-5V.sch" 60
F2 "RXSM_28V_IN" I L 1900 1200 60 
F3 "5V_3A_OUT" I R 3250 1300 60 
F4 "GND" I L 1900 1400 60 
$EndSheet
$Comp
L GND #PWR?
U 1 1 5886D3D2
P 1800 1700
F 0 "#PWR?" H 1800 1450 50  0001 C CNN
F 1 "GND" H 1800 1550 50  0000 C CNN
F 2 "" H 1800 1700 50  0000 C CNN
F 3 "" H 1800 1700 50  0000 C CNN
	1    1800 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5886D3FA
P 650 1250
F 0 "P?" H 650 1400 50  0000 C CNN
F 1 "RXSM_POWER" V 750 1250 50  0000 C CNN
F 2 "" H 650 1250 50  0000 C CNN
F 3 "" H 650 1250 50  0000 C CNN
	1    650  1250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5886EA99
P 650 3050
F 0 "P?" H 650 3200 50  0000 C CNN
F 1 "Battery" V 750 3050 50  0000 C CNN
F 2 "" H 650 3050 50  0000 C CNN
F 3 "" H 650 3050 50  0000 C CNN
	1    650  3050
	-1   0    0    1   
$EndComp
$Sheet
S 2250 2900 1500 400 
U 5886F238
F0 "Powerboard Stepup 24V" 60
F1 "powerboard_stepup_24V.sch" 60
F2 "Bat_IN" I L 2250 3000 60 
F3 "24V_OUT" I R 3750 3000 60 
F4 "Enable" I L 2250 3200 60 
$EndSheet
$Comp
L +5V #PWR?
U 1 1 5886FF1B
P 3850 1300
F 0 "#PWR?" H 3850 1150 50  0001 C CNN
F 1 "+5V" H 3850 1440 50  0000 C CNN
F 2 "" H 3850 1300 50  0000 C CNN
F 3 "" H 3850 1300 50  0000 C CNN
	1    3850 1300
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5886FFE8
P 5200 1250
F 0 "P?" H 5200 1400 50  0000 C CNN
F 1 "Mainboard power" V 5300 1250 50  0000 C CNN
F 2 "" H 5200 1250 50  0000 C CNN
F 3 "" H 5200 1250 50  0000 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58870236
P 4900 1400
F 0 "#PWR?" H 4900 1150 50  0001 C CNN
F 1 "GND" H 4900 1250 50  0000 C CNN
F 2 "" H 4900 1400 50  0000 C CNN
F 3 "" H 4900 1400 50  0000 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58870283
P 4800 1200
F 0 "#PWR?" H 4800 1050 50  0001 C CNN
F 1 "+5V" H 4800 1340 50  0000 C CNN
F 2 "" H 4800 1200 50  0000 C CNN
F 3 "" H 4800 1200 50  0000 C CNN
	1    4800 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58871E64
P 1350 4150
F 0 "#PWR?" H 1350 3900 50  0001 C CNN
F 1 "GND" H 1350 4000 50  0000 C CNN
F 2 "" H 1350 4150 50  0000 C CNN
F 3 "" H 1350 4150 50  0000 C CNN
	1    1350 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5887310D
P 10100 1500
F 0 "#PWR?" H 10100 1350 50  0001 C CNN
F 1 "+5V" H 10100 1640 50  0000 C CNN
F 2 "" H 10100 1500 50  0000 C CNN
F 3 "" H 10100 1500 50  0000 C CNN
	1    10100 1500
	0    -1   -1   0   
$EndComp
Text Label 1300 1150 0    60   ~ 0
RXSM_28V
Text Label 1850 3000 0    60   ~ 0
BAT_10V
$Comp
L Q_NMOS_GSD Q?
U 1 1 5887C68D
P 9150 1250
F 0 "Q?" V 9050 1450 50  0000 R CNN
F 1 "N-MOS" V 9150 1650 50  0000 R CNN
F 2 "" H 9350 1350 50  0000 C CNN
F 3 "" H 9150 1250 50  0000 C CNN
	1    9150 1250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5887C966
P 8750 1350
F 0 "#PWR?" H 8750 1100 50  0001 C CNN
F 1 "GND" H 8750 1200 50  0000 C CNN
F 2 "" H 8750 1350 50  0000 C CNN
F 3 "" H 8750 1350 50  0000 C CNN
	1    8750 1350
	0    1    1    0   
$EndComp
Text Label 9600 1900 0    60   ~ 0
RXSM_28V
Text Label 7750 950  0    60   ~ 0
Lens_Heat_EN
Text Label 2300 5750 2    60   ~ 0
Lens_Heat_EN
Text Label 2300 6050 2    60   ~ 0
Probe3_EN
Text Label 2300 5950 2    60   ~ 0
Probe2_EN
Text Label 2300 5850 2    60   ~ 0
Probe1_EN
Text Label 2300 6150 2    60   ~ 0
Motor1_EN
Text Label 2300 6250 2    60   ~ 0
Motor1_DIR
Text Label 2300 6350 2    60   ~ 0
Motor1_PWM
Text Label 2300 6950 2    60   ~ 0
RXSM_28V_sense
Text Label 2800 6000 3    60   ~ 0
RXSM_28V
$Comp
L R R?
U 1 1 58886833
P 2800 6750
F 0 "R?" V 2880 6750 50  0000 C CNN
F 1 "19k" V 2800 6750 50  0000 C CNN
F 2 "" V 2730 6750 50  0000 C CNN
F 3 "" H 2800 6750 50  0000 C CNN
	1    2800 6750
	-1   0    0    1   
$EndComp
Text Label 7200 1850 0    60   ~ 0
Cam_Light_EN
Text Label 2300 5650 2    60   ~ 0
Cam_Light_EN
$Comp
L GND #PWR?
U 1 1 5888A7FE
P 8300 3050
F 0 "#PWR?" H 8300 2800 50  0001 C CNN
F 1 "GND" H 8300 2900 50  0000 C CNN
F 2 "" H 8300 3050 50  0000 C CNN
F 3 "" H 8300 3050 50  0000 C CNN
	1    8300 3050
	1    0    0    -1  
$EndComp
Text Label 7800 3300 0    60   ~ 0
Motor1_EN
Text Label 7800 3400 0    60   ~ 0
Motor1_DIR
Text Label 7800 3500 0    60   ~ 0
Motor1_PWM
$Comp
L CONN_01X02 P?
U 1 1 5888CFEB
P 10850 3200
F 0 "P?" H 10850 3350 50  0000 C CNN
F 1 "Motor1" V 10950 3200 50  0000 C CNN
F 2 "" H 10850 3200 50  0000 C CNN
F 3 "" H 10850 3200 50  0000 C CNN
	1    10850 3200
	1    0    0    -1  
$EndComp
Text Label 6450 2900 0    60   ~ 0
RXSM_28V
$Comp
L GND #PWR?
U 1 1 5888E6D4
P 2300 7150
F 0 "#PWR?" H 2300 6900 50  0001 C CNN
F 1 "GND" H 2300 7000 50  0000 C CNN
F 2 "" H 2300 7150 50  0000 C CNN
F 3 "" H 2300 7150 50  0000 C CNN
	1    2300 7150
	1    0    0    -1  
$EndComp
$Sheet
S 8450 2800 1900 900 
U 588899D1
F0 "Powerboard Motor Controller" 60
F1 "powerboard_motor_controller.sch" 60
F2 "V_IN" I L 8450 2900 60 
F3 "Enable" I L 8450 3300 60 
F4 "Direction" I L 8450 3400 60 
F5 "Pwm" I L 8450 3500 60 
F6 "GND" I L 8450 3000 60 
F7 "Motor+" I R 10350 3150 60 
F8 "Motor-" I R 10350 3250 60 
F9 "Current_measure" I L 8450 3600 59 
$EndSheet
Text Label 7800 3600 0    60   ~ 0
Motor1_Current
Text Label 2300 6450 2    60   ~ 0
Motor1_Current
$Comp
L LM1117-3.3 U?
U 1 1 588B332C
P 8650 5650
F 0 "U?" H 8750 5400 50  0000 C CNN
F 1 "LM1117-3.3" H 8650 5900 50  0000 C CNN
F 2 "" H 8650 5650 50  0000 C CNN
F 3 "" H 8650 5650 50  0000 C CNN
	1    8650 5650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588B4592
P 8250 5900
F 0 "C?" H 8275 6000 50  0000 L CNN
F 1 "100n" H 8275 5800 50  0000 L CNN
F 2 "" H 8288 5750 50  0000 C CNN
F 3 "" H 8250 5900 50  0000 C CNN
	1    8250 5900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588B4816
P 9050 5900
F 0 "C?" H 9075 6000 50  0000 L CNN
F 1 "100n" H 9075 5800 50  0000 L CNN
F 2 "" H 9088 5750 50  0000 C CNN
F 3 "" H 9050 5900 50  0000 C CNN
	1    9050 5900
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588B4932
P 9300 5900
F 0 "C?" H 9325 6000 50  0000 L CNN
F 1 "10µ" H 9325 5800 50  0000 L CNN
F 2 "" H 9338 5750 50  0000 C CNN
F 3 "" H 9300 5900 50  0000 C CNN
	1    9300 5900
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588B4A5C
P 8000 5900
F 0 "C?" H 8025 6000 50  0000 L CNN
F 1 "10µ" H 8025 5800 50  0000 L CNN
F 2 "" H 8038 5750 50  0000 C CNN
F 3 "" H 8000 5900 50  0000 C CNN
	1    8000 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588B4F5A
P 8650 6250
F 0 "#PWR?" H 8650 6000 50  0001 C CNN
F 1 "GND" H 8650 6100 50  0000 C CNN
F 2 "" H 8650 6250 50  0000 C CNN
F 3 "" H 8650 6250 50  0000 C CNN
	1    8650 6250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588B59D2
P 7900 5650
F 0 "#PWR?" H 7900 5500 50  0001 C CNN
F 1 "+5V" H 7900 5790 50  0000 C CNN
F 2 "" H 7900 5650 50  0000 C CNN
F 3 "" H 7900 5650 50  0000 C CNN
	1    7900 5650
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588B5CD1
P 9400 5650
F 0 "#PWR?" H 9400 5500 50  0001 C CNN
F 1 "+3V3" H 9400 5790 50  0000 C CNN
F 2 "" H 9400 5650 50  0000 C CNN
F 3 "" H 9400 5650 50  0000 C CNN
	1    9400 5650
	0    1    1    0   
$EndComp
Text Label 2300 5550 2    60   ~ 0
Probe3_Current
Text Label 2300 5450 2    60   ~ 0
Probe2_Current
Text Label 2300 5350 2    60   ~ 0
Probe1_Current
Text Label 2300 5250 2    60   ~ 0
Probe3
Text Label 2300 5150 2    60   ~ 0
Probe2
Text Label 2300 5050 2    60   ~ 0
Probe1
$Comp
L INDUCTOR_SMALL L?
U 1 1 588AFDA8
P 7200 2900
F 0 "L?" H 7200 3000 50  0000 C CNN
F 1 "10µH" H 7200 2850 50  0000 C CNN
F 2 "" H 7200 2900 50  0000 C CNN
F 3 "" H 7200 2900 50  0000 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588B171D
P 7550 3150
F 0 "C?" H 7575 3250 50  0000 L CNN
F 1 "10µ" H 7575 3050 50  0000 L CNN
F 2 "" H 7588 3000 50  0000 C CNN
F 3 "" H 7550 3150 50  0000 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588B1908
P 7200 3500
F 0 "#PWR?" H 7200 3250 50  0001 C CNN
F 1 "GND" H 7200 3350 50  0000 C CNN
F 2 "" H 7200 3500 50  0000 C CNN
F 3 "" H 7200 3500 50  0000 C CNN
	1    7200 3500
	1    0    0    -1  
$EndComp
Text Notes 7000 2750 0    49   ~ 0
PI filter\nf_g = ~~15kHz
$Comp
L CONN_01X22 P?
U 1 1 5892C225
P 1150 6100
F 0 "P?" H 1150 7250 50  0000 C CNN
F 1 "Mainboard control" V 1250 6100 50  0000 C CNN
F 2 "" H 1150 6100 50  0000 C CNN
F 3 "" H 1150 6100 50  0000 C CNN
	1    1150 6100
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5892D60F
P 2800 7350
F 0 "R?" V 2880 7350 50  0000 C CNN
F 1 "1k" V 2800 7350 50  0000 C CNN
F 2 "" V 2730 7350 50  0000 C CNN
F 3 "" H 2800 7350 50  0000 C CNN
	1    2800 7350
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5892D73D
P 3050 6750
F 0 "R?" V 3130 6750 50  0000 C CNN
F 1 "72k" V 3050 6750 50  0000 C CNN
F 2 "" V 2980 6750 50  0000 C CNN
F 3 "" H 3050 6750 50  0000 C CNN
	1    3050 6750
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5892D862
P 3050 7350
F 0 "R?" V 3130 7350 50  0000 C CNN
F 1 "8k" V 3050 7350 50  0000 C CNN
F 2 "" V 2980 7350 50  0000 C CNN
F 3 "" H 3050 7350 50  0000 C CNN
	1    3050 7350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5892DBC0
P 2800 7600
F 0 "#PWR?" H 2800 7350 50  0001 C CNN
F 1 "GND" H 2800 7450 50  0000 C CNN
F 2 "" H 2800 7600 50  0000 C CNN
F 3 "" H 2800 7600 50  0000 C CNN
	1    2800 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5892DCD9
P 3050 7600
F 0 "#PWR?" H 3050 7350 50  0001 C CNN
F 1 "GND" H 3050 7450 50  0000 C CNN
F 2 "" H 3050 7600 50  0000 C CNN
F 3 "" H 3050 7600 50  0000 C CNN
	1    3050 7600
	1    0    0    -1  
$EndComp
Text Label 2300 7050 2    60   ~ 0
Batt_sense
$Comp
L LED-RESCUE-powerboard D?
U 1 1 58932CCC
P 3300 7300
F 0 "D?" H 3300 7400 50  0000 C CNN
F 1 "blue" H 3300 7200 50  0000 C CNN
F 2 "" H 3300 7300 50  0000 C CNN
F 3 "" H 3300 7300 50  0000 C CNN
	1    3300 7300
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-powerboard D?
U 1 1 58932DFA
P 3600 7300
F 0 "D?" H 3600 7400 50  0000 C CNN
F 1 "blue" H 3600 7200 50  0000 C CNN
F 2 "" H 3600 7300 50  0000 C CNN
F 3 "" H 3600 7300 50  0000 C CNN
	1    3600 7300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 589332FA
P 3300 7600
F 0 "#PWR?" H 3300 7350 50  0001 C CNN
F 1 "GND" H 3300 7450 50  0000 C CNN
F 2 "" H 3300 7600 50  0000 C CNN
F 3 "" H 3300 7600 50  0000 C CNN
	1    3300 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58933917
P 3600 7600
F 0 "#PWR?" H 3600 7350 50  0001 C CNN
F 1 "GND" H 3600 7450 50  0000 C CNN
F 2 "" H 3600 7600 50  0000 C CNN
F 3 "" H 3600 7600 50  0000 C CNN
	1    3600 7600
	1    0    0    -1  
$EndComp
Text Notes 3200 6850 0    60   ~ 0
Blue LEDs:\nADC input protection
$Comp
L Q_NMOS_GDS Q?
U 1 1 58C8B900
P 1250 3650
F 0 "Q?" H 1550 3700 50  0000 R CNN
F 1 "N-FET" H 1700 3600 50  0000 R CNN
F 2 "" H 1450 3750 50  0000 C CNN
F 3 "" H 1250 3650 50  0000 C CNN
	1    1250 3650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C8BC13
P 950 3900
F 0 "R?" V 1030 3900 50  0000 C CNN
F 1 "10k" V 950 3900 50  0000 C CNN
F 2 "" V 880 3900 50  0000 C CNN
F 3 "" H 950 3900 50  0000 C CNN
	1    950  3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C8BE20
P 700 3650
F 0 "R?" V 780 3650 50  0000 C CNN
F 1 "10k" V 700 3650 50  0000 C CNN
F 2 "" V 630 3650 50  0000 C CNN
F 3 "" H 700 3650 50  0000 C CNN
	1    700  3650
	0    1    1    0   
$EndComp
Text Label 600  4300 1    60   ~ 0
RXSM_28V
Text Notes 1450 3500 0    60   ~ 0
Battery\ncut off
Text Label 3850 3000 0    60   ~ 0
24V_BAT
$Comp
L CMC FL?
U 1 1 58C8D036
P 1100 1250
F 0 "FL?" H 1100 1405 60  0000 C CNB
F 1 "10µH 1.5A" H 1050 1100 45  0000 C CNN
F 2 "" H 1100 1025 40  0001 C CNN
F 3 "" H 1100 1400 60  0000 C CNN
F 4 "-" H 1100 1485 45  0001 C CNN "PART"
F 5 "Passive" H 1330 1540 50  0001 C CNN "Family"
	1    1100 1250
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 58C8D570
P 1450 1350
F 0 "C?" H 1475 1450 50  0000 L CNN
F 1 "47µ" H 1475 1250 50  0000 L CNN
F 2 "" H 1488 1200 50  0000 C CNN
F 3 "" H 1450 1350 50  0000 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
Text Notes 900  1000 0    49   ~ 0
Max. input capacity on \nRXSM 28V: 100µF\n\nDon't assemble input \ncapacitors >1µF in voltage \nregulator sub-schematics!
$Comp
L CP C?
U 1 1 58CAB676
P 6850 3150
F 0 "C?" H 6875 3250 50  0000 L CNN
F 1 "1µ" H 6875 3050 50  0000 L CNN
F 2 "" H 6888 3000 50  0000 C CNN
F 3 "" H 6850 3150 50  0000 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
NoConn ~ 2300 6850
$Comp
L CONN_01X02 P?
U 1 1 58C977C5
P 650 2250
F 0 "P?" H 650 2400 50  0000 C CNN
F 1 "RXSM_Charge" V 750 2250 50  0000 C CNN
F 2 "" H 650 2250 50  0000 C CNN
F 3 "" H 650 2250 50  0000 C CNN
	1    650  2250
	-1   0    0    1   
$EndComp
$Comp
L CMC FL?
U 1 1 58C97BBF
P 1050 2250
F 0 "FL?" H 1050 2405 60  0000 C CNB
F 1 "10µH 1A" H 1000 2100 45  0000 C CNN
F 2 "" H 1050 2025 40  0001 C CNN
F 3 "" H 1050 2400 60  0000 C CNN
F 4 "-" H 1050 2485 45  0001 C CNN "PART"
F 5 "Passive" H 1280 2540 50  0001 C CNN "Family"
	1    1050 2250
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 58C97CE9
P 1300 2250
F 0 "C?" H 1325 2350 50  0000 L CNN
F 1 "10µ" H 1325 2150 50  0000 L CNN
F 2 "" H 1338 2100 50  0000 C CNN
F 3 "" H 1300 2250 50  0000 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
$Sheet
S 1850 2100 1500 400 
U 58C99165
F0 "Powerboard Battery Charging" 60
F1 "powerboard_battery_charging.sch" 60
F2 "battery" I L 1850 2400 60 
F3 "charge_power" I L 1850 2200 60 
F4 "charge_status" I R 3350 2200 60 
F5 "charge_enable" I R 3350 2400 60 
$EndSheet
$Comp
L GND #PWR?
U 1 1 58CA05ED
P 1200 2500
F 0 "#PWR?" H 1200 2250 50  0001 C CNN
F 1 "GND" H 1200 2350 50  0000 C CNN
F 2 "" H 1200 2500 50  0000 C CNN
F 3 "" H 1200 2500 50  0000 C CNN
	1    1200 2500
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDS Q?
U 1 1 58CA6DDD
P 1250 3100
F 0 "Q?" H 1550 3150 50  0000 R CNN
F 1 "P-FET" V 1200 3450 50  0000 R CNN
F 2 "" H 1450 3200 50  0000 C CNN
F 3 "" H 1250 3100 50  0000 C CNN
	1    1250 3100
	0    1    -1   0   
$EndComp
$Comp
L R R?
U 1 1 58CAB3E4
P 1000 3250
F 0 "R?" V 1080 3250 50  0000 C CNN
F 1 "10k" V 1000 3250 50  0000 C CNN
F 2 "" V 930 3250 50  0000 C CNN
F 3 "" H 1000 3250 50  0000 C CNN
	1    1000 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58CABA0F
P 850 3200
F 0 "#PWR?" H 850 2950 50  0001 C CNN
F 1 "GND" H 850 3050 50  0000 C CNN
F 2 "" H 850 3200 50  0000 C CNN
F 3 "" H 850 3200 50  0000 C CNN
	1    850  3200
	1    0    0    -1  
$EndComp
Text Label 4050 2200 2    60   ~ 0
Charge_status
Text Label 2300 6550 2    60   ~ 0
Charge_status
Text Label 1700 2750 2    47   ~ 0
BAT_raw
Text Label 3050 6000 3    59   ~ 0
BAT_raw
Text Label 2150 3800 1    60   ~ 0
Boost24V_EN
Text Label 2300 6650 2    60   ~ 0
Boost24V_EN
Text Label 4050 2400 2    60   ~ 0
Charge_EN
Text Label 2300 6750 2    60   ~ 0
Charge_EN
$Sheet
S 4800 6500 1150 500 
U 590A1435
F0 "RXSM_Event_Lines" 60
F1 "rxsm-event-lines.sch" 60
F2 "LO" O L 4800 6650 60 
F3 "SOE" O L 4800 6750 60 
F4 "SODS" O L 4800 6850 60 
F5 "RXSM_28V" I R 5950 6600 60 
F6 "RXSM_LO" I R 5950 6700 60 
F7 "RXSM_SOE" I R 5950 6800 60 
F8 "RXSM_SODS" I R 5950 6900 60 
$EndSheet
$Sheet
S 4800 7200 1150 500 
U 58F29A50
F0 "RXSM_RS422" 60
F1 "rxsm-rs422.sch" 60
F2 "TX" I L 4800 7400 60 
F3 "RX" O L 4800 7500 60 
F4 "A" B R 5950 7300 60 
F5 "~B" B R 5950 7400 60 
F6 "Y" B R 5950 7500 60 
F7 "~Z" B R 5950 7600 60 
$EndSheet
Text Label 6550 6600 2    60   ~ 0
RXSM_28V
Text Label 6550 6700 2    60   ~ 0
RXSM_LO
Text Label 6550 6800 2    60   ~ 0
RXSM_SOE
Text Label 6550 6900 2    60   ~ 0
RXSM_SODS
Text Label 6550 7300 2    60   ~ 0
RXSM_RX_A
Text Label 6550 7400 2    60   ~ 0
RXSM_RX_~B
Text Label 6550 7500 2    60   ~ 0
RXSM_RX_Y
Text Label 6550 7600 2    60   ~ 0
RXSM_RX_~Z
$Sheet
S 3350 3850 1500 600 
U 58F4FF70
F0 "Powerboard_Heat_Probes" 60
F1 "heat-probes.sch" 60
F2 "Probe1_EN" I L 3350 4150 60 
F3 "Probe2_EN" I L 3350 4250 60 
F4 "Probe3_EN" I L 3350 4350 60 
F5 "24V_BAT" I L 3350 3950 60 
F6 "Probe1_Current" O R 4850 4050 60 
F7 "Probe2_Current" O R 4850 4150 60 
F8 "Probe3_Current" O R 4850 4250 60 
$EndSheet
Wire Wire Line
	3850 1300 3250 1300
Wire Wire Line
	4800 1200 5000 1200
Wire Wire Line
	4900 1400 4900 1300
Wire Wire Line
	4900 1300 5000 1300
Wire Wire Line
	10100 1500 10300 1500
Wire Wire Line
	9600 1900 10300 1900
Wire Wire Line
	8750 1350 8950 1350
Wire Wire Line
	7750 950  8400 950 
Wire Wire Line
	1350 6950 3300 6950
Wire Wire Line
	2800 6600 2800 6000
Wire Wire Line
	7200 1850 7900 1850
Wire Wire Line
	8450 3000 8300 3000
Wire Wire Line
	8300 3000 8300 3050
Wire Wire Line
	7800 3300 8450 3300
Wire Wire Line
	8450 3400 7800 3400
Wire Wire Line
	7800 3500 8450 3500
Wire Wire Line
	10650 3150 10350 3150
Wire Wire Line
	10350 3250 10650 3250
Wire Wire Line
	1350 7150 2300 7150
Wire Wire Line
	1350 6750 2300 6750
Wire Wire Line
	2300 6650 1350 6650
Wire Wire Line
	1350 6550 2300 6550
Wire Wire Line
	2300 6350 1350 6350
Wire Wire Line
	1350 6250 2300 6250
Wire Wire Line
	2300 6150 1350 6150
Wire Wire Line
	1350 6050 2300 6050
Wire Wire Line
	2300 5950 1350 5950
Wire Wire Line
	1350 5850 2300 5850
Wire Wire Line
	2300 5750 1350 5750
Wire Wire Line
	1350 5650 2300 5650
Wire Wire Line
	8450 3600 7800 3600
Wire Wire Line
	2300 6850 1350 6850
Wire Wire Line
	1350 6450 2300 6450
Wire Wire Line
	8650 5950 8650 6250
Wire Wire Line
	8000 6150 9300 6150
Wire Wire Line
	8250 6150 8250 6050
Wire Wire Line
	8000 6150 8000 6050
Connection ~ 8250 6150
Connection ~ 8650 6150
Wire Wire Line
	9300 6150 9300 6050
Wire Wire Line
	9050 6050 9050 6150
Connection ~ 9050 6150
Wire Wire Line
	8950 5650 9400 5650
Wire Wire Line
	9050 5650 9050 5750
Wire Wire Line
	9300 5650 9300 5750
Connection ~ 9050 5650
Wire Wire Line
	7900 5650 8350 5650
Wire Wire Line
	8000 5650 8000 5750
Wire Wire Line
	8250 5750 8250 5650
Connection ~ 8250 5650
Connection ~ 8000 5650
Connection ~ 9300 5650
Wire Wire Line
	1350 5550 2300 5550
Wire Wire Line
	1350 5450 2300 5450
Wire Wire Line
	1350 5350 2300 5350
Wire Wire Line
	1350 5250 2300 5250
Wire Wire Line
	1350 5150 2300 5150
Wire Wire Line
	1350 5050 2300 5050
Wire Wire Line
	7550 3400 7550 3300
Wire Wire Line
	6950 2900 6450 2900
Wire Wire Line
	2800 6900 2800 7200
Connection ~ 2800 6950
Wire Wire Line
	3050 7600 3050 7500
Wire Wire Line
	2800 7600 2800 7500
Wire Wire Line
	3050 7200 3050 6900
Wire Wire Line
	3050 6000 3050 6600
Wire Wire Line
	1350 7050 3600 7050
Connection ~ 3050 7050
Wire Wire Line
	3600 7600 3600 7500
Wire Wire Line
	3300 7500 3300 7600
Wire Wire Line
	3300 6950 3300 7100
Wire Wire Line
	3600 7050 3600 7100
Wire Wire Line
	850  3650 1050 3650
Wire Wire Line
	950  3750 950  3650
Connection ~ 950  3650
Wire Wire Line
	950  4050 1350 4050
Wire Wire Line
	1350 3850 1350 4150
Connection ~ 1350 4050
Wire Wire Line
	1900 1400 1800 1400
Wire Wire Line
	1800 1400 1800 1700
Wire Wire Line
	850  1300 900  1300
Wire Wire Line
	900  1300 900  1350
Wire Wire Line
	900  1350 1000 1350
Wire Wire Line
	850  1200 900  1200
Wire Wire Line
	900  1200 900  1150
Wire Wire Line
	900  1150 1000 1150
Wire Wire Line
	1200 1150 1800 1150
Wire Wire Line
	1450 1150 1450 1200
Wire Wire Line
	1800 1150 1800 1200
Wire Wire Line
	1800 1200 1900 1200
Connection ~ 1450 1150
Wire Wire Line
	1200 1350 1250 1350
Wire Wire Line
	1250 1350 1250 1600
Wire Wire Line
	1250 1600 1800 1600
Connection ~ 1800 1600
Wire Wire Line
	1450 1500 1450 1600
Connection ~ 1450 1600
Wire Wire Line
	6850 3000 6850 2900
Connection ~ 6850 2900
Wire Wire Line
	6850 3400 7550 3400
Wire Wire Line
	7200 3400 7200 3500
Wire Wire Line
	6850 3400 6850 3300
Connection ~ 7200 3400
Wire Wire Line
	7450 2900 8450 2900
Wire Wire Line
	7550 2900 7550 3000
Connection ~ 7550 2900
Wire Wire Line
	850  2200 900  2200
Wire Wire Line
	900  2200 900  2150
Wire Wire Line
	900  2150 950  2150
Wire Wire Line
	850  2300 900  2300
Wire Wire Line
	900  2300 900  2350
Wire Wire Line
	900  2350 950  2350
Wire Wire Line
	1150 2350 1200 2350
Wire Wire Line
	1200 2350 1200 2500
Wire Wire Line
	1200 2450 1300 2450
Wire Wire Line
	1300 2450 1300 2400
Wire Wire Line
	1150 2150 1200 2150
Wire Wire Line
	1200 2150 1200 2050
Wire Wire Line
	1200 2050 1750 2050
Wire Wire Line
	1300 2050 1300 2100
Connection ~ 1200 2450
Wire Wire Line
	1750 2050 1750 2200
Wire Wire Line
	1750 2200 1850 2200
Connection ~ 1300 2050
Wire Wire Line
	1850 2400 1750 2400
Wire Wire Line
	1850 3000 2250 3000
Wire Wire Line
	550  3650 550  3800
Wire Wire Line
	550  3800 600  3800
Wire Wire Line
	600  3800 600  4300
Wire Wire Line
	1000 2750 1000 3100
Wire Wire Line
	850  3000 1050 3000
Connection ~ 1000 3000
Wire Wire Line
	850  3200 850  3100
Wire Wire Line
	1000 3400 1350 3400
Wire Wire Line
	1350 3400 1350 3450
Wire Wire Line
	1250 3400 1250 3300
Connection ~ 1250 3400
Wire Wire Line
	1450 3000 1550 3000
Wire Wire Line
	1750 2400 1750 2750
Wire Wire Line
	1750 2750 1000 2750
Wire Wire Line
	2250 3200 2150 3200
Wire Wire Line
	2150 3200 2150 3800
Wire Wire Line
	3350 2200 4050 2200
Wire Wire Line
	3350 2400 4050 2400
Wire Wire Line
	5950 6600 6550 6600
Wire Wire Line
	5950 6900 6550 6900
Wire Wire Line
	5950 6800 6550 6800
Wire Wire Line
	5950 6700 6550 6700
Wire Wire Line
	6550 7300 5950 7300
Wire Wire Line
	6550 7600 5950 7600
Wire Wire Line
	5950 7500 6550 7500
Wire Wire Line
	6550 7400 5950 7400
$Comp
L D_Schottky D?
U 1 1 58CA1D85
P 1700 3000
F 0 "D?" H 1700 3100 50  0000 C CNN
F 1 "Schottky" H 1700 2900 50  0000 C CNN
F 2 "" H 1700 3000 50  0000 C CNN
F 3 "" H 1700 3000 50  0000 C CNN
	1    1700 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3000 4300 3000
Wire Wire Line
	4300 3000 4300 3600
Wire Wire Line
	4300 3600 3150 3600
Wire Wire Line
	3150 3600 3150 3950
Wire Wire Line
	3150 3950 3350 3950
Text Label 2800 4150 0    60   ~ 0
Probe1_EN
Text Label 2800 4250 0    60   ~ 0
Probe2_EN
Text Label 2800 4350 0    60   ~ 0
Probe3_EN
Wire Wire Line
	2800 4150 3350 4150
Wire Wire Line
	2800 4250 3350 4250
Wire Wire Line
	2800 4350 3350 4350
Text Label 5600 4050 2    60   ~ 0
Probe1_Current
Text Label 5600 4150 2    60   ~ 0
Probe2_Current
Text Label 5600 4250 2    60   ~ 0
Probe3_Current
$Sheet
S 4550 4950 1200 900 
U 58F758D3
F0 "Powerboard_ADC" 60
F1 "powerboard_adc.sch" 60
F2 "SCK" I R 5750 5050 60 
F3 "MOSI" I R 5750 5150 60 
F4 "MISO" O R 5750 5250 60 
F5 "CS" I R 5750 5350 60 
F6 "IN7" I L 4550 5750 60 
F7 "IN6" I L 4550 5650 60 
F8 "IN5" I L 4550 5550 60 
F9 "IN4" I L 4550 5450 60 
F10 "IN3" I L 4550 5350 60 
F11 "IN2" I L 4550 5250 60 
F12 "IN1" I L 4550 5150 60 
F13 "IN0" I L 4550 5050 60 
$EndSheet
Wire Wire Line
	4850 4050 5600 4050
Wire Wire Line
	5600 4150 4850 4150
Wire Wire Line
	4850 4250 5600 4250
Text Label 3800 5050 0    60   ~ 0
Probe1_Current
Text Label 3800 5150 0    60   ~ 0
Probe2_Current
Text Label 3800 5250 0    60   ~ 0
Probe3_Current
Wire Wire Line
	3800 5050 4550 5050
Wire Wire Line
	4550 5150 3800 5150
Wire Wire Line
	3800 5250 4550 5250
Wire Wire Line
	5750 5050 6450 5050
Text Label 6450 5050 2    60   ~ 0
extADC_SCK
Text Label 6450 5150 2    60   ~ 0
extADC_MOSI
Text Label 6450 5250 2    60   ~ 0
extADC_MISO
Text Label 6450 5350 2    60   ~ 0
extADC_CS
Wire Wire Line
	6450 5150 5750 5150
Wire Wire Line
	5750 5250 6450 5250
Wire Wire Line
	6450 5350 5750 5350
$Sheet
S 7900 1650 1450 300 
U 58F8B0DB
F0 "Powerboard_LED_driver" 60
F1 "powerboard-led-driver.sch" 60
F2 "VIN" I L 7900 1750 60 
F3 "LED_OUT" O R 9350 1800 60 
F4 "Enable" I L 7900 1850 60 
$EndSheet
Text Label 7200 1750 0    60   ~ 0
RXSM_28V
Wire Wire Line
	7200 1750 7900 1750
$Comp
L GND #PWR?
U 1 1 58F98D85
P 10200 2100
F 0 "#PWR?" H 10200 1850 50  0001 C CNN
F 1 "GND" H 10200 1950 50  0000 C CNN
F 2 "" H 10200 2100 50  0001 C CNN
F 3 "" H 10200 2100 50  0001 C CNN
	1    10200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1700 10200 2100
Wire Wire Line
	10200 2000 10300 2000
NoConn ~ 10300 1200
NoConn ~ 10300 1400
NoConn ~ 10300 1300
$Comp
L DB9_FEMALE J?
U 1 1 58FA6D23
P 10600 1600
F 0 "J?" H 10600 2150 50  0000 C CNN
F 1 "Cameraboard" H 10600 1025 50  0000 C CNN
F 2 "" H 10600 1600 50  0001 C CNN
F 3 "" H 10600 1600 50  0001 C CNN
	1    10600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1700 10300 1700
Connection ~ 10200 2000
Wire Wire Line
	10300 1800 9350 1800
$Comp
L R R?
U 1 1 58FB5586
P 8850 1200
F 0 "R?" V 8930 1200 50  0000 C CNN
F 1 "100k" V 8850 1200 50  0000 C CNN
F 2 "" V 8780 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	-1   0    0    1   
$EndComp
Connection ~ 8850 1350
$Comp
L R R?
U 1 1 58FB598C
P 8550 950
F 0 "R?" V 8630 950 50  0000 C CNN
F 1 "1k" V 8550 950 50  0000 C CNN
F 2 "" V 8480 950 50  0001 C CNN
F 3 "" H 8550 950 50  0001 C CNN
	1    8550 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 950  9150 950 
Wire Wire Line
	9150 950  9150 1050
Wire Wire Line
	8850 1050 8850 950 
Connection ~ 8850 950 
Wire Wire Line
	9750 1350 9750 1600
Wire Wire Line
	9750 1600 10300 1600
Wire Wire Line
	9350 1350 9750 1350
Text Notes 9400 1050 0    60   ~ 0
Pin 1, 2 & 6:\nUART from mainboard
$EndSCHEMATC
