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
S 2750 1100 1350 400 
U 5886B9BC
F0 "Powerboard Regulator 28V to 5V" 60
F1 "powerboard_regulator_28V-to-5V.sch" 60
F2 "RXSM_28V_IN" I L 2750 1200 60 
F3 "5V_3A_OUT" I R 4100 1300 60 
F4 "GND" I L 2750 1400 60 
$EndSheet
$Comp
L GND #PWR?
U 1 1 5886D3D2
P 2650 1700
F 0 "#PWR?" H 2650 1450 50  0001 C CNN
F 1 "GND" H 2650 1550 50  0000 C CNN
F 2 "" H 2650 1700 50  0000 C CNN
F 3 "" H 2650 1700 50  0000 C CNN
	1    2650 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5886D3FA
P 1500 1250
F 0 "P?" H 1500 1400 50  0000 C CNN
F 1 "RXSM_POWER" V 1600 1250 50  0000 C CNN
F 2 "" H 1500 1250 50  0000 C CNN
F 3 "" H 1500 1250 50  0000 C CNN
	1    1500 1250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5886EA99
P 1500 3050
F 0 "P?" H 1500 3200 50  0000 C CNN
F 1 "Battery" V 1600 3050 50  0000 C CNN
F 2 "" H 1500 3050 50  0000 C CNN
F 3 "" H 1500 3050 50  0000 C CNN
	1    1500 3050
	-1   0    0    1   
$EndComp
$Sheet
S 3100 2900 1500 400 
U 5886F238
F0 "Powerboard Stepup 24V" 60
F1 "powerboard_stepup_24V.sch" 60
F2 "Bat_IN" I L 3100 3000 60 
F3 "24V_OUT" I R 4600 3000 60 
F4 "Enable" I L 3100 3200 60 
$EndSheet
$Comp
L +5V #PWR?
U 1 1 5886FF1B
P 4700 1300
F 0 "#PWR?" H 4700 1150 50  0001 C CNN
F 1 "+5V" H 4700 1440 50  0000 C CNN
F 2 "" H 4700 1300 50  0000 C CNN
F 3 "" H 4700 1300 50  0000 C CNN
	1    4700 1300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58871E64
P 2800 4150
F 0 "#PWR?" H 2800 3900 50  0001 C CNN
F 1 "GND" H 2800 4000 50  0000 C CNN
F 2 "" H 2800 4150 50  0000 C CNN
F 3 "" H 2800 4150 50  0000 C CNN
	1    2800 4150
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
Text Label 2150 1150 0    60   ~ 0
RXSM_28V
Text Label 2700 3000 0    60   ~ 0
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
Text Label 1900 6050 2    60   ~ 0
Lens_Heat_EN
Text Label 1900 5150 2    60   ~ 0
Probe3_EN
Text Label 1900 5050 2    60   ~ 0
Probe2_EN
Text Label 1900 4950 2    60   ~ 0
Probe1_EN
Text Label 1900 4450 2    60   ~ 0
Motor1_EN
Text Label 1900 4550 2    60   ~ 0
Motor1_DIR
Text Label 1900 4650 2    60   ~ 0
Motor1_PWM
Text Label 3500 5450 0    60   ~ 0
RXSM_28V_sense
Text Label 7200 1850 0    60   ~ 0
Cam_Light_EN
Text Label 1900 5950 2    60   ~ 0
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
Text Label 6450 2900 0    60   ~ 0
RXSM_28V
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
F7 "Current_measure" I L 8450 3600 59 
$EndSheet
Text Label 7800 3600 0    60   ~ 0
Motor1_Current
Text Label 3800 5350 0    60   ~ 0
Motor1_Current
$Comp
L LM1117-3.3 U?
U 1 1 588B332C
P 7750 5700
F 0 "U?" H 7850 5450 50  0000 C CNN
F 1 "LM1117-3.3" H 7750 5950 50  0000 C CNN
F 2 "" H 7750 5700 50  0000 C CNN
F 3 "" H 7750 5700 50  0000 C CNN
	1    7750 5700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588B4592
P 7350 5950
F 0 "C?" H 7375 6050 50  0000 L CNN
F 1 "100n" H 7375 5850 50  0000 L CNN
F 2 "" H 7388 5800 50  0000 C CNN
F 3 "" H 7350 5950 50  0000 C CNN
	1    7350 5950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588B4816
P 8150 5950
F 0 "C?" H 8175 6050 50  0000 L CNN
F 1 "100n" H 8175 5850 50  0000 L CNN
F 2 "" H 8188 5800 50  0000 C CNN
F 3 "" H 8150 5950 50  0000 C CNN
	1    8150 5950
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588B4932
P 8400 5950
F 0 "C?" H 8425 6050 50  0000 L CNN
F 1 "10µ" H 8425 5850 50  0000 L CNN
F 2 "" H 8438 5800 50  0000 C CNN
F 3 "" H 8400 5950 50  0000 C CNN
	1    8400 5950
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588B4A5C
P 7100 5950
F 0 "C?" H 7125 6050 50  0000 L CNN
F 1 "10µ" H 7125 5850 50  0000 L CNN
F 2 "" H 7138 5800 50  0000 C CNN
F 3 "" H 7100 5950 50  0000 C CNN
	1    7100 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588B4F5A
P 7750 6300
F 0 "#PWR?" H 7750 6050 50  0001 C CNN
F 1 "GND" H 7750 6150 50  0000 C CNN
F 2 "" H 7750 6300 50  0000 C CNN
F 3 "" H 7750 6300 50  0000 C CNN
	1    7750 6300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588B59D2
P 7000 5700
F 0 "#PWR?" H 7000 5550 50  0001 C CNN
F 1 "+5V" H 7000 5840 50  0000 C CNN
F 2 "" H 7000 5700 50  0000 C CNN
F 3 "" H 7000 5700 50  0000 C CNN
	1    7000 5700
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588B5CD1
P 8500 5700
F 0 "#PWR?" H 8500 5550 50  0001 C CNN
F 1 "+3V3" H 8500 5840 50  0000 C CNN
F 2 "" H 8500 5700 50  0000 C CNN
F 3 "" H 8500 5700 50  0000 C CNN
	1    8500 5700
	0    1    1    0   
$EndComp
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
Text Label 3500 5550 0    60   ~ 0
Batt_sense
$Comp
L Q_NMOS_GDS Q?
U 1 1 58C8B900
P 2700 3650
F 0 "Q?" H 3000 3700 50  0000 R CNN
F 1 "N-FET" H 3150 3600 50  0000 R CNN
F 2 "" H 2900 3750 50  0000 C CNN
F 3 "" H 2700 3650 50  0000 C CNN
	1    2700 3650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C8BC13
P 2400 3900
F 0 "R?" V 2480 3900 50  0000 C CNN
F 1 "10k" V 2400 3900 50  0000 C CNN
F 2 "" V 2330 3900 50  0000 C CNN
F 3 "" H 2400 3900 50  0000 C CNN
	1    2400 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C8BE20
P 2150 3650
F 0 "R?" V 2230 3650 50  0000 C CNN
F 1 "20k" V 2150 3650 50  0000 C CNN
F 2 "" V 2080 3650 50  0000 C CNN
F 3 "" H 2150 3650 50  0000 C CNN
	1    2150 3650
	0    1    1    0   
$EndComp
Text Label 2000 4100 1    60   ~ 0
RXSM_28V
Text Notes 2300 3600 0    60   ~ 0
Battery\ncut off
Text Label 4700 3000 0    60   ~ 0
24V_BAT
$Comp
L CMC FL?
U 1 1 58C8D036
P 1950 1250
F 0 "FL?" H 1950 1405 60  0000 C CNB
F 1 "10µH 1.5A" H 1900 1100 45  0000 C CNN
F 2 "" H 1950 1025 40  0001 C CNN
F 3 "" H 1950 1400 60  0000 C CNN
F 4 "-" H 1950 1485 45  0001 C CNN "PART"
F 5 "Passive" H 2180 1540 50  0001 C CNN "Family"
	1    1950 1250
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 58C8D570
P 2300 1350
F 0 "C?" H 2325 1450 50  0000 L CNN
F 1 "47µ" H 2325 1250 50  0000 L CNN
F 2 "" H 2338 1200 50  0000 C CNN
F 3 "" H 2300 1350 50  0000 C CNN
	1    2300 1350
	1    0    0    -1  
$EndComp
Text Notes 1750 1000 0    49   ~ 0
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
$Comp
L CONN_01X02 P?
U 1 1 58C977C5
P 1500 2250
F 0 "P?" H 1500 2400 50  0000 C CNN
F 1 "RXSM_Charge" V 1600 2250 50  0000 C CNN
F 2 "" H 1500 2250 50  0000 C CNN
F 3 "" H 1500 2250 50  0000 C CNN
	1    1500 2250
	-1   0    0    1   
$EndComp
$Comp
L CMC FL?
U 1 1 58C97BBF
P 1900 2250
F 0 "FL?" H 1900 2405 60  0000 C CNB
F 1 "10µH 1A" H 1850 2100 45  0000 C CNN
F 2 "" H 1900 2025 40  0001 C CNN
F 3 "" H 1900 2400 60  0000 C CNN
F 4 "-" H 1900 2485 45  0001 C CNN "PART"
F 5 "Passive" H 2130 2540 50  0001 C CNN "Family"
	1    1900 2250
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 58C97CE9
P 2150 2250
F 0 "C?" H 2175 2350 50  0000 L CNN
F 1 "10µ" H 2175 2150 50  0000 L CNN
F 2 "" H 2188 2100 50  0000 C CNN
F 3 "" H 2150 2250 50  0000 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
$Sheet
S 2700 2100 1500 400 
U 58C99165
F0 "Powerboard Battery Charging" 60
F1 "powerboard_battery_charging.sch" 60
F2 "battery" I L 2700 2400 60 
F3 "charge_power" I L 2700 2200 60 
F4 "charge_status" I R 4200 2200 60 
F5 "charge_enable" I R 4200 2400 60 
$EndSheet
$Comp
L GND #PWR?
U 1 1 58CA05ED
P 2050 2500
F 0 "#PWR?" H 2050 2250 50  0001 C CNN
F 1 "GND" H 2050 2350 50  0000 C CNN
F 2 "" H 2050 2500 50  0000 C CNN
F 3 "" H 2050 2500 50  0000 C CNN
	1    2050 2500
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDS Q?
U 1 1 58CA6DDD
P 2100 3100
F 0 "Q?" H 2400 3150 50  0000 R CNN
F 1 "P-FET" V 2050 3450 50  0000 R CNN
F 2 "" H 2300 3200 50  0000 C CNN
F 3 "" H 2100 3100 50  0000 C CNN
	1    2100 3100
	0    1    -1   0   
$EndComp
$Comp
L R R?
U 1 1 58CAB3E4
P 1850 3250
F 0 "R?" V 1930 3250 50  0000 C CNN
F 1 "10k" V 1850 3250 50  0000 C CNN
F 2 "" V 1780 3250 50  0000 C CNN
F 3 "" H 1850 3250 50  0000 C CNN
	1    1850 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58CABA0F
P 1700 3200
F 0 "#PWR?" H 1700 2950 50  0001 C CNN
F 1 "GND" H 1700 3050 50  0000 C CNN
F 2 "" H 1700 3200 50  0000 C CNN
F 3 "" H 1700 3200 50  0000 C CNN
	1    1700 3200
	1    0    0    -1  
$EndComp
Text Label 4900 2200 2    60   ~ 0
Charge_status
Text Label 1900 5850 2    60   ~ 0
Charge_status
Text Label 2550 2750 2    47   ~ 0
BAT_raw
Text Label 3650 3500 2    60   ~ 0
Boost24V_EN
Text Label 1900 6150 2    60   ~ 0
Boost24V_EN
Text Label 4900 2400 2    60   ~ 0
Charge_EN
Text Label 1900 5750 2    60   ~ 0
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
S 4200 3850 1500 600 
U 58F4FF70
F0 "Powerboard_Heat_Probes" 60
F1 "heat-probes.sch" 60
F2 "Probe1_EN" I L 4200 4150 60 
F3 "Probe2_EN" I L 4200 4250 60 
F4 "Probe3_EN" I L 4200 4350 60 
F5 "24V_BAT" I L 4200 3950 60 
F6 "Probe1_Current" O R 5700 4050 60 
F7 "Probe2_Current" O R 5700 4150 60 
F8 "Probe3_Current" O R 5700 4250 60 
$EndSheet
$Comp
L D_Schottky D?
U 1 1 58CA1D85
P 2550 3000
F 0 "D?" H 2550 3100 50  0000 C CNN
F 1 "Schottky" H 2550 2900 50  0000 C CNN
F 2 "" H 2550 3000 50  0000 C CNN
F 3 "" H 2550 3000 50  0000 C CNN
	1    2550 3000
	-1   0    0    1   
$EndComp
Text Label 3650 4150 0    60   ~ 0
Probe1_EN
Text Label 3650 4250 0    60   ~ 0
Probe2_EN
Text Label 3650 4350 0    60   ~ 0
Probe3_EN
Text Label 6450 4050 2    60   ~ 0
Probe1_Current
Text Label 6450 4150 2    60   ~ 0
Probe2_Current
Text Label 6450 4250 2    60   ~ 0
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
Text Label 3800 5050 0    60   ~ 0
Probe1_Current
Text Label 3800 5150 0    60   ~ 0
Probe2_Current
Text Label 3800 5250 0    60   ~ 0
Probe3_Current
Text Label 6450 5050 2    60   ~ 0
extADC_SCK
Text Label 6450 5150 2    60   ~ 0
extADC_MOSI
Text Label 6450 5250 2    60   ~ 0
extADC_MISO
Text Label 6450 5350 2    60   ~ 0
extADC_CS
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
Text Notes 9400 1050 0    60   ~ 0
Pin 1, 2 & 6:\nUART from mainboard
Text Label 1900 5250 2    60   ~ 0
extADC_SCK
Text Label 1900 5350 2    60   ~ 0
extADC_MOSI
Text Label 1900 5450 2    60   ~ 0
extADC_MISO
Text Label 1900 5550 2    60   ~ 0
extADC_CS
$Comp
L DB15_FEMALE J?
U 1 1 5900D731
P 10750 4800
F 0 "J?" H 10770 5650 50  0000 C CNN
F 1 "BLDC Motor" V 10950 4800 50  0000 C CNN
F 2 "" H 10750 4800 50  0001 C CNN
F 3 "" H 10750 4800 50  0001 C CNN
	1    10750 4800
	1    0    0    -1  
$EndComp
Text Label 9600 4100 0    60   ~ 0
Phase_U
Text Label 9600 4300 0    60   ~ 0
Phase_V
Text Label 9600 4500 0    60   ~ 0
Phase_W
Text Label 9600 5000 0    60   ~ 0
Hall_U
Text Label 9600 5100 0    60   ~ 0
Hall_V
Text Label 9600 5200 0    60   ~ 0
Hall_W
$Comp
L GND #PWR?
U 1 1 5900FB88
P 10200 5600
F 0 "#PWR?" H 10200 5350 50  0001 C CNN
F 1 "GND" H 10200 5450 50  0000 C CNN
F 2 "" H 10200 5600 50  0001 C CNN
F 3 "" H 10200 5600 50  0001 C CNN
	1    10200 5600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5901160D
P 10400 5600
F 0 "#PWR?" H 10400 5450 50  0001 C CNN
F 1 "+5V" H 10400 5740 50  0000 C CNN
F 2 "" H 10400 5600 50  0000 C CNN
F 3 "" H 10400 5600 50  0000 C CNN
	1    10400 5600
	-1   0    0    1   
$EndComp
Text Label 9600 5300 0    60   ~ 0
Encoder_A+
Text Label 9600 5400 0    60   ~ 0
Encoder_B+
Text Label 1900 6650 2    60   ~ 0
Hall_U
Text Label 1900 6750 2    60   ~ 0
Hall_V
Text Label 1900 6850 2    60   ~ 0
Hall_W
Text Label 1900 6350 2    60   ~ 0
Encoder_A+
Text Label 1900 6450 2    60   ~ 0
Encoder_B+
Text Label 4400 6650 0    60   ~ 0
LO
Text Label 4400 6750 0    60   ~ 0
SOE
Text Label 4400 6850 0    60   ~ 0
SODS
Text Label 4400 7400 0    60   ~ 0
TX
Text Label 4400 7500 0    60   ~ 0
RX
Text Label 1900 6950 2    60   ~ 0
LO
Text Label 1900 7050 2    60   ~ 0
SOE
Text Label 1900 7150 2    60   ~ 0
SODS
Text Label 1900 7250 2    60   ~ 0
TX
Text Label 1900 7350 2    60   ~ 0
RX
Text Notes 4050 4600 0    60   ~ 0
Heat probe connectors in sub-schematic
$Comp
L DB37_FEMALE J?
U 1 1 59027E91
P 750 5650
F 0 "J?" H 750 7625 50  0000 C CNN
F 1 "Powerboard <-> Mainboard" V 950 5650 50  0000 C CNN
F 2 "" H 750 5650 50  0001 C CNN
F 3 "" H 750 5650 50  0001 C CNN
	1    750  5650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 590292DE
P 1150 7550
F 0 "#PWR?" H 1150 7300 50  0001 C CNN
F 1 "GND" H 1150 7400 50  0000 C CNN
F 2 "" H 1150 7550 50  0001 C CNN
F 3 "" H 1150 7550 50  0001 C CNN
	1    1150 7550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5905088E
P 1350 3750
F 0 "#PWR?" H 1350 3600 50  0001 C CNN
F 1 "+5V" H 1350 3890 50  0000 C CNN
F 2 "" H 1350 3750 50  0000 C CNN
F 3 "" H 1350 3750 50  0000 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
NoConn ~ 1050 4250
Text Notes 10000 3450 0    60   ~ 0
ToDo
Text Label 9600 4800 0    60   ~ 0
Brake-
Wire Wire Line
	4700 1300 4100 1300
Wire Wire Line
	10100 1500 10300 1500
Wire Wire Line
	9600 1900 10300 1900
Wire Wire Line
	8750 1350 8950 1350
Wire Wire Line
	7750 950  8400 950 
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
	8450 3600 7800 3600
Wire Wire Line
	7750 6000 7750 6300
Wire Wire Line
	7100 6200 8400 6200
Wire Wire Line
	7350 6200 7350 6100
Wire Wire Line
	7100 6200 7100 6100
Connection ~ 7350 6200
Connection ~ 7750 6200
Wire Wire Line
	8400 6200 8400 6100
Wire Wire Line
	8150 6100 8150 6200
Connection ~ 8150 6200
Wire Wire Line
	8050 5700 8500 5700
Wire Wire Line
	8150 5700 8150 5800
Wire Wire Line
	8400 5700 8400 5800
Connection ~ 8150 5700
Wire Wire Line
	7000 5700 7450 5700
Wire Wire Line
	7100 5700 7100 5800
Wire Wire Line
	7350 5800 7350 5700
Connection ~ 7350 5700
Connection ~ 7100 5700
Connection ~ 8400 5700
Wire Wire Line
	7550 3400 7550 3300
Wire Wire Line
	6950 2900 6450 2900
Wire Wire Line
	2300 3650 2500 3650
Wire Wire Line
	2400 3750 2400 3650
Connection ~ 2400 3650
Wire Wire Line
	2400 4050 2800 4050
Wire Wire Line
	2800 3850 2800 4150
Connection ~ 2800 4050
Wire Wire Line
	2750 1400 2650 1400
Wire Wire Line
	2650 1400 2650 1700
Wire Wire Line
	1700 1300 1750 1300
Wire Wire Line
	1750 1300 1750 1350
Wire Wire Line
	1750 1350 1850 1350
Wire Wire Line
	1700 1200 1750 1200
Wire Wire Line
	1750 1200 1750 1150
Wire Wire Line
	1750 1150 1850 1150
Wire Wire Line
	2050 1150 2650 1150
Wire Wire Line
	2300 1150 2300 1200
Wire Wire Line
	2650 1150 2650 1200
Wire Wire Line
	2650 1200 2750 1200
Connection ~ 2300 1150
Wire Wire Line
	2050 1350 2100 1350
Wire Wire Line
	2100 1350 2100 1600
Wire Wire Line
	2100 1600 2650 1600
Connection ~ 2650 1600
Wire Wire Line
	2300 1500 2300 1600
Connection ~ 2300 1600
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
	1700 2200 1750 2200
Wire Wire Line
	1750 2200 1750 2150
Wire Wire Line
	1750 2150 1800 2150
Wire Wire Line
	1700 2300 1750 2300
Wire Wire Line
	1750 2300 1750 2350
Wire Wire Line
	1750 2350 1800 2350
Wire Wire Line
	2000 2350 2050 2350
Wire Wire Line
	2050 2350 2050 2500
Wire Wire Line
	2050 2450 2150 2450
Wire Wire Line
	2150 2450 2150 2400
Wire Wire Line
	2000 2150 2050 2150
Wire Wire Line
	2050 2150 2050 2050
Wire Wire Line
	2050 2050 2600 2050
Wire Wire Line
	2150 2050 2150 2100
Connection ~ 2050 2450
Wire Wire Line
	2600 2050 2600 2200
Wire Wire Line
	2600 2200 2700 2200
Connection ~ 2150 2050
Wire Wire Line
	2700 2400 2600 2400
Wire Wire Line
	2700 3000 3100 3000
Wire Wire Line
	1850 2750 1850 3100
Wire Wire Line
	1700 3000 1900 3000
Connection ~ 1850 3000
Wire Wire Line
	1700 3200 1700 3100
Wire Wire Line
	1850 3400 2800 3400
Wire Wire Line
	2100 3400 2100 3300
Connection ~ 2100 3400
Wire Wire Line
	2300 3000 2400 3000
Wire Wire Line
	2600 2400 2600 2750
Wire Wire Line
	2600 2750 1850 2750
Wire Wire Line
	3100 3200 3000 3200
Wire Wire Line
	4200 2200 4900 2200
Wire Wire Line
	4200 2400 4900 2400
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
Wire Wire Line
	4600 3000 5150 3000
Wire Wire Line
	5150 3000 5150 3600
Wire Wire Line
	5150 3600 4000 3600
Wire Wire Line
	4000 3600 4000 3950
Wire Wire Line
	4000 3950 4200 3950
Wire Wire Line
	3650 4150 4200 4150
Wire Wire Line
	3650 4250 4200 4250
Wire Wire Line
	3650 4350 4200 4350
Wire Wire Line
	5700 4050 6450 4050
Wire Wire Line
	6450 4150 5700 4150
Wire Wire Line
	5700 4250 6450 4250
Wire Wire Line
	3800 5050 4550 5050
Wire Wire Line
	4550 5150 3800 5150
Wire Wire Line
	3800 5250 4550 5250
Wire Wire Line
	5750 5050 6450 5050
Wire Wire Line
	6450 5150 5750 5150
Wire Wire Line
	5750 5250 6450 5250
Wire Wire Line
	6450 5350 5750 5350
Wire Wire Line
	7200 1750 7900 1750
Wire Wire Line
	10200 1700 10200 2100
Wire Wire Line
	10200 2000 10300 2000
Wire Wire Line
	10200 1700 10300 1700
Connection ~ 10200 2000
Wire Wire Line
	10300 1800 9350 1800
Connection ~ 8850 1350
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
Wire Wire Line
	3800 5350 4550 5350
Wire Wire Line
	9600 4100 10450 4100
Wire Wire Line
	10350 4100 10350 4200
Wire Wire Line
	10350 4200 10450 4200
Connection ~ 10350 4100
Wire Wire Line
	10450 4300 9600 4300
Wire Wire Line
	9600 4500 10450 4500
Wire Wire Line
	10450 4600 10350 4600
Wire Wire Line
	10350 4600 10350 4500
Connection ~ 10350 4500
Wire Wire Line
	10350 4300 10350 4400
Wire Wire Line
	10350 4400 10450 4400
Connection ~ 10350 4300
Wire Wire Line
	9600 5000 10450 5000
Wire Wire Line
	10450 5100 9600 5100
Wire Wire Line
	9600 5200 10450 5200
Wire Wire Line
	9600 5400 10450 5400
Wire Wire Line
	10450 5300 9600 5300
Wire Wire Line
	4400 6650 4800 6650
Wire Wire Line
	4400 6850 4800 6850
Wire Wire Line
	4800 6750 4400 6750
Wire Wire Line
	4400 7400 4800 7400
Wire Wire Line
	4800 7500 4400 7500
Wire Wire Line
	1150 3850 1150 7550
Wire Wire Line
	1150 7450 1050 7450
Wire Wire Line
	1150 3850 1050 3850
Connection ~ 1150 7450
Wire Wire Line
	1050 6550 1150 6550
Connection ~ 1150 6550
Wire Wire Line
	1050 5650 1150 5650
Connection ~ 1150 5650
Wire Wire Line
	1350 3750 1350 4050
Wire Wire Line
	1350 3950 1050 3950
Wire Wire Line
	1350 4050 1050 4050
Connection ~ 1350 3950
Wire Wire Line
	1050 4150 1150 4150
Connection ~ 1150 4150
Wire Wire Line
	1900 7350 1050 7350
Wire Wire Line
	1050 7250 1900 7250
Wire Wire Line
	1900 7150 1050 7150
Wire Wire Line
	1050 7050 1900 7050
Wire Wire Line
	1900 6950 1050 6950
Wire Wire Line
	1050 6850 1900 6850
Wire Wire Line
	1900 6750 1050 6750
Wire Wire Line
	1050 6650 1900 6650
Wire Wire Line
	1050 6450 1900 6450
Wire Wire Line
	1900 6350 1050 6350
Wire Wire Line
	1050 6050 1900 6050
Wire Wire Line
	1900 5950 1050 5950
Wire Wire Line
	1050 5850 1900 5850
Wire Wire Line
	1900 5750 1050 5750
Wire Wire Line
	1050 5550 1900 5550
Wire Wire Line
	1900 5450 1050 5450
Wire Wire Line
	1050 5350 1900 5350
Wire Wire Line
	1900 5250 1050 5250
Wire Wire Line
	1050 5150 1900 5150
Wire Wire Line
	1900 5050 1050 5050
Wire Wire Line
	1050 4950 1900 4950
Wire Wire Line
	1050 4650 1900 4650
Wire Wire Line
	1900 4550 1050 4550
Wire Wire Line
	1050 4450 1900 4450
Wire Wire Line
	3000 3200 3000 3500
Wire Wire Line
	3000 3500 3650 3500
Wire Wire Line
	2800 3400 2800 3450
Wire Wire Line
	2000 3650 2000 4100
Wire Wire Line
	9550 4700 10450 4700
Wire Wire Line
	9200 4800 10450 4800
Text Label 8750 4600 0    60   ~ 0
RXSM_28V
$Comp
L Q_NMOS_GSD Q?
U 1 1 59097F47
P 9100 5100
F 0 "Q?" H 9050 5000 50  0000 R CNN
F 1 "N-MOS" H 9150 5250 50  0000 R CNN
F 2 "" H 9300 5200 50  0000 C CNN
F 3 "" H 9100 5100 50  0000 C CNN
	1    9100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4700 9200 4900
$Comp
L GND #PWR?
U 1 1 59098973
P 9200 5500
F 0 "#PWR?" H 9200 5250 50  0001 C CNN
F 1 "GND" H 9200 5350 50  0000 C CNN
F 2 "" H 9200 5500 50  0001 C CNN
F 3 "" H 9200 5500 50  0001 C CNN
	1    9200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5500 9200 5300
$Comp
L R R?
U 1 1 59098E08
P 9000 5400
F 0 "R?" V 9080 5400 50  0000 C CNN
F 1 "100k" V 9000 5400 50  0000 C CNN
F 2 "" V 8930 5400 50  0001 C CNN
F 3 "" H 9000 5400 50  0001 C CNN
	1    9000 5400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5909C2E9
P 8550 5100
F 0 "R?" V 8630 5100 50  0000 C CNN
F 1 "1k" V 8550 5100 50  0000 C CNN
F 2 "" V 8480 5100 50  0001 C CNN
F 3 "" H 8550 5100 50  0001 C CNN
	1    8550 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5100 8900 5100
Wire Wire Line
	9200 5400 9150 5400
Connection ~ 9200 5400
Wire Wire Line
	8850 5400 8800 5400
Wire Wire Line
	8800 5400 8800 5100
Connection ~ 8800 5100
Wire Wire Line
	8400 5100 8300 5100
Wire Wire Line
	8300 5100 8300 5000
Text Label 8700 5000 2    60   ~ 0
Brake_EN
Text Label 1900 4350 2    60   ~ 0
Brake_EN
Wire Wire Line
	8300 5000 8700 5000
Wire Wire Line
	9250 4700 9200 4700
Connection ~ 9200 4800
$Comp
L D D?
U 1 1 590A075E
P 9400 4700
F 0 "D?" H 9550 4650 50  0000 C CNN
F 1 "D" H 9400 4600 50  0000 C CNN
F 2 "" H 9400 4700 50  0001 C CNN
F 3 "" H 9400 4700 50  0001 C CNN
	1    9400 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 5600 10400 5500
Wire Wire Line
	10400 5500 10450 5500
Wire Wire Line
	10450 4900 10200 4900
Wire Wire Line
	10200 4900 10200 5600
Wire Wire Line
	8750 4600 9600 4600
Wire Wire Line
	9600 4600 9600 4700
Connection ~ 9600 4700
Text Notes 8500 4750 0    60   ~ 0
snubber diode
Text Notes 9950 6000 0    60   ~ 0
5V power supply\nfor hall & encoder
Text Notes 6700 6400 0    60   ~ 0
3.3V power supply for\nADC and transceivers
Wire Wire Line
	1050 4350 1900 4350
Wire Wire Line
	1050 6250 1150 6250
Connection ~ 1150 6250
Wire Wire Line
	1050 6150 1900 6150
Wire Wire Line
	1050 4850 1150 4850
Connection ~ 1150 4850
NoConn ~ 1050 4750
$EndSCHEMATC
