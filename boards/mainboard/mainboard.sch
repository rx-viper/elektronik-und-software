EESchema Schematic File Version 2
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
LIBS:stm32
LIBS:xo53
LIBS:sst26vf064b
LIBS:pc3h7
LIBS:maxim
LIBS:common_mode_choke
LIBS:esd_diode_dual
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5050 2100 2850 4400
U 5889F4B8
F0 "Mainboard microcontroller" 60
F1 "mainboard_microcontroller.sch" 60
F2 "debug_TX" I L 5050 5850 59 
F3 "debug_RX" I L 5050 5950 59 
F4 "1wire_TX" I L 5050 3300 59 
F5 "1wire_RX" I L 5050 3400 59 
F6 "pressure_SCL" I L 5050 3050 59 
F7 "pressure_SDA" I L 5050 3150 59 
F8 "RXSM_CTS" I R 7900 3850 59 
F9 "RXSM_RTS" I R 7900 3350 59 
F10 "RXSM_TX" I R 7900 3650 59 
F11 "RXSM_RX" I R 7900 3150 59 
F12 "CtrlPnl_LED1" I R 7900 5950 59 
F13 "CtrlPnl_LED2" I R 7900 6050 59 
F14 "CtrlPnl_SW1" I R 7900 6150 59 
F15 "CtrlPnl_SW2" I R 7900 6250 59 
F16 "RasPi_TX" I R 7900 2200 59 
F17 "RasPi_RX" I R 7900 2300 59 
F18 "temp_SPI_SCK" I L 5050 2200 59 
F19 "temp_SPI_MISO" I L 5050 2300 59 
F20 "temp_SPI_MOSI" I L 5050 2400 59 
F21 "temp1_INT" I R 7900 4250 59 
F22 "temp2_INT" I R 7900 4350 59 
F23 "temp3_INT" I R 7900 4450 59 
F24 "temp4_INT" I R 7900 4550 59 
F25 "temp1_CS" I R 7900 4750 59 
F26 "temp2_CS" I R 7900 4850 59 
F27 "temp3_CS" I R 7900 4950 59 
F28 "temp4_CS" I R 7900 5050 59 
F29 "temp5_INT" I R 7900 4650 59 
F30 "temp5_CS" I R 7900 5150 59 
F31 "probe1_volt" I L 5050 3750 60 
F32 "probe2_volt" I L 5050 3850 60 
F33 "probe3_volt" I L 5050 3950 60 
F34 "probe1_curr" I L 5050 4050 60 
F35 "probe2_curr" I L 5050 4150 60 
F36 "probe3_curr" I L 5050 4250 60 
F37 "batt_volt" I L 5050 5750 60 
F38 "rxsm_volt" I L 5050 5650 60 
F39 "motor1_curr" I L 5050 5150 60 
F40 "motor2_curr" I L 5050 5550 60 
F41 "probe1_EN" I L 5050 4550 60 
F42 "probe2_EN" I L 5050 4650 60 
F43 "probe3_EN" I L 5050 4750 60 
F44 "cam_light_EN" I L 5050 4350 60 
F45 "batt_heater_EN" I L 5050 4450 60 
F46 "motor1_EN" I L 5050 4850 60 
F47 "motor1_DIR" I L 5050 4950 60 
F48 "motor1_PWM" I L 5050 5050 60 
F49 "motor2_EN" I L 5050 5250 60 
F50 "motor2_DIR" I L 5050 5350 60 
F51 "motor2_PWM" I L 5050 5450 60 
F52 "RXSM_LO" I R 7900 5350 60 
F53 "RXSM_SOE" I R 7900 5450 60 
F54 "RXSM_SODS" I R 7900 5550 60 
$EndSheet
$Comp
L CONN_01X02 P?
U 1 1 5889F4C3
P 1150 1200
F 0 "P?" H 1150 1350 50  0000 C CNN
F 1 "POWER 5V" V 1250 1200 50  0000 C CNN
F 2 "" H 1150 1200 50  0000 C CNN
F 3 "" H 1150 1200 50  0000 C CNN
	1    1150 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5889F577
P 1450 1350
F 0 "#PWR?" H 1450 1100 50  0001 C CNN
F 1 "GND" H 1450 1200 50  0000 C CNN
F 2 "" H 1450 1350 50  0000 C CNN
F 3 "" H 1450 1350 50  0000 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5889F590
P 1450 1050
F 0 "#PWR?" H 1450 900 50  0001 C CNN
F 1 "+5V" H 1450 1190 50  0000 C CNN
F 2 "" H 1450 1050 50  0000 C CNN
F 3 "" H 1450 1050 50  0000 C CNN
	1    1450 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 5889381A
P 1150 2150
F 0 "P?" H 1150 2400 50  0000 C CNN
F 1 "Pressure" V 1250 2150 50  0000 C CNN
F 2 "" H 1150 2150 50  0000 C CNN
F 3 "" H 1150 2150 50  0000 C CNN
	1    1150 2150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 588938DA
P 1450 2400
F 0 "#PWR?" H 1450 2150 50  0001 C CNN
F 1 "GND" H 1450 2250 50  0000 C CNN
F 2 "" H 1450 2400 50  0000 C CNN
F 3 "" H 1450 2400 50  0000 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588938ED
P 1450 1900
F 0 "#PWR?" H 1450 1750 50  0001 C CNN
F 1 "+3V3" H 1450 2040 50  0000 C CNN
F 2 "" H 1450 1900 50  0000 C CNN
F 3 "" H 1450 1900 50  0000 C CNN
	1    1450 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P?
U 1 1 588939FC
P 2300 1150
F 0 "P?" H 2300 1450 50  0000 C CNN
F 1 "Force 1" V 2400 1150 50  0000 C CNN
F 2 "" H 2300 1150 50  0000 C CNN
F 3 "" H 2300 1150 50  0000 C CNN
	1    2300 1150
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58893B21
P 2600 850
F 0 "#PWR?" H 2600 700 50  0001 C CNN
F 1 "+3V3" H 2600 990 50  0000 C CNN
F 2 "" H 2600 850 50  0000 C CNN
F 3 "" H 2600 850 50  0000 C CNN
	1    2600 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58893B42
P 2600 1450
F 0 "#PWR?" H 2600 1200 50  0001 C CNN
F 1 "GND" H 2600 1300 50  0000 C CNN
F 2 "" H 2600 1450 50  0000 C CNN
F 3 "" H 2600 1450 50  0000 C CNN
	1    2600 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P?
U 1 1 58893CEC
P 3150 1150
F 0 "P?" H 3150 1450 50  0000 C CNN
F 1 "Force 2" V 3250 1150 50  0000 C CNN
F 2 "" H 3150 1150 50  0000 C CNN
F 3 "" H 3150 1150 50  0000 C CNN
	1    3150 1150
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58893CF2
P 3450 850
F 0 "#PWR?" H 3450 700 50  0001 C CNN
F 1 "+3V3" H 3450 990 50  0000 C CNN
F 2 "" H 3450 850 50  0000 C CNN
F 3 "" H 3450 850 50  0000 C CNN
	1    3450 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58893CFA
P 3450 1450
F 0 "#PWR?" H 3450 1200 50  0001 C CNN
F 1 "GND" H 3450 1300 50  0000 C CNN
F 2 "" H 3450 1450 50  0000 C CNN
F 3 "" H 3450 1450 50  0000 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P?
U 1 1 58893D46
P 4000 1150
F 0 "P?" H 4000 1450 50  0000 C CNN
F 1 "Force 3" V 4100 1150 50  0000 C CNN
F 2 "" H 4000 1150 50  0000 C CNN
F 3 "" H 4000 1150 50  0000 C CNN
	1    4000 1150
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58893D4C
P 4300 850
F 0 "#PWR?" H 4300 700 50  0001 C CNN
F 1 "+3V3" H 4300 990 50  0000 C CNN
F 2 "" H 4300 850 50  0000 C CNN
F 3 "" H 4300 850 50  0000 C CNN
	1    4300 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58893D54
P 4300 1450
F 0 "#PWR?" H 4300 1200 50  0001 C CNN
F 1 "GND" H 4300 1300 50  0000 C CNN
F 2 "" H 4300 1450 50  0000 C CNN
F 3 "" H 4300 1450 50  0000 C CNN
	1    4300 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 588946AD
P 5350 1100
F 0 "P?" H 5350 1550 50  0000 C CNN
F 1 "Temp 1" V 5450 1100 50  0000 C CNN
F 2 "" H 5350 1100 50  0000 C CNN
F 3 "" H 5350 1100 50  0000 C CNN
	1    5350 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 588946D8
P 5600 1500
F 0 "#PWR?" H 5600 1250 50  0001 C CNN
F 1 "GND" H 5600 1350 50  0000 C CNN
F 2 "" H 5600 1500 50  0000 C CNN
F 3 "" H 5600 1500 50  0000 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5889473B
P 5600 700
F 0 "#PWR?" H 5600 550 50  0001 C CNN
F 1 "+5V" H 5600 840 50  0000 C CNN
F 2 "" H 5600 700 50  0000 C CNN
F 3 "" H 5600 700 50  0000 C CNN
	1    5600 700 
	1    0    0    -1  
$EndComp
NoConn ~ 5550 1350
Text Label 6100 850  2    60   ~ 0
temp1_int
Text Label 6100 1250 2    60   ~ 0
temp1_nCS
$Comp
L CONN_01X08 P?
U 1 1 58894C3E
P 6350 1100
F 0 "P?" H 6350 1550 50  0000 C CNN
F 1 "Temp 2" V 6450 1100 50  0000 C CNN
F 2 "" H 6350 1100 50  0000 C CNN
F 3 "" H 6350 1100 50  0000 C CNN
	1    6350 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 58894C44
P 6600 1500
F 0 "#PWR?" H 6600 1250 50  0001 C CNN
F 1 "GND" H 6600 1350 50  0000 C CNN
F 2 "" H 6600 1500 50  0000 C CNN
F 3 "" H 6600 1500 50  0000 C CNN
	1    6600 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58894C4A
P 6600 700
F 0 "#PWR?" H 6600 550 50  0001 C CNN
F 1 "+5V" H 6600 840 50  0000 C CNN
F 2 "" H 6600 700 50  0000 C CNN
F 3 "" H 6600 700 50  0000 C CNN
	1    6600 700 
	1    0    0    -1  
$EndComp
NoConn ~ 6550 1350
Text Label 7100 850  2    60   ~ 0
temp2_int
Text Label 7100 1250 2    60   ~ 0
temp2_nCS
$Comp
L CONN_01X08 P?
U 1 1 588950B3
P 7350 1100
F 0 "P?" H 7350 1550 50  0000 C CNN
F 1 "Temp 3" V 7450 1100 50  0000 C CNN
F 2 "" H 7350 1100 50  0000 C CNN
F 3 "" H 7350 1100 50  0000 C CNN
	1    7350 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 588950B9
P 7600 1500
F 0 "#PWR?" H 7600 1250 50  0001 C CNN
F 1 "GND" H 7600 1350 50  0000 C CNN
F 2 "" H 7600 1500 50  0000 C CNN
F 3 "" H 7600 1500 50  0000 C CNN
	1    7600 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588950BF
P 7600 700
F 0 "#PWR?" H 7600 550 50  0001 C CNN
F 1 "+5V" H 7600 840 50  0000 C CNN
F 2 "" H 7600 700 50  0000 C CNN
F 3 "" H 7600 700 50  0000 C CNN
	1    7600 700 
	1    0    0    -1  
$EndComp
NoConn ~ 7550 1350
Text Label 8100 850  2    60   ~ 0
temp3_int
Text Label 8100 1250 2    60   ~ 0
temp3_nCS
$Comp
L CONN_01X08 P?
U 1 1 58895134
P 8350 1100
F 0 "P?" H 8350 1550 50  0000 C CNN
F 1 "Temp 4" V 8450 1100 50  0000 C CNN
F 2 "" H 8350 1100 50  0000 C CNN
F 3 "" H 8350 1100 50  0000 C CNN
	1    8350 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5889513A
P 8600 1500
F 0 "#PWR?" H 8600 1250 50  0001 C CNN
F 1 "GND" H 8600 1350 50  0000 C CNN
F 2 "" H 8600 1500 50  0000 C CNN
F 3 "" H 8600 1500 50  0000 C CNN
	1    8600 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58895140
P 8600 700
F 0 "#PWR?" H 8600 550 50  0001 C CNN
F 1 "+5V" H 8600 840 50  0000 C CNN
F 2 "" H 8600 700 50  0000 C CNN
F 3 "" H 8600 700 50  0000 C CNN
	1    8600 700 
	1    0    0    -1  
$EndComp
NoConn ~ 8550 1350
Text Label 9100 850  2    60   ~ 0
temp4_int
Text Label 9100 1250 2    60   ~ 0
temp4_nCS
$Comp
L CONN_01X08 P?
U 1 1 588951F7
P 9350 1100
F 0 "P?" H 9350 1550 50  0000 C CNN
F 1 "Temp 5" V 9450 1100 50  0000 C CNN
F 2 "" H 9350 1100 50  0000 C CNN
F 3 "" H 9350 1100 50  0000 C CNN
	1    9350 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 588951FD
P 9600 1500
F 0 "#PWR?" H 9600 1250 50  0001 C CNN
F 1 "GND" H 9600 1350 50  0000 C CNN
F 2 "" H 9600 1500 50  0000 C CNN
F 3 "" H 9600 1500 50  0000 C CNN
	1    9600 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58895203
P 9600 700
F 0 "#PWR?" H 9600 550 50  0001 C CNN
F 1 "+5V" H 9600 840 50  0000 C CNN
F 2 "" H 9600 700 50  0000 C CNN
F 3 "" H 9600 700 50  0000 C CNN
	1    9600 700 
	1    0    0    -1  
$EndComp
NoConn ~ 9550 1350
Text Label 10100 850  2    60   ~ 0
temp5_int
Text Label 10100 1250 2    60   ~ 0
temp5_nCS
Text Label 10100 1150 2    60   ~ 0
temp_sdi
Text Label 10100 1050 2    60   ~ 0
temp_sdo
Text Label 10100 950  2    60   ~ 0
temp_sck
Text Label 4450 2400 0    60   ~ 0
temp_sdi
Text Label 4450 2300 0    60   ~ 0
temp_sdo
Text Label 4450 2200 0    60   ~ 0
temp_sck
Text Label 7100 1150 2    60   ~ 0
temp_sdi
Text Label 7100 1050 2    60   ~ 0
temp_sdo
Text Label 7100 950  2    60   ~ 0
temp_sck
Text Label 8100 1150 2    60   ~ 0
temp_sdi
Text Label 8100 1050 2    60   ~ 0
temp_sdo
Text Label 8100 950  2    60   ~ 0
temp_sck
Text Label 9100 1150 2    60   ~ 0
temp_sdi
Text Label 9100 1050 2    60   ~ 0
temp_sdo
Text Label 9100 950  2    60   ~ 0
temp_sck
Text Label 2200 4450 2    60   ~ 0
Bat_Heat_EN
Text Label 2200 4750 2    60   ~ 0
Probe3_EN
Text Label 2200 4650 2    60   ~ 0
Probe2_EN
Text Label 2200 4550 2    60   ~ 0
Probe1_EN
Text Label 2200 4850 2    60   ~ 0
Motor1_EN
Text Label 2200 4950 2    60   ~ 0
Motor1_DIR
Text Label 2200 5050 2    60   ~ 0
Motor1_PWM
Text Label 2200 5250 2    60   ~ 0
Motor2_EN
Text Label 2200 5350 2    60   ~ 0
Motor2_DIR
Text Label 2200 5450 2    60   ~ 0
Motor2_PWM
Text Label 2200 5650 2    60   ~ 0
RXSM_28V_sense
Text Label 2200 4350 2    60   ~ 0
Cam_Light_EN
$Comp
L GND #PWR?
U 1 1 58899B87
P 2200 5850
F 0 "#PWR?" H 2200 5600 50  0001 C CNN
F 1 "GND" H 2200 5700 50  0000 C CNN
F 2 "" H 2200 5850 50  0000 C CNN
F 3 "" H 2200 5850 50  0000 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
Text Label 2200 5150 2    60   ~ 0
Motor1_Current
Text Label 2200 5550 2    60   ~ 0
Motor2_Current
Text Label 2200 4250 2    60   ~ 0
Probe3_Current
Text Label 2200 4150 2    60   ~ 0
Probe2_Current
Text Label 2200 4050 2    60   ~ 0
Probe1_Current
Text Label 2200 3950 2    60   ~ 0
Probe3
Text Label 2200 3850 2    60   ~ 0
Probe2
Text Label 2200 3750 2    60   ~ 0
Probe1
$Comp
L LM1117-3.3 U?
U 1 1 588947D5
P 3250 6650
F 0 "U?" H 3350 6400 50  0000 C CNN
F 1 "LM1117-3.3" H 3250 6900 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3250 6650 50  0001 C CNN
F 3 "" H 3250 6650 50  0000 C CNN
	1    3250 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 588947DC
P 3250 7200
F 0 "#PWR?" H 3250 6950 50  0001 C CNN
F 1 "GND" H 3250 7050 50  0000 C CNN
F 2 "" H 3250 7200 50  0000 C CNN
F 3 "" H 3250 7200 50  0000 C CNN
	1    3250 7200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 588947E2
P 4250 6650
F 0 "#PWR?" H 4250 6500 50  0001 C CNN
F 1 "+3V3" H 4250 6790 50  0000 C CNN
F 2 "" H 4250 6650 50  0000 C CNN
F 3 "" H 4250 6650 50  0000 C CNN
	1    4250 6650
	0    1    1    0   
$EndComp
$Comp
L CP C?
U 1 1 588947E8
P 2500 6950
F 0 "C?" H 2525 7050 50  0000 L CNN
F 1 "10µ" H 2525 6850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2538 6800 50  0001 C CNN
F 3 "" H 2500 6950 50  0000 C CNN
	1    2500 6950
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 588947EF
P 4000 6950
F 0 "C?" H 4025 7050 50  0000 L CNN
F 1 "10µ" H 4025 6850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4038 6800 50  0001 C CNN
F 3 "" H 4000 6950 50  0000 C CNN
	1    4000 6950
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L?
U 1 1 588947F6
P 1600 6650
F 0 "L?" H 1600 6750 50  0000 C CNN
F 1 "10µH" H 1600 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 1600 6650 50  0001 C CNN
F 3 "" H 1600 6650 50  0000 C CNN
	1    1600 6650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588947FD
P 2050 6900
F 0 "C?" H 2075 7000 50  0000 L CNN
F 1 "100n" H 2075 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2088 6750 50  0001 C CNN
F 3 "" H 2050 6900 50  0000 C CNN
	1    2050 6900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5889504A
P 1000 6650
F 0 "#PWR?" H 1000 6500 50  0001 C CNN
F 1 "+5V" H 1000 6790 50  0000 C CNN
F 2 "" H 1000 6650 50  0000 C CNN
F 3 "" H 1000 6650 50  0000 C CNN
	1    1000 6650
	0    -1   -1   0   
$EndComp
$Comp
L MAX13432EESD U?
U 1 1 58896607
P 8850 3450
F 0 "U?" H 8500 4100 50  0000 L CNN
F 1 "MAX13432EESD" H 9200 4100 50  0000 R CNN
F 2 "SOIC_Packages:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8850 2450 50  0001 C CIN
F 3 "" H 8850 4250 50  0001 C CNN
	1    8850 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58896B74
P 9000 4250
F 0 "#PWR?" H 9000 4000 50  0001 C CNN
F 1 "GND" H 9000 4100 50  0000 C CNN
F 2 "" H 9000 4250 50  0000 C CNN
F 3 "" H 9000 4250 50  0000 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58896D4D
P 8050 2850
F 0 "#PWR?" H 8050 2700 50  0001 C CNN
F 1 "+3V3" H 8050 2990 50  0000 C CNN
F 2 "" H 8050 2850 50  0000 C CNN
F 3 "" H 8050 2850 50  0000 C CNN
	1    8050 2850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588971C2
P 9600 2850
F 0 "#PWR?" H 9600 2700 50  0001 C CNN
F 1 "+5V" H 9600 2990 50  0000 C CNN
F 2 "" H 9600 2850 50  0000 C CNN
F 3 "" H 9600 2850 50  0000 C CNN
	1    9600 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 58897687
P 8600 2250
F 0 "P?" H 8600 2400 50  0000 C CNN
F 1 "RasPi communication (UART)" H 8500 2100 50  0000 C CNN
F 2 "" H 8600 2250 50  0000 C CNN
F 3 "" H 8600 2250 50  0000 C CNN
	1    8600 2250
	1    0    0    -1  
$EndComp
Text Label 7950 2200 0    60   ~ 0
RasPi_TX
Text Label 7950 2300 0    60   ~ 0
RasPi_RX
$Comp
L CONN_01X05 P?
U 1 1 58898121
P 10650 6050
F 0 "P?" H 10650 6350 50  0000 C CNN
F 1 "Control Panel (2x LED + 2x Switch)" H 8950 6300 50  0000 C CNN
F 2 "" H 10650 6050 50  0000 C CNN
F 3 "" H 10650 6050 50  0000 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588996E6
P 9950 5850
F 0 "#PWR?" H 9950 5700 50  0001 C CNN
F 1 "+5V" H 9950 5990 50  0000 C CNN
F 2 "" H 9950 5850 50  0000 C CNN
F 3 "" H 9950 5850 50  0000 C CNN
	1    9950 5850
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 58899768
P 10200 5850
F 0 "R?" V 10280 5850 50  0000 C CNN
F 1 "33" V 10200 5850 50  0000 C CNN
F 2 "" V 10130 5850 50  0000 C CNN
F 3 "" H 10200 5850 50  0000 C CNN
	1    10200 5850
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 588997D9
P 10200 6050
F 0 "R?" V 10280 6050 50  0000 C CNN
F 1 "68" V 10200 6050 50  0000 C CNN
F 2 "" V 10130 6050 50  0000 C CNN
F 3 "" H 10200 6050 50  0000 C CNN
	1    10200 6050
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5889984D
P 10000 5950
F 0 "R?" V 10080 5950 50  0000 C CNN
F 1 "68" V 10000 5950 50  0000 C CNN
F 2 "" V 9930 5950 50  0000 C CNN
F 3 "" H 10000 5950 50  0000 C CNN
	1    10000 5950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5889A1AE
P 10200 6250
F 0 "R?" V 10280 6250 50  0000 C CNN
F 1 "1k" V 10200 6250 50  0000 C CNN
F 2 "" V 10130 6250 50  0000 C CNN
F 3 "" H 10200 6250 50  0000 C CNN
	1    10200 6250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5889A20A
P 10000 6150
F 0 "R?" V 10080 6150 50  0000 C CNN
F 1 "1k" V 10000 6150 50  0000 C CNN
F 2 "" V 9930 6150 50  0000 C CNN
F 3 "" H 10000 6150 50  0000 C CNN
	1    10000 6150
	0    1    1    0   
$EndComp
Text Label 9050 5950 0    60   ~ 0
CtrlPnl_LED1
Text Label 9050 6050 0    60   ~ 0
CtrlPnl_LED2
Text Label 9050 6150 0    60   ~ 0
CtrlPnl_SW1
Text Label 9050 6250 0    60   ~ 0
CtrlPnl_SW2
$Comp
L R R?
U 1 1 5889AFFE
P 9650 6350
F 0 "R?" V 9730 6350 50  0000 C CNN
F 1 "10k" V 9650 6350 50  0000 C CNN
F 2 "" V 9580 6350 50  0000 C CNN
F 3 "" H 9650 6350 50  0000 C CNN
	1    9650 6350
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5889B076
P 9850 6450
F 0 "R?" V 9930 6450 50  0000 C CNN
F 1 "10k" V 9850 6450 50  0000 C CNN
F 2 "" V 9780 6450 50  0000 C CNN
F 3 "" H 9850 6450 50  0000 C CNN
	1    9850 6450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5889B140
P 9300 6400
F 0 "#PWR?" H 9300 6150 50  0001 C CNN
F 1 "GND" H 9300 6250 50  0000 C CNN
F 2 "" H 9300 6400 50  0000 C CNN
F 3 "" H 9300 6400 50  0000 C CNN
	1    9300 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 5889CB4A
P 1050 3150
F 0 "P?" H 1050 3350 50  0000 C CNN
F 1 "DS18B20" V 1150 3150 50  0000 C CNN
F 2 "" H 1050 3150 50  0000 C CNN
F 3 "" H 1050 3150 50  0000 C CNN
	1    1050 3150
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5889CCC2
P 1350 2950
F 0 "#PWR?" H 1350 2800 50  0001 C CNN
F 1 "+3V3" H 1350 3090 50  0000 C CNN
F 2 "" H 1350 2950 50  0000 C CNN
F 3 "" H 1350 2950 50  0000 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889CF45
P 1350 3350
F 0 "#PWR?" H 1350 3100 50  0001 C CNN
F 1 "GND" H 1350 3200 50  0000 C CNN
F 2 "" H 1350 3350 50  0000 C CNN
F 3 "" H 1350 3350 50  0000 C CNN
	1    1350 3350
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q?
U 1 1 5889D042
P 2800 3250
F 0 "Q?" H 3000 3325 50  0000 L CNN
F 1 "2N7002" H 2600 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3000 3175 50  0001 L CIN
F 3 "" H 2800 3250 50  0000 L CNN
	1    2800 3250
	-1   0    0    -1  
$EndComp
$Comp
L 2N7002 Q?
U 1 1 5889D2E7
P 3350 3250
F 0 "Q?" H 3550 3325 50  0000 L CNN
F 1 "2N7002" H 3150 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3550 3175 50  0001 L CIN
F 3 "" H 3350 3250 50  0000 L CNN
	1    3350 3250
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5889D5F9
P 2700 2800
F 0 "R?" V 2780 2800 50  0000 C CNN
F 1 "4k7" V 2700 2800 50  0000 C CNN
F 2 "" V 2630 2800 50  0000 C CNN
F 3 "" H 2700 2800 50  0000 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5889D6B8
P 3250 2800
F 0 "R?" V 3330 2800 50  0000 C CNN
F 1 "100k" V 3250 2800 50  0000 C CNN
F 2 "" V 3180 2800 50  0000 C CNN
F 3 "" H 3250 2800 50  0000 C CNN
	1    3250 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889D947
P 2600 3550
F 0 "#PWR?" H 2600 3300 50  0001 C CNN
F 1 "GND" H 2600 3400 50  0000 C CNN
F 2 "" H 2600 3550 50  0000 C CNN
F 3 "" H 2600 3550 50  0000 C CNN
	1    2600 3550
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5889DFDA
P 3000 2550
F 0 "#PWR?" H 3000 2400 50  0001 C CNN
F 1 "+3V3" H 3000 2690 50  0000 C CNN
F 2 "" H 3000 2550 50  0000 C CNN
F 3 "" H 3000 2550 50  0000 C CNN
	1    3000 2550
	1    0    0    -1  
$EndComp
Text Label 4150 3300 2    60   ~ 0
1wire_TX
Text Label 4150 3400 2    60   ~ 0
1wire_RX
Text Notes 1550 2950 0    39   ~ 0
OneWire via UART\nhttps://www.maximintegrated.com/\nen/app-notes/index.mvp/id/214
Text Notes 8450 6400 0    39   ~ 0
short circuit protected\n(for control panel)
Text Notes 7950 2100 0    39   ~ 0
RasPi voltage 3.3V
Text Notes 1300 7050 0    39   ~ 0
power input PI filter
$Comp
L C C?
U 1 1 588A230B
P 3700 6950
F 0 "C?" H 3725 7050 50  0000 L CNN
F 1 "100n" H 3725 6850 50  0000 L CNN
F 2 "" H 3738 6800 50  0000 C CNN
F 3 "" H 3700 6950 50  0000 C CNN
	1    3700 6950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588A2CE0
P 2800 6950
F 0 "C?" H 2825 7050 50  0000 L CNN
F 1 "100n" H 2825 6850 50  0000 L CNN
F 2 "" H 2838 6800 50  0000 C CNN
F 3 "" H 2800 6950 50  0000 C CNN
	1    2800 6950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 588A2F2A
P 9450 2700
F 0 "C?" H 9475 2800 50  0000 L CNN
F 1 "100n" H 9475 2600 50  0000 L CNN
F 2 "" H 9488 2550 50  0000 C CNN
F 3 "" H 9450 2700 50  0000 C CNN
	1    9450 2700
	-1   0    0    1   
$EndComp
Text Notes 2750 1750 0    59   ~ 0
3x Force sensor: I2C, SPI or analog
Text Label 2400 2100 2    59   ~ 0
pressure_SCL
Text Label 2400 2200 2    59   ~ 0
pressure_SDA
Text Notes 2800 850  0    118  ~ 0
TODO
$Comp
L CONN_01X03 P?
U 1 1 588A3A71
P 1050 6150
F 0 "P?" H 1050 6350 50  0000 C CNN
F 1 "DEBUG" V 1150 6150 50  0000 C CNN
F 2 "" H 1050 6150 50  0000 C CNN
F 3 "" H 1050 6150 50  0000 C CNN
	1    1050 6150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 588A3DCB
P 1350 6150
F 0 "#PWR?" H 1350 5900 50  0001 C CNN
F 1 "GND" H 1350 6000 50  0000 C CNN
F 2 "" H 1350 6150 50  0000 C CNN
F 3 "" H 1350 6150 50  0000 C CNN
	1    1350 6150
	0    -1   -1   0   
$EndComp
Text Label 1750 6050 2    59   ~ 0
debug_TX
Text Label 1750 6250 2    59   ~ 0
debug_RX
Text Label 6100 1150 2    60   ~ 0
temp_sdi
Text Label 6100 1050 2    60   ~ 0
temp_sdo
Text Label 6100 950  2    60   ~ 0
temp_sck
Text Label 8400 4250 2    60   ~ 0
temp1_int
Text Label 8400 4350 2    60   ~ 0
temp2_int
Text Label 8400 4450 2    60   ~ 0
temp3_int
Text Label 8400 4550 2    60   ~ 0
temp4_int
Text Label 8400 4650 2    60   ~ 0
temp5_int
Text Label 8400 4750 2    60   ~ 0
temp1_nCS
Text Label 8400 4850 2    60   ~ 0
temp2_nCS
Text Label 8400 4950 2    60   ~ 0
temp3_nCS
Text Label 8400 5050 2    60   ~ 0
temp4_nCS
Text Label 8400 5150 2    60   ~ 0
temp5_nCS
$Comp
L CONN_01X22 P?
U 1 1 5892831E
P 1050 4800
F 0 "P?" H 1050 5950 50  0000 C CNN
F 1 "Mainboard control" V 1150 4800 50  0000 C CNN
F 2 "" H 1050 4800 50  0000 C CNN
F 3 "" H 1050 4800 50  0000 C CNN
	1    1050 4800
	-1   0    0    1   
$EndComp
Text Label 2200 5750 2    60   ~ 0
Batt_sense
$Comp
L PC3H7 U?
U 1 1 58C4A869
P 10200 4550
F 0 "U?" H 10000 4750 50  0000 L CNN
F 1 "PC3H7" H 10200 4750 50  0000 L CNN
F 2 "SOP-4" H 10000 4350 50  0000 L CIN
F 3 "" H 10225 4550 50  0000 L CNN
	1    10200 4550
	-1   0    0    -1  
$EndComp
$Comp
L PC3H7 U?
U 1 1 58C61294
P 10200 5000
F 0 "U?" H 10000 5200 50  0000 L CNN
F 1 "PC3H7" H 10200 5200 50  0000 L CNN
F 2 "SOP-4" H 10000 4800 50  0000 L CIN
F 3 "" H 10225 5000 50  0000 L CNN
	1    10200 5000
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 588968CE
P 10650 3400
F 0 "P?" H 10650 3650 50  0000 C CNN
F 1 "RXSM communication" V 10750 3600 50  0000 C CNN
F 2 "" H 10650 3400 50  0000 C CNN
F 3 "" H 10650 3400 50  0000 C CNN
	1    10650 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 58C65783
P 11000 4000
F 0 "P?" H 11000 4250 50  0000 C CNN
F 1 "RXSM Signals" V 11100 4000 50  0000 C CNN
F 2 "" H 11000 4000 50  0000 C CNN
F 3 "" H 11000 4000 50  0000 C CNN
	1    11000 4000
	1    0    0    1   
$EndComp
$Comp
L PC3H7 U?
U 1 1 58C694F1
P 10200 5450
F 0 "U?" H 10000 5650 50  0000 L CNN
F 1 "PC3H7" H 10200 5650 50  0000 L CNN
F 2 "SOP-4" H 10000 5250 50  0000 L CIN
F 3 "" H 10225 5450 50  0000 L CNN
	1    10200 5450
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C6EA4E
P 10800 4500
F 0 "R?" V 10880 4500 50  0000 C CNN
F 1 "3k" V 10800 4500 50  0000 C CNN
F 2 "" V 10730 4500 50  0000 C CNN
F 3 "" H 10800 4500 50  0000 C CNN
	1    10800 4500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C7124F
P 10800 4950
F 0 "R?" V 10880 4950 50  0000 C CNN
F 1 "3k" V 10800 4950 50  0000 C CNN
F 2 "" V 10730 4950 50  0000 C CNN
F 3 "" H 10800 4950 50  0000 C CNN
	1    10800 4950
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C71417
P 10800 5400
F 0 "R?" V 10880 5400 50  0000 C CNN
F 1 "3k" V 10800 5400 50  0000 C CNN
F 2 "" V 10730 5400 50  0000 C CNN
F 3 "" H 10800 5400 50  0000 C CNN
	1    10800 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58C71C5D
P 9750 5550
F 0 "#PWR?" H 9750 5300 50  0001 C CNN
F 1 "GND" H 9750 5400 50  0000 C CNN
F 2 "" H 9750 5550 50  0000 C CNN
F 3 "" H 9750 5550 50  0000 C CNN
	1    9750 5550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C75703
P 10100 4150
F 0 "R?" V 10180 4150 50  0000 C CNN
F 1 "1k" V 10100 4150 50  0000 C CNN
F 2 "" V 10030 4150 50  0000 C CNN
F 3 "" H 10100 4150 50  0000 C CNN
	1    10100 4150
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58C77434
P 10300 4100
F 0 "#PWR?" H 10300 3950 50  0001 C CNN
F 1 "+3V3" H 10300 4240 50  0000 C CNN
F 2 "" H 10300 4100 50  0000 C CNN
F 3 "" H 10300 4100 50  0000 C CNN
	1    10300 4100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58C77FFF
P 9200 4750
F 0 "#PWR?" H 9200 4600 50  0001 C CNN
F 1 "+3V3" H 9200 4890 50  0000 C CNN
F 2 "" H 9200 4750 50  0000 C CNN
F 3 "" H 9200 4750 50  0000 C CNN
	1    9200 4750
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 58C787CA
P 9450 4750
F 0 "R?" V 9530 4750 50  0000 C CNN
F 1 "1k" V 9450 4750 50  0000 C CNN
F 2 "" V 9380 4750 50  0000 C CNN
F 3 "" H 9450 4750 50  0000 C CNN
	1    9450 4750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 58C789B9
P 9450 5200
F 0 "R?" V 9530 5200 50  0000 C CNN
F 1 "1k" V 9450 5200 50  0000 C CNN
F 2 "" V 9380 5200 50  0000 C CNN
F 3 "" H 9450 5200 50  0000 C CNN
	1    9450 5200
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58C78D59
P 9200 5200
F 0 "#PWR?" H 9200 5050 50  0001 C CNN
F 1 "+3V3" H 9200 5340 50  0000 C CNN
F 2 "" H 9200 5200 50  0000 C CNN
F 3 "" H 9200 5200 50  0000 C CNN
	1    9200 5200
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 58C8FC8C
P 2000 2300
F 0 "R?" V 2080 2300 50  0000 C CNN
F 1 "4k7" V 2000 2300 50  0000 C CNN
F 2 "" V 1930 2300 50  0000 C CNN
F 3 "" H 2000 2300 50  0000 C CNN
	1    2000 2300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 58C90829
P 2250 2450
F 0 "R?" V 2330 2450 50  0000 C CNN
F 1 "4k7" V 2250 2450 50  0000 C CNN
F 2 "" V 2180 2450 50  0000 C CNN
F 3 "" H 2250 2450 50  0000 C CNN
	1    2250 2450
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58C90F6C
P 2500 2300
F 0 "#PWR?" H 2500 2150 50  0001 C CNN
F 1 "+3V3" H 2500 2440 50  0000 C CNN
F 2 "" H 2500 2300 50  0000 C CNN
F 3 "" H 2500 2300 50  0000 C CNN
	1    2500 2300
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 58C7A49A
P 1100 6900
F 0 "C?" H 1125 7000 50  0000 L CNN
F 1 "1µ" H 1125 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 6750 50  0001 C CNN
F 3 "" H 1100 6900 50  0000 C CNN
	1    1100 6900
	1    0    0    -1  
$EndComp
$Comp
L CMC FL?
U 1 1 58CAB5FF
P 9550 3150
F 0 "FL?" H 9550 3305 60  0000 C CNB
F 1 "CMC" H 9550 2990 45  0000 C CNN
F 2 "" H 9550 2925 40  0001 C CNN
F 3 "" H 9550 3300 60  0000 C CNN
F 4 "-" H 9550 3385 45  0001 C CNN "PART"
F 5 "Passive" H 9780 3440 50  0001 C CNN "Family"
	1    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L CMC FL?
U 1 1 58CAB836
P 9550 3650
F 0 "FL?" H 9550 3805 60  0000 C CNB
F 1 "CMC" H 9550 3490 45  0000 C CNN
F 2 "" H 9550 3425 40  0001 C CNN
F 3 "" H 9550 3800 60  0000 C CNN
F 4 "-" H 9550 3885 45  0001 C CNN "PART"
F 5 "Passive" H 9780 3940 50  0001 C CNN "Family"
	1    9550 3650
	1    0    0    -1  
$EndComp
Text Notes 9250 3400 0    39   ~ 0
2x Farnell #1735590
$Comp
L GND #PWR?
U 1 1 58CB34B4
P 10000 2450
F 0 "#PWR?" H 10000 2200 50  0001 C CNN
F 1 "GND" H 10000 2300 50  0000 C CNN
F 2 "" H 10000 2450 50  0000 C CNN
F 3 "" H 10000 2450 50  0000 C CNN
	1    10000 2450
	-1   0    0    1   
$EndComp
$Comp
L ESD_diode_dual D?
U 1 1 58CB6E51
P 9850 2700
F 0 "D?" H 9830 2820 39  0000 C CNN
F 1 "ESD" H 9850 2600 39  0000 C CNN
F 2 "" H 9850 2700 39  0001 C CNN
F 3 "" H 9850 2700 39  0001 C CNN
	1    9850 2700
	0    -1   -1   0   
$EndComp
$Comp
L ESD_diode_dual D?
U 1 1 58CB7050
P 10150 2700
F 0 "D?" H 10100 2800 39  0000 C CNN
F 1 "ESD" H 10150 2600 39  0000 C CNN
F 2 "" H 10150 2700 39  0001 C CNN
F 3 "" H 10150 2700 39  0001 C CNN
	1    10150 2700
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 58CC5712
P 8300 2700
F 0 "C?" H 8325 2800 50  0000 L CNN
F 1 "100n" H 8100 2600 50  0000 L CNN
F 2 "" H 8338 2550 50  0000 C CNN
F 3 "" H 8300 2700 50  0000 C CNN
	1    8300 2700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 58CD62E0
P 8850 2550
F 0 "#PWR?" H 8850 2300 50  0001 C CNN
F 1 "GND" H 8850 2400 50  0000 C CNN
F 2 "" H 8850 2550 50  0000 C CNN
F 3 "" H 8850 2550 50  0000 C CNN
	1    8850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1350 1450 1250
Wire Wire Line
	1450 1250 1350 1250
Wire Wire Line
	1450 1050 1450 1150
Wire Wire Line
	1450 1150 1350 1150
Wire Wire Line
	1450 1900 1450 2000
Wire Wire Line
	1450 2000 1350 2000
Wire Wire Line
	1450 2400 1450 2300
Wire Wire Line
	1450 2300 1350 2300
Wire Wire Line
	2600 850  2600 950 
Wire Wire Line
	2600 950  2500 950 
Wire Wire Line
	2600 1450 2600 1350
Wire Wire Line
	2600 1350 2500 1350
Wire Wire Line
	3450 850  3450 950 
Wire Wire Line
	3450 950  3350 950 
Wire Wire Line
	3450 1450 3450 1350
Wire Wire Line
	3450 1350 3350 1350
Wire Wire Line
	4300 850  4300 950 
Wire Wire Line
	4300 950  4200 950 
Wire Wire Line
	4300 1450 4300 1350
Wire Wire Line
	4300 1350 4200 1350
Wire Wire Line
	5600 700  5600 750 
Wire Wire Line
	5600 750  5550 750 
Wire Wire Line
	5550 1450 5600 1450
Wire Wire Line
	5600 1450 5600 1500
Wire Wire Line
	6100 850  5550 850 
Wire Wire Line
	6100 1250 5550 1250
Wire Wire Line
	6600 700  6600 750 
Wire Wire Line
	6600 750  6550 750 
Wire Wire Line
	6550 1450 6600 1450
Wire Wire Line
	6600 1450 6600 1500
Wire Wire Line
	7100 850  6550 850 
Wire Wire Line
	7100 1250 6550 1250
Wire Wire Line
	7600 700  7600 750 
Wire Wire Line
	7600 750  7550 750 
Wire Wire Line
	7550 1450 7600 1450
Wire Wire Line
	7600 1450 7600 1500
Wire Wire Line
	8100 850  7550 850 
Wire Wire Line
	8100 1250 7550 1250
Wire Wire Line
	8600 700  8600 750 
Wire Wire Line
	8600 750  8550 750 
Wire Wire Line
	8550 1450 8600 1450
Wire Wire Line
	8600 1450 8600 1500
Wire Wire Line
	9100 850  8550 850 
Wire Wire Line
	9100 1250 8550 1250
Wire Wire Line
	9600 700  9600 750 
Wire Wire Line
	9600 750  9550 750 
Wire Wire Line
	9550 1450 9600 1450
Wire Wire Line
	9600 1450 9600 1500
Wire Wire Line
	10100 850  9550 850 
Wire Wire Line
	10100 1250 9550 1250
Wire Wire Line
	10100 950  9550 950 
Wire Wire Line
	10100 1050 9550 1050
Wire Wire Line
	10100 1150 9550 1150
Wire Wire Line
	7100 950  6550 950 
Wire Wire Line
	7100 1050 6550 1050
Wire Wire Line
	7100 1150 6550 1150
Wire Wire Line
	8100 950  7550 950 
Wire Wire Line
	8100 1050 7550 1050
Wire Wire Line
	8100 1150 7550 1150
Wire Wire Line
	9100 950  8550 950 
Wire Wire Line
	9100 1050 8550 1050
Wire Wire Line
	9100 1150 8550 1150
Wire Wire Line
	1250 5850 2200 5850
Wire Wire Line
	1250 5450 5050 5450
Wire Wire Line
	1250 5350 5050 5350
Wire Wire Line
	1250 5250 5050 5250
Wire Wire Line
	1250 5050 5050 5050
Wire Wire Line
	1250 4950 5050 4950
Wire Wire Line
	1250 4850 5050 4850
Wire Wire Line
	1250 4750 5050 4750
Wire Wire Line
	1250 4650 5050 4650
Wire Wire Line
	1250 4550 5050 4550
Wire Wire Line
	1250 4450 5050 4450
Wire Wire Line
	1250 4350 5050 4350
Wire Wire Line
	1250 5550 5050 5550
Wire Wire Line
	1250 5150 5050 5150
Wire Wire Line
	1250 4250 5050 4250
Wire Wire Line
	1250 4150 5050 4150
Wire Wire Line
	1250 4050 5050 4050
Wire Wire Line
	1250 3950 5050 3950
Wire Wire Line
	1250 3850 5050 3850
Wire Wire Line
	1250 3750 5050 3750
Wire Wire Line
	1250 5650 5050 5650
Wire Wire Line
	3250 6950 3250 7200
Wire Wire Line
	4250 6650 3550 6650
Wire Wire Line
	3700 6800 3700 6650
Connection ~ 3700 6650
Wire Wire Line
	3700 7150 3700 7100
Connection ~ 3250 7150
Wire Wire Line
	2800 7150 2800 7100
Wire Wire Line
	1000 6650 1350 6650
Connection ~ 2800 7150
Wire Wire Line
	2050 7050 2050 7150
Wire Wire Line
	1850 6650 2950 6650
Wire Wire Line
	2800 6800 2800 6650
Connection ~ 2800 6650
Wire Wire Line
	2050 6750 2050 6650
Connection ~ 2050 6650
Wire Wire Line
	1100 7150 4000 7150
Wire Wire Line
	9450 2850 9450 2950
Wire Wire Line
	9350 2950 9600 2950
Wire Wire Line
	10150 5950 10450 5950
Wire Wire Line
	10450 5850 10350 5850
Wire Wire Line
	10350 6050 10450 6050
Wire Wire Line
	10150 6150 10450 6150
Wire Wire Line
	10450 6250 10350 6250
Wire Wire Line
	7900 6250 10050 6250
Wire Wire Line
	7900 6150 9850 6150
Wire Wire Line
	7900 6050 10050 6050
Wire Wire Line
	7900 5950 9850 5950
Wire Wire Line
	9800 6350 9800 6150
Connection ~ 9800 6150
Wire Wire Line
	10000 6250 10000 6450
Connection ~ 10000 6250
Wire Wire Line
	1350 2950 1350 3050
Wire Wire Line
	1350 3050 1250 3050
Wire Wire Line
	1250 3250 1350 3250
Wire Wire Line
	1350 3250 1350 3350
Wire Wire Line
	3250 2950 3250 3050
Wire Wire Line
	2700 3050 2700 2950
Wire Wire Line
	2700 3450 2700 3550
Wire Wire Line
	2600 3550 3250 3550
Wire Wire Line
	3250 3550 3250 3450
Wire Wire Line
	1250 3150 2200 3150
Wire Wire Line
	2200 3000 2200 3650
Wire Wire Line
	2200 3000 2700 3000
Connection ~ 2700 3000
Wire Wire Line
	2700 2650 2700 2600
Wire Wire Line
	2700 2600 3250 2600
Wire Wire Line
	3000 2600 3000 2550
Wire Wire Line
	3250 2600 3250 2650
Connection ~ 3000 2600
Wire Wire Line
	3000 3300 3050 3300
Wire Wire Line
	3050 3300 3050 3000
Wire Wire Line
	3050 3000 3250 3000
Connection ~ 3250 3000
Connection ~ 2200 3150
Wire Wire Line
	3550 3300 5050 3300
Wire Wire Line
	4000 7150 4000 7100
Connection ~ 3700 7150
Wire Wire Line
	4000 6800 4000 6650
Connection ~ 4000 6650
Wire Wire Line
	2500 7150 2500 7100
Connection ~ 2500 7150
Wire Wire Line
	2500 6800 2500 6650
Connection ~ 2500 6650
Wire Wire Line
	1350 2200 3600 2200
Wire Wire Line
	1350 2100 3700 2100
Wire Wire Line
	1350 6150 1250 6150
Wire Wire Line
	1250 6050 4550 6050
Wire Wire Line
	1250 6250 4650 6250
Wire Wire Line
	4450 2200 5050 2200
Wire Wire Line
	5050 2300 4450 2300
Wire Wire Line
	4450 2400 5050 2400
Wire Wire Line
	6100 950  5550 950 
Wire Wire Line
	6100 1050 5550 1050
Wire Wire Line
	6100 1150 5550 1150
Wire Wire Line
	5050 3050 3700 3050
Wire Wire Line
	3700 3050 3700 2100
Wire Wire Line
	3600 2200 3600 3150
Wire Wire Line
	3600 3150 5050 3150
Wire Wire Line
	8400 4250 7900 4250
Wire Wire Line
	7900 4350 8400 4350
Wire Wire Line
	8400 4450 7900 4450
Wire Wire Line
	7900 4550 8400 4550
Wire Wire Line
	8400 4650 7900 4650
Wire Wire Line
	7900 4750 8400 4750
Wire Wire Line
	8400 4850 7900 4850
Wire Wire Line
	7900 4950 8400 4950
Wire Wire Line
	8400 5050 7900 5050
Wire Wire Line
	7900 5150 8400 5150
Connection ~ 2700 3550
Wire Wire Line
	3650 3400 5050 3400
Wire Wire Line
	3650 3400 3650 3650
Wire Wire Line
	3650 3650 2200 3650
Wire Wire Line
	4550 6050 4550 5850
Wire Wire Line
	4550 5850 5050 5850
Wire Wire Line
	5050 5950 4650 5950
Wire Wire Line
	4650 5950 4650 6250
Wire Wire Line
	1250 5750 5050 5750
Wire Wire Line
	9300 6400 9400 6400
Wire Wire Line
	9400 6350 9400 6450
Wire Wire Line
	9400 6350 9500 6350
Wire Wire Line
	9400 6450 9700 6450
Connection ~ 9400 6400
Wire Wire Line
	9950 5850 10050 5850
Wire Wire Line
	10800 3850 10500 3850
Wire Wire Line
	10500 3850 10500 4450
Wire Wire Line
	10800 3950 10600 3950
Wire Wire Line
	10600 3950 10600 4900
Wire Wire Line
	10600 4900 10500 4900
Wire Wire Line
	10500 5350 10700 5350
Wire Wire Line
	10700 5350 10700 4050
Wire Wire Line
	10700 4050 10800 4050
Wire Wire Line
	10800 4650 10500 4650
Wire Wire Line
	10800 4350 10800 4150
Wire Wire Line
	10500 5550 10800 5550
Wire Wire Line
	10800 5250 10950 5250
Wire Wire Line
	10950 5250 10950 4300
Wire Wire Line
	10950 4300 10800 4300
Connection ~ 10800 4300
Wire Wire Line
	10800 4800 10950 4800
Connection ~ 10950 4800
Wire Wire Line
	10800 5100 10500 5100
Wire Wire Line
	9750 5550 9900 5550
Wire Wire Line
	9750 4650 9750 5550
Wire Wire Line
	9750 5100 9900 5100
Wire Wire Line
	9750 4650 9900 4650
Connection ~ 9750 5100
Connection ~ 9750 5550
Wire Wire Line
	9900 4450 9800 4450
Wire Wire Line
	9800 4450 9800 4550
Wire Wire Line
	9800 4550 8800 4550
Wire Wire Line
	8800 4550 8800 5350
Wire Wire Line
	9850 4450 9850 4150
Wire Wire Line
	9850 4150 9950 4150
Connection ~ 9850 4450
Wire Wire Line
	10300 4100 10300 4150
Wire Wire Line
	10300 4150 10250 4150
Wire Wire Line
	9900 4900 8900 4900
Wire Wire Line
	8900 4900 8900 5450
Wire Wire Line
	9900 5350 9000 5350
Wire Wire Line
	9200 5200 9300 5200
Wire Wire Line
	9600 5200 9600 5350
Connection ~ 9600 5350
Wire Wire Line
	9600 4750 9600 4900
Connection ~ 9600 4900
Wire Wire Line
	9200 4750 9300 4750
Wire Wire Line
	8800 5350 7900 5350
Wire Wire Line
	8900 5450 7900 5450
Wire Wire Line
	9000 5350 9000 5550
Wire Wire Line
	9000 5550 7900 5550
Wire Wire Line
	1850 2300 1750 2300
Wire Wire Line
	1750 2300 1750 2200
Connection ~ 1750 2200
Wire Wire Line
	2100 2450 1650 2450
Wire Wire Line
	1650 2450 1650 2100
Connection ~ 1650 2100
Wire Wire Line
	2500 2300 2150 2300
Wire Wire Line
	2400 2450 2450 2450
Wire Wire Line
	2450 2450 2450 2300
Connection ~ 2450 2300
Wire Wire Line
	1100 6750 1100 6650
Connection ~ 1100 6650
Wire Wire Line
	1100 7050 1100 7150
Connection ~ 2050 7150
Wire Wire Line
	9600 2950 9600 2850
Connection ~ 9450 2950
Wire Wire Line
	8050 2850 8050 2950
Wire Wire Line
	8050 2950 8350 2950
Wire Wire Line
	8300 2950 8300 2850
Connection ~ 8300 2950
Wire Wire Line
	9000 4250 9000 4200
Wire Wire Line
	8950 4200 9050 4200
Wire Wire Line
	8950 4200 8950 4150
Wire Wire Line
	9050 4200 9050 4150
Connection ~ 9000 4200
Wire Wire Line
	8350 3150 7900 3150
Wire Wire Line
	7900 3650 8350 3650
Wire Wire Line
	8300 2550 8300 2500
Wire Wire Line
	8300 2500 9450 2500
Wire Wire Line
	8850 2500 8850 2550
Wire Wire Line
	9450 2500 9450 2550
Connection ~ 8850 2500
Wire Wire Line
	7900 2200 8400 2200
Wire Wire Line
	7900 2300 8400 2300
Wire Wire Line
	9350 3050 9450 3050
Wire Wire Line
	9450 3250 9350 3250
Wire Wire Line
	9350 3550 9450 3550
Wire Wire Line
	9450 3750 9350 3750
Wire Wire Line
	9850 2550 9850 2500
Wire Wire Line
	9850 2500 10150 2500
Wire Wire Line
	10000 2500 10000 2450
Wire Wire Line
	10150 2500 10150 2550
Connection ~ 10000 2500
Wire Wire Line
	9650 3750 10350 3750
Wire Wire Line
	10350 3750 10350 3550
Wire Wire Line
	10350 3550 10450 3550
Wire Wire Line
	10450 3450 10250 3450
Wire Wire Line
	10250 3450 10250 3550
Wire Wire Line
	10250 3550 9650 3550
Wire Wire Line
	9650 3250 10250 3250
Wire Wire Line
	10250 3250 10250 3350
Wire Wire Line
	10250 3350 10450 3350
Wire Wire Line
	10450 3250 10350 3250
Wire Wire Line
	10350 3250 10350 3050
Wire Wire Line
	10350 3050 9650 3050
Wire Wire Line
	10200 2900 10200 3050
Connection ~ 10200 3050
Wire Wire Line
	10100 2900 10100 3250
Connection ~ 10100 3250
Wire Wire Line
	9900 2900 9900 3550
Connection ~ 9900 3550
Wire Wire Line
	9800 2900 9800 3750
Connection ~ 9800 3750
Text Notes 10400 2950 1    39   ~ 0
2x NXP PESD1CAN
$EndSCHEMATC
