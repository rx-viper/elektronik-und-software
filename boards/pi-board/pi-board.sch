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
LIBS:pam2306
LIBS:switches
LIBS:pi-board-cache
EELAYER 25 0
EELAYER END
$Descr User 19685 15748
encoding utf-8
Sheet 1 2
Title "RasPi CM board for Camera"
Date "2017-06-05"
Rev "2"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C1
U 1 1 5904A88A
P 16300 12650
F 0 "C1" H 16325 12750 50  0000 L CNN
F 1 "47u" H 16325 12550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 16338 12500 50  0001 C CNN
F 3 "" H 16300 12650 50  0001 C CNN
	1    16300 12650
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5904B515
P 16500 12650
F 0 "C2" H 16525 12750 50  0000 L CNN
F 1 "47u" H 16525 12550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 16538 12500 50  0001 C CNN
F 3 "" H 16500 12650 50  0001 C CNN
	1    16500 12650
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5904B589
P 16700 12650
F 0 "C3" H 16725 12750 50  0000 L CNN
F 1 "47u" H 16725 12550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 16738 12500 50  0001 C CNN
F 3 "" H 16700 12650 50  0001 C CNN
	1    16700 12650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5904BC42
P 16500 13100
F 0 "#PWR01" H 16500 12850 50  0001 C CNN
F 1 "GND" H 16500 12950 50  0000 C CNN
F 2 "" H 16500 13100 50  0001 C CNN
F 3 "" H 16500 13100 50  0001 C CNN
	1    16500 13100
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5904BEA6
P 17700 12650
F 0 "C4" H 17725 12750 50  0000 L CNN
F 1 "47u" H 17725 12550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 17738 12500 50  0001 C CNN
F 3 "" H 17700 12650 50  0001 C CNN
	1    17700 12650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5904BEC2
P 17700 12900
F 0 "#PWR02" H 17700 12650 50  0001 C CNN
F 1 "GND" H 17700 12750 50  0000 C CNN
F 2 "" H 17700 12900 50  0001 C CNN
F 3 "" H 17700 12900 50  0001 C CNN
	1    17700 12900
	1    0    0    -1  
$EndComp
Text Label 4250 8900 1    60   ~ 0
UART_RX
Text Label 4450 8900 1    60   ~ 0
UART_TX
Text Label 4550 8900 1    60   ~ 0
+5V
Text Label 4850 8900 1    60   ~ 0
Camera_light
$Comp
L CONN_01X04 J6
U 1 1 5904EE31
P 7000 9350
F 0 "J6" H 7000 9600 50  0000 C CNN
F 1 "Camera light board" V 7100 9350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7000 9350 50  0001 C CNN
F 3 "" H 7000 9350 50  0001 C CNN
	1    7000 9350
	0    1    1    0   
$EndComp
$Comp
L DB9_MALE J2
U 1 1 5904F568
P 4650 9550
F 0 "J2" H 4650 10100 50  0000 C CNN
F 1 "Main / Powerboard" H 4650 8975 50  0000 C CNN
F 2 "Connectors:DB9MD" H 4650 9550 50  0001 C CNN
F 3 "" H 4650 9550 50  0001 C CNN
	1    4650 9550
	0    1    1    0   
$EndComp
$Sheet
S 8950 9150 1000 800 
U 59050995
F0 "stepdown_pi" 60
F1 "stepdown_pi.sch" 60
F2 "+5V" I L 8950 9350 60 
F3 "+3.3V" I R 9950 9350 60 
F4 "+1.8V" I R 9950 9650 60 
$EndSheet
$Comp
L Board_RPi_CM3_200pConnector MD1
U 1 1 590107C2
P 9650 5800
F 0 "MD1" H 8900 -1850 50  0000 C CNN
F 1 "Board_RPi_CM3_200pConnector" H 9650 13450 50  0000 C CNN
F 2 "pi:rpi-cm" H 9650 5800 10  0001 C CNN
F 3 "_" H 9650 5800 10  0001 C CNN
F 4 "_" H 9650 5800 10  0001 C CNN "Manf#"
F 5 "_" H 9650 5800 10  0001 C CNN "Manf"
F 6 "_" H 9650 5800 10  0001 C CNN "Optn"
	1    9650 5800
	0    1    1    0   
$EndComp
Text Label 15050 3850 0    60   ~ 0
MISO
Text Label 14750 3850 0    60   ~ 0
MOSI
Text Label 14600 3700 0    60   ~ 0
CLCK
Text Label 16550 3950 0    60   ~ 0
SDA
Text Label 16400 3850 0    60   ~ 0
SCL
Text Label 15200 3650 0    60   ~ 0
CE
$Comp
L CONN_01X08 J8
U 1 1 59071AB8
P 14850 2900
F 0 "J8" H 14850 3350 50  0000 C CNN
F 1 "Flir lepton board" V 14950 2900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 14850 2900 50  0001 C CNN
F 3 "" H 14850 2900 50  0001 C CNN
	1    14850 2900
	0    -1   -1   0   
$EndComp
NoConn ~ 15200 6800
NoConn ~ 15050 6800
NoConn ~ 16250 6800
NoConn ~ 14750 6800
NoConn ~ 14600 6800
NoConn ~ 13700 6800
NoConn ~ 13550 6800
NoConn ~ 13250 6800
NoConn ~ 13100 6800
NoConn ~ 12800 6800
NoConn ~ 12650 6800
NoConn ~ 12350 6800
NoConn ~ 12200 6800
NoConn ~ 11900 6800
NoConn ~ 11750 6800
NoConn ~ 11450 6800
NoConn ~ 11300 6800
NoConn ~ 11000 6800
NoConn ~ 10850 6800
NoConn ~ 10550 6800
NoConn ~ 10100 6800
NoConn ~ 9950 6800
NoConn ~ 9650 6800
NoConn ~ 9500 6800
NoConn ~ 9200 6800
NoConn ~ 9050 6800
NoConn ~ 8750 6800
NoConn ~ 8600 6800
NoConn ~ 8300 6800
NoConn ~ 8150 6800
NoConn ~ 6950 6800
NoConn ~ 6800 6800
NoConn ~ 6500 6800
NoConn ~ 6350 6800
NoConn ~ 6050 6800
NoConn ~ 5900 6800
NoConn ~ 4250 6800
NoConn ~ 4100 6800
NoConn ~ 3950 6800
NoConn ~ 3800 6800
NoConn ~ 3650 6800
NoConn ~ 2900 6800
NoConn ~ 2900 4800
NoConn ~ 3800 4800
NoConn ~ 3950 4800
NoConn ~ 4100 4800
NoConn ~ 4250 4800
NoConn ~ 5000 4800
NoConn ~ 5150 4800
NoConn ~ 5450 4800
NoConn ~ 5600 4800
NoConn ~ 5900 4800
NoConn ~ 6050 4800
NoConn ~ 6350 4800
NoConn ~ 6500 4800
NoConn ~ 6800 4800
NoConn ~ 6950 4800
NoConn ~ 7250 4800
NoConn ~ 7400 4800
NoConn ~ 7700 4800
NoConn ~ 7850 4800
NoConn ~ 8150 4800
NoConn ~ 8300 4800
NoConn ~ 8600 4800
NoConn ~ 8750 4800
NoConn ~ 9050 4800
NoConn ~ 9200 4800
NoConn ~ 9500 4800
NoConn ~ 9650 4800
NoConn ~ 9950 4800
NoConn ~ 10100 4800
NoConn ~ 10400 4800
NoConn ~ 10550 4800
NoConn ~ 10850 4800
NoConn ~ 11000 4800
NoConn ~ 11300 4800
NoConn ~ 11450 4800
NoConn ~ 11750 4800
NoConn ~ 11900 4800
NoConn ~ 12200 4800
NoConn ~ 12350 4800
NoConn ~ 12650 4800
NoConn ~ 12800 4800
NoConn ~ 13550 4800
NoConn ~ 13700 4800
NoConn ~ 15500 4800
NoConn ~ 15650 4800
NoConn ~ 15950 4800
NoConn ~ 16100 4800
NoConn ~ 16850 4800
NoConn ~ 17000 4800
$Comp
L GND #PWR03
U 1 1 590B8C1F
P 7350 9050
F 0 "#PWR03" H 7350 8800 50  0001 C CNN
F 1 "GND" H 7350 8900 50  0000 C CNN
F 2 "" H 7350 9050 50  0001 C CNN
F 3 "" H 7350 9050 50  0001 C CNN
	1    7350 9050
	1    0    0    -1  
$EndComp
NoConn ~ 4650 9250
NoConn ~ 4950 9250
$Comp
L GND #PWR04
U 1 1 590B96F8
P 5500 9100
F 0 "#PWR04" H 5500 8850 50  0001 C CNN
F 1 "GND" H 5500 8950 50  0000 C CNN
F 2 "" H 5500 9100 50  0001 C CNN
F 3 "" H 5500 9100 50  0001 C CNN
	1    5500 9100
	1    0    0    -1  
$EndComp
$Comp
L DB9_MALE J3
U 1 1 590BB621
P 4750 2600
F 0 "J3" H 4750 3150 50  0000 C CNN
F 1 "DB9_MALE" H 4750 2025 50  0000 C CNN
F 2 "Connectors:DB9MD" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 590BC254
P 4450 3050
F 0 "#PWR05" H 4450 2800 50  0001 C CNN
F 1 "GND" H 4450 2900 50  0000 C CNN
F 2 "" H 4450 3050 50  0001 C CNN
F 3 "" H 4450 3050 50  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 590BCB0F
P 17400 4600
F 0 "#PWR06" H 17400 4350 50  0001 C CNN
F 1 "GND" H 17400 4450 50  0000 C CNN
F 2 "" H 17400 4600 50  0001 C CNN
F 3 "" H 17400 4600 50  0001 C CNN
	1    17400 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 590BCB77
P 17400 7050
F 0 "#PWR07" H 17400 6800 50  0001 C CNN
F 1 "GND" H 17400 6900 50  0000 C CNN
F 2 "" H 17400 7050 50  0001 C CNN
F 3 "" H 17400 7050 50  0001 C CNN
	1    17400 7050
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 590C09FF
P 6050 8700
F 0 "D1" H 6050 8800 50  0000 C CNN
F 1 "LED" H 6050 8600 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6050 8700 50  0001 C CNN
F 3 "" H 6050 8700 50  0001 C CNN
	1    6050 8700
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 590C0B81
P 5550 8700
F 0 "R1" V 5630 8700 50  0000 C CNN
F 1 "220R" V 5550 8700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5480 8700 50  0001 C CNN
F 3 "" H 5550 8700 50  0001 C CNN
	1    5550 8700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 590C153A
P 6200 8850
F 0 "#PWR08" H 6200 8600 50  0001 C CNN
F 1 "GND" H 6200 8700 50  0000 C CNN
F 2 "" H 6200 8850 50  0001 C CNN
F 3 "" H 6200 8850 50  0001 C CNN
	1    6200 8850
	1    0    0    -1  
$EndComp
Text Notes 5500 8550 0    60   ~ 0
red power LED
$Comp
L USB_OTG J5
U 1 1 590F0D7A
P 6200 2550
F 0 "J5" H 6000 3000 50  0000 L CNN
F 1 "USB_OTG" H 6000 2900 50  0000 L CNN
F 2 "Connectors:USB_Micro-B" H 6350 2500 50  0001 C CNN
F 3 "" H 6350 2500 50  0001 C CNN
	1    6200 2550
	0    1    1    0   
$EndComp
$Comp
L GS3 J1
U 1 1 590F118A
P 4550 3700
F 0 "J1" H 4600 3900 50  0000 C CNN
F 1 "GS3" H 4600 3501 50  0000 C CNN
F 2 "Connectors:GS3" V 4638 3626 50  0001 C CNN
F 3 "" H 4550 3700 50  0001 C CNN
	1    4550 3700
	0    1    1    0   
$EndComp
$Comp
L GS3 J4
U 1 1 590F124B
P 5050 3700
F 0 "J4" H 5100 3900 50  0000 C CNN
F 1 "GS3" H 5100 3501 50  0000 C CNN
F 2 "Connectors:GS3" V 5138 3626 50  0001 C CNN
F 3 "" H 5050 3700 50  0001 C CNN
	1    5050 3700
	0    1    1    0   
$EndComp
Text GLabel 6950 3150 2    60   Input ~ 0
VUSB
$Comp
L GND #PWR09
U 1 1 590F4D59
P 5500 2700
F 0 "#PWR09" H 5500 2450 50  0001 C CNN
F 1 "GND" H 5500 2550 50  0000 C CNN
F 2 "" H 5500 2700 50  0001 C CNN
F 3 "" H 5500 2700 50  0001 C CNN
	1    5500 2700
	1    0    0    -1  
$EndComp
$Comp
L GS3 J7
U 1 1 590F66C9
P 13000 9500
F 0 "J7" H 13050 9700 50  0000 C CNN
F 1 "GS3" H 13050 9301 50  0000 C CNN
F 2 "Connectors:GS3" V 13088 9426 50  0001 C CNN
F 3 "" H 13000 9500 50  0001 C CNN
	1    13000 9500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 590F6948
P 12700 9050
F 0 "#PWR010" H 12700 8800 50  0001 C CNN
F 1 "GND" H 12700 8900 50  0000 C CNN
F 2 "" H 12700 9050 50  0001 C CNN
F 3 "" H 12700 9050 50  0001 C CNN
	1    12700 9050
	1    0    0    -1  
$EndComp
Text GLabel 13350 9000 2    60   Input ~ 0
VUSB
$Comp
L R R3
U 1 1 590F779A
P 12000 10150
F 0 "R3" V 12080 10150 50  0000 C CNN
F 1 "47k" V 12000 10150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 11930 10150 50  0001 C CNN
F 3 "" H 12000 10150 50  0001 C CNN
	1    12000 10150
	0    1    1    0   
$EndComp
Text GLabel 13800 11800 2    60   Input ~ 0
+3.3V
$Comp
L R R4
U 1 1 590F7E93
P 13300 11800
F 0 "R4" V 13380 11800 50  0000 C CNN
F 1 "470R" V 13300 11800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 13230 11800 50  0001 C CNN
F 3 "" H 13300 11800 50  0001 C CNN
	1    13300 11800
	0    1    1    0   
$EndComp
$Comp
L TEST TP1
U 1 1 590F8409
P 13950 10950
F 0 "TP1" H 13950 11250 50  0000 C BNN
F 1 "TST_EMC_DISABLE" H 13950 11200 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 13950 10950 50  0001 C CNN
F 3 "" H 13950 10950 50  0001 C CNN
	1    13950 10950
	-1   0    0    1   
$EndComp
Text Notes 12800 11600 0    60   ~ 0
Status ACT LED
$Comp
L Q_NMOS_DGS Q1
U 1 1 590F65BA
P 12350 10750
F 0 "Q1" H 12550 10800 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 12550 10700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 12550 10850 50  0001 C CNN
F 3 "" H 12350 10750 50  0001 C CNN
	1    12350 10750
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_DGS Q2
U 1 1 590F6C4A
P 13000 10750
F 0 "Q2" H 13200 10800 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 13200 10700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 13200 10850 50  0001 C CNN
F 3 "" H 13000 10750 50  0001 C CNN
	1    13000 10750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 590F81C8
P 11350 11000
F 0 "#PWR011" H 11350 10750 50  0001 C CNN
F 1 "GND" H 11350 10850 50  0000 C CNN
F 2 "" H 11350 11000 50  0001 C CNN
F 3 "" H 11350 11000 50  0001 C CNN
	1    11350 11000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 590F6DAC
P 12000 9650
F 0 "R2" V 12080 9650 50  0000 C CNN
F 1 "100k" V 12000 9650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 11930 9650 50  0001 C CNN
F 3 "" H 12000 9650 50  0001 C CNN
	1    12000 9650
	0    1    1    0   
$EndComp
Text Notes 12450 8850 0    60   ~ 0
USB boot enable (like CMIO schematics)
Text Notes 6000 2250 0    60   ~ 0
USB boot
Text Notes 4400 2350 0    60   ~ 0
RGB camera
$Comp
L C C5
U 1 1 591007D5
P 18550 12650
F 0 "C5" H 18575 12750 50  0000 L CNN
F 1 "47u" H 18575 12550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 18588 12500 50  0001 C CNN
F 3 "" H 18550 12650 50  0001 C CNN
	1    18550 12650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 591007DB
P 18550 12900
F 0 "#PWR012" H 18550 12650 50  0001 C CNN
F 1 "GND" H 18550 12750 50  0000 C CNN
F 2 "" H 18550 12900 50  0001 C CNN
F 3 "" H 18550 12900 50  0001 C CNN
	1    18550 12900
	1    0    0    -1  
$EndComp
NoConn ~ 6000 2850
NoConn ~ 4850 2900
NoConn ~ 4950 2900
NoConn ~ 5050 2900
NoConn ~ 5150 2900
NoConn ~ 4750 2900
$Comp
L LED D2
U 1 1 59105B55
P 12900 11800
F 0 "D2" H 12900 11900 50  0000 C CNN
F 1 "LED" H 12900 11700 50  0000 C CNN
F 2 "LEDs:LED_0603" H 12900 11800 50  0001 C CNN
F 3 "" H 12900 11800 50  0001 C CNN
	1    12900 11800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6800 2150 8450
Wire Wire Line
	3200 6800 3200 7800
Wire Wire Line
	3350 7300 3350 6800
Wire Wire Line
	4700 7600 4700 6800
Wire Wire Line
	2300 7300 2300 6800
Wire Wire Line
	14000 4800 14000 4400
Wire Wire Line
	14000 4400 17600 4400
Wire Wire Line
	14300 3100 14300 4800
Connection ~ 4700 7600
Wire Wire Line
	14000 6800 14000 7600
Connection ~ 14000 7600
Wire Wire Line
	14300 7600 14300 6800
Wire Wire Line
	2150 2900 2150 4800
Wire Wire Line
	2300 4450 2300 4800
Wire Wire Line
	2600 4300 2600 4800
Wire Wire Line
	2750 4300 2750 4800
Wire Wire Line
	3200 3900 3200 4800
Wire Wire Line
	3200 4450 3350 4450
Wire Wire Line
	3350 4450 3350 4800
Wire Wire Line
	3050 6800 3050 7000
Wire Wire Line
	2450 7000 17400 7000
Wire Wire Line
	3500 7000 3500 6800
Wire Wire Line
	4400 7000 4400 6800
Connection ~ 3500 7000
Wire Wire Line
	4850 7000 4850 6800
Connection ~ 4400 7000
Wire Wire Line
	5750 7000 5750 6800
Connection ~ 4850 7000
Wire Wire Line
	6200 7000 6200 6800
Connection ~ 5750 7000
Wire Wire Line
	6650 7000 6650 6800
Connection ~ 6200 7000
Wire Wire Line
	7100 7000 7100 6800
Connection ~ 6650 7000
Wire Wire Line
	8000 7000 8000 6800
Connection ~ 7100 7000
Wire Wire Line
	8450 7000 8450 6800
Connection ~ 8000 7000
Wire Wire Line
	8900 7000 8900 6800
Connection ~ 8450 7000
Wire Wire Line
	9350 7000 9350 6800
Connection ~ 8900 7000
Wire Wire Line
	9800 7000 9800 6800
Connection ~ 9350 7000
Wire Wire Line
	10250 7000 10250 6800
Connection ~ 9800 7000
Wire Wire Line
	10700 7000 10700 6800
Connection ~ 10250 7000
Wire Wire Line
	11150 7000 11150 6800
Connection ~ 10700 7000
Wire Wire Line
	11600 7000 11600 6800
Connection ~ 11150 7000
Wire Wire Line
	12050 7000 12050 6800
Connection ~ 11600 7000
Wire Wire Line
	12500 7000 12500 6800
Connection ~ 12050 7000
Wire Wire Line
	12950 7000 12950 6800
Connection ~ 12500 7000
Wire Wire Line
	13400 7000 13400 6800
Connection ~ 12950 7000
Wire Wire Line
	13850 7000 13850 6800
Connection ~ 13400 7000
Wire Wire Line
	14450 7000 14450 6800
Connection ~ 13850 7000
Wire Wire Line
	14900 7000 14900 6800
Connection ~ 14450 7000
Wire Wire Line
	15350 7000 15350 6800
Connection ~ 14900 7000
Wire Wire Line
	15800 7000 15800 6800
Connection ~ 15350 7000
Wire Wire Line
	16700 7000 16700 6800
Connection ~ 15800 7000
Wire Wire Line
	17150 4600 17150 4800
Wire Wire Line
	2450 4600 17400 4600
Wire Wire Line
	16700 4600 16700 4800
Wire Wire Line
	16250 4600 16250 4800
Connection ~ 16700 4600
Wire Wire Line
	15800 4600 15800 4800
Connection ~ 16250 4600
Wire Wire Line
	15350 4600 15350 4800
Connection ~ 15800 4600
Wire Wire Line
	14900 4600 14900 4800
Connection ~ 15350 4600
Wire Wire Line
	14450 3350 14450 4800
Connection ~ 14900 4600
Wire Wire Line
	13850 4600 13850 4800
Connection ~ 14450 4600
Connection ~ 13850 4600
Wire Wire Line
	12950 4600 12950 4800
Wire Wire Line
	12500 4600 12500 4800
Connection ~ 12950 4600
Wire Wire Line
	12050 4600 12050 4800
Connection ~ 12500 4600
Wire Wire Line
	11600 4600 11600 4800
Connection ~ 12050 4600
Wire Wire Line
	11150 4600 11150 4800
Connection ~ 11600 4600
Wire Wire Line
	10700 4600 10700 4800
Connection ~ 11150 4600
Wire Wire Line
	10250 4600 10250 4800
Connection ~ 10700 4600
Wire Wire Line
	9800 4600 9800 4800
Connection ~ 10250 4600
Wire Wire Line
	9350 4600 9350 4800
Connection ~ 9800 4600
Wire Wire Line
	8900 4600 8900 4800
Connection ~ 9350 4600
Wire Wire Line
	8450 4600 8450 4800
Connection ~ 8900 4600
Wire Wire Line
	8000 4600 8000 4800
Connection ~ 8450 4600
Wire Wire Line
	7550 4600 7550 4800
Connection ~ 8000 4600
Wire Wire Line
	7100 4600 7100 4800
Connection ~ 7550 4600
Wire Wire Line
	6650 4600 6650 4800
Connection ~ 7100 4600
Wire Wire Line
	6200 4600 6200 4800
Connection ~ 6650 4600
Wire Wire Line
	5750 4600 5750 4800
Connection ~ 6200 4600
Wire Wire Line
	5300 4600 5300 4800
Connection ~ 5750 4600
Wire Wire Line
	4850 4600 4850 4800
Connection ~ 5300 4600
Wire Wire Line
	4400 4600 4400 4800
Connection ~ 4850 4600
Wire Wire Line
	3500 4600 3500 4800
Connection ~ 4400 4600
Wire Wire Line
	3050 4600 3050 4800
Connection ~ 3500 4600
Wire Wire Line
	16300 12500 16300 12350
Wire Wire Line
	16300 12350 16700 12350
Wire Wire Line
	16500 12200 16500 12500
Wire Wire Line
	16700 12350 16700 12500
Connection ~ 16500 12350
Wire Wire Line
	16300 12800 16300 12950
Wire Wire Line
	16300 12950 16700 12950
Wire Wire Line
	16500 12800 16500 13100
Wire Wire Line
	16700 12950 16700 12800
Connection ~ 16500 12950
Wire Wire Line
	17700 12900 17700 12800
Wire Wire Line
	4250 8100 4250 9250
Wire Wire Line
	17950 8200 4450 8200
Wire Wire Line
	4450 8200 4450 9250
Connection ~ 4050 4600
Wire Wire Line
	4850 8350 4850 9250
Wire Wire Line
	4850 8350 6850 8350
Connection ~ 3350 7300
Wire Wire Line
	6850 8350 6850 9150
Wire Wire Line
	6850 9050 6950 9050
Wire Wire Line
	6950 9050 6950 9150
Connection ~ 6850 9050
Wire Wire Line
	7050 9150 7050 9050
Wire Wire Line
	7050 9050 7350 9050
Connection ~ 7150 9050
Wire Wire Line
	9950 9650 11850 9650
Wire Wire Line
	9950 9350 10150 9350
Wire Wire Line
	10150 9350 10150 7600
Connection ~ 10150 7600
Wire Wire Line
	8950 9350 8200 9350
Connection ~ 8650 7000
Wire Wire Line
	15050 4800 15050 3450
Wire Wire Line
	14750 4800 14750 3450
Wire Wire Line
	14600 4800 14600 3450
Wire Wire Line
	4250 8100 17800 8100
Wire Wire Line
	16400 3300 16400 4800
Wire Wire Line
	16550 3200 16550 4800
Wire Wire Line
	15200 3350 15200 4800
Wire Wire Line
	14600 3450 14700 3450
Wire Wire Line
	14700 3450 14700 3100
Wire Wire Line
	14750 3450 14800 3450
Wire Wire Line
	14800 3450 14800 3100
Wire Wire Line
	15050 3450 14900 3450
Wire Wire Line
	14900 3450 14900 3100
Wire Wire Line
	15200 3350 15000 3350
Wire Wire Line
	15000 3350 15000 3100
Wire Wire Line
	16400 3300 15100 3300
Wire Wire Line
	15100 3300 15100 3100
Wire Wire Line
	16550 3200 15200 3200
Wire Wire Line
	15200 3200 15200 3100
Wire Wire Line
	14600 3100 14600 3350
Wire Wire Line
	14600 3350 14450 3350
Wire Wire Line
	14300 3100 14500 3100
Connection ~ 2150 4450
Connection ~ 2150 7300
Wire Wire Line
	3200 7800 1350 7800
Wire Wire Line
	1350 7800 1350 3900
Wire Wire Line
	1350 3900 3200 3900
Connection ~ 3200 4450
Connection ~ 3200 7300
Wire Wire Line
	7150 9050 7150 9150
Wire Wire Line
	3200 7300 10450 7300
Connection ~ 14300 4400
Wire Wire Line
	17600 4400 17600 7600
Connection ~ 14300 7600
Wire Wire Line
	2450 4800 2450 4600
Connection ~ 3050 4600
Wire Wire Line
	2450 6800 2450 7000
Connection ~ 3050 7000
Wire Wire Line
	5050 9100 5050 9250
Wire Wire Line
	4350 9100 5500 9100
Wire Wire Line
	4750 9250 4750 9100
Connection ~ 5050 9100
Wire Wire Line
	4350 2900 2150 2900
Wire Wire Line
	2150 3500 1000 3500
Wire Wire Line
	1000 3500 1000 8450
Wire Wire Line
	1000 8450 4550 8450
Connection ~ 4550 8450
Wire Wire Line
	4450 2900 4450 3050
Wire Wire Line
	17400 7000 17400 7050
Connection ~ 16700 7000
Connection ~ 17150 4600
Wire Wire Line
	17950 4000 17950 8200
Wire Wire Line
	13100 4000 13100 4800
Wire Wire Line
	13100 4000 17950 4000
Wire Wire Line
	17800 8100 17800 4200
Wire Wire Line
	17800 4200 13250 4200
Wire Wire Line
	4550 8300 4550 9250
Wire Wire Line
	4550 8300 8200 8300
Wire Wire Line
	8200 8300 8200 9350
Wire Wire Line
	4350 9250 4350 9100
Connection ~ 4750 9100
Wire Wire Line
	5400 8700 4550 8700
Wire Wire Line
	5700 8700 5900 8700
Wire Wire Line
	6200 8700 6200 8850
Connection ~ 2150 8450
Wire Wire Line
	2150 7300 2300 7300
Wire Wire Line
	2150 4450 2300 4450
Connection ~ 2150 3500
Wire Wire Line
	2600 7600 2600 6800
Wire Wire Line
	2750 6800 2750 7600
Wire Wire Line
	1700 4300 2750 4300
Wire Wire Line
	1700 7600 1700 4300
Connection ~ 2600 4300
Connection ~ 2750 7600
Connection ~ 2600 7600
Connection ~ 4550 8700
Wire Wire Line
	4550 6800 4550 7000
Connection ~ 4550 7000
Wire Wire Line
	17600 7600 1700 7600
Wire Wire Line
	5500 2550 5800 2550
Wire Wire Line
	4550 3850 4550 4800
Wire Wire Line
	4700 4800 4700 4200
Wire Wire Line
	4550 2900 4550 3550
Wire Wire Line
	4550 3550 4450 3550
Wire Wire Line
	5050 3850 5050 4200
Wire Wire Line
	5050 4200 4700 4200
Wire Wire Line
	4750 3550 4950 3550
Wire Wire Line
	4650 3550 4650 3100
Wire Wire Line
	4650 3100 6100 3100
Wire Wire Line
	6100 3100 6100 2850
Wire Wire Line
	5150 3550 5150 3150
Wire Wire Line
	5150 3150 6200 3150
Wire Wire Line
	6200 3150 6200 2850
Wire Wire Line
	6400 2850 6400 3150
Wire Wire Line
	6400 3150 6950 3150
Wire Wire Line
	5500 2450 5500 2700
Connection ~ 5500 2550
Wire Wire Line
	12350 7150 12350 10550
Wire Wire Line
	12700 9050 12700 9000
Wire Wire Line
	12700 9000 12900 9000
Wire Wire Line
	12900 9000 12900 9350
Wire Wire Line
	13100 9000 13350 9000
Wire Wire Line
	11350 10150 11850 10150
Wire Wire Line
	12150 10150 13000 10150
Wire Wire Line
	11350 10850 12150 10850
Wire Wire Line
	12550 10850 12800 10850
Wire Wire Line
	13000 9650 13000 10550
Connection ~ 13000 10150
Wire Wire Line
	11350 10150 11350 11000
Connection ~ 11350 10850
Wire Wire Line
	12650 10850 12650 11800
Connection ~ 12650 10850
Wire Wire Line
	17150 6800 17150 10850
Wire Wire Line
	17150 10850 13200 10850
Wire Wire Line
	10450 7300 10450 9650
Wire Wire Line
	12350 7150 10400 7150
Wire Wire Line
	10400 7150 10400 6800
Connection ~ 10450 9650
Connection ~ 12350 9650
Wire Wire Line
	12150 9650 12350 9650
Wire Wire Line
	13400 4800 13400 4600
Connection ~ 13400 4600
Wire Wire Line
	13250 4200 13250 4800
Wire Wire Line
	4750 3550 4750 3050
Wire Wire Line
	4750 3050 4650 3050
Wire Wire Line
	4650 3050 4650 2900
Wire Wire Line
	17700 12500 17700 12400
Wire Wire Line
	18550 12900 18550 12800
Wire Wire Line
	18550 12500 18550 12400
Wire Wire Line
	13800 11800 13450 11800
Wire Wire Line
	13100 9350 13100 9000
Wire Wire Line
	13050 11800 13150 11800
Text Label 4700 4400 0    60   ~ 0
USB-
Text Label 4550 4400 2    60   ~ 0
USB+
Text Label 5150 3500 0    60   ~ 0
USB_boot-
Text Label 4750 3400 0    60   ~ 0
USB_cam-
Text Label 4650 3250 0    60   ~ 0
USB_boot+
Text Label 4550 3400 2    60   ~ 0
USB_cam+
Text Notes 16750 11900 0    60   ~ 0
Decouple capaciators step down converter
$Comp
L R R10
U 1 1 5936EC06
P 5650 2450
F 0 "R10" V 5550 2450 50  0000 C CNN
F 1 "NC" V 5650 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5580 2450 50  0001 C CNN
F 3 "" H 5650 2450 50  0001 C CNN
	1    5650 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	12650 11800 12750 11800
Wire Wire Line
	13950 10950 13950 10850
Connection ~ 13950 10850
Text GLabel 16500 12200 1    60   Input ~ 0
+3.3V
Text GLabel 17700 12400 1    60   Input ~ 0
+1.8V
Text GLabel 18550 12400 1    60   Input ~ 0
+5V
Text GLabel 10000 8700 0    60   Input ~ 0
+3.3V
Wire Wire Line
	10000 8700 10150 8700
Connection ~ 10150 8700
Text GLabel 10700 8700 2    60   Input ~ 0
+1.8V
Wire Wire Line
	10700 8700 10450 8700
Connection ~ 10450 8700
$EndSCHEMATC
