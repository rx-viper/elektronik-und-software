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
LIBS:d-sub_high-pin-count
LIBS:DB
LIBS:wiring-diagram-cache
EELAYER 25 0
EELAYER END
$Descr User 11693 35433
encoding utf-8
Sheet 1 1
Title "Wiring Diagram"
Date "2017-05-05"
Rev "1"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DB9_FEMALE J102_mainboard
U 1 1 5953828C
P 2700 1550
F 0 "J102_mainboard" H 2700 2100 50  0000 C CNN
F 1 "DB9_FEMALE" H 2700 975 50  0000 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1550
	-1   0    0    1   
$EndComp
Text Label 3050 1850 0    60   ~ 0
pressure_SCL
Text Label 3050 1750 0    60   ~ 0
pressure_SDA
Text Label 3050 1950 0    60   ~ 0
pressure_GND
Text Label 3050 1650 0    60   ~ 0
pressure_VCC_3V3
Text Notes 6500 1450 0    60   ~ 0
BOARD: pressure-sensor
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS1731
U 1 1 59538F72
P 7300 350
F 0 "J1_temperature-sensor-DS1731" H 7300 725 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 7300 -50 50  0000 C CNN
F 2 "" H 7300 650 50  0001 C CNN
F 3 "" H 7300 650 50  0001 C CNN
	1    7300 350 
	-1   0    0    1   
$EndComp
Text Label 3050 1450 0    60   ~ 0
temp_VCC_3V3
Text Label 3050 1350 0    60   ~ 0
temp_SCL
Text Label 3050 1250 0    60   ~ 0
temp_SDA
Text Label 3050 1150 0    60   ~ 0
temp_GND
Text Notes 6500 -150 0    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L DB9_FEMALE J103_mainboard
U 1 1 5953BEB8
P 2700 3150
F 0 "J103_mainboard" H 2700 3700 50  0000 C CNN
F 1 "DB9_FEMALE" H 2700 2575 50  0000 C CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	-1   0    0    1   
$EndComp
Text Label 3050 3550 0    60   ~ 0
raspi_TX
Text Label 3050 3350 0    60   ~ 0
raspi_RX
$Comp
L +3V3 #PWR?
U 1 1 5953D4F6
P 6900 1700
F 0 "#PWR?" H 6900 1550 50  0001 C CNN
F 1 "+3V3" H 6900 1840 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3450 3400 3450
Wire Wire Line
	3000 3350 3400 3350
Wire Wire Line
	3000 3550 3400 3550
Wire Notes Line
	6500 -150 6500 800 
Wire Notes Line
	7950 -150 6500 -150
Wire Notes Line
	7950 800  7950 -150
Wire Notes Line
	6500 800  7950 800 
Wire Wire Line
	6600 450  7000 450 
Wire Wire Line
	6600 50   6600 450 
Wire Wire Line
	3550 50   6600 50  
Wire Wire Line
	6700 650  7000 650 
Wire Wire Line
	6700 350  6700 650 
Wire Wire Line
	3850 350  6700 350 
Wire Wire Line
	6700 50   7000 50  
Wire Wire Line
	6700 150  6700 50  
Wire Wire Line
	3650 150  6700 150 
Wire Wire Line
	3750 250  7000 250 
Wire Wire Line
	3550 50   3550 1150
Wire Wire Line
	3650 150  3650 1250
Wire Wire Line
	3750 250  3750 1350
Wire Wire Line
	3850 350  3850 1450
Wire Wire Line
	3550 1150 3000 1150
Wire Wire Line
	3650 1250 3000 1250
Wire Wire Line
	3750 1350 3000 1350
Wire Wire Line
	3850 1450 3000 1450
Wire Notes Line
	6500 2400 6500 1450
Wire Notes Line
	7750 2400 6500 2400
Wire Notes Line
	7750 1450 7750 2400
Wire Notes Line
	6500 1450 7750 1450
Wire Wire Line
	6600 2250 7000 2250
Wire Wire Line
	6600 1650 6600 2250
Wire Wire Line
	3000 1650 6600 1650
Wire Wire Line
	6700 2050 7000 2050
Wire Wire Line
	6700 1950 6700 2050
Wire Wire Line
	3000 1950 6700 1950
Wire Wire Line
	6700 1650 7000 1650
Wire Wire Line
	6700 1750 6700 1650
Wire Wire Line
	3000 1750 6700 1750
Wire Wire Line
	3000 1850 7000 1850
Text Label 3050 3450 0    60   ~ 0
cam_GND
$Comp
L DB_26 U1201_mainboard
U 1 1 5953C94B
P 2600 5300
F 0 "U1201_mainboard" H 2600 3950 60  0000 C CNN
F 1 "DB_26" H 2600 6750 60  0000 C CNN
F 2 "" H 3800 5300 60  0001 C CNN
F 3 "" H 3800 5300 60  0001 C CNN
	1    2600 5300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04_MALE J1_pressure-sensor
U 1 1 595383DD
P 7300 1950
F 0 "J1_pressure-sensor" H 7300 2325 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 7300 1550 50  0000 C CNN
F 2 "" H 7300 2250 50  0001 C CNN
F 3 "" H 7300 2250 50  0001 C CNN
	1    7300 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 4100 3400 4100
Wire Wire Line
	3000 4200 3400 4200
Wire Wire Line
	3000 4300 3400 4300
Wire Wire Line
	3000 4400 3400 4400
Wire Wire Line
	3000 4500 10950 4500
Wire Wire Line
	3000 4600 10850 4600
Wire Wire Line
	3000 4700 10750 4700
Wire Wire Line
	3000 4800 10650 4800
Wire Wire Line
	3000 4900 9700 4900
Wire Wire Line
	3000 5000 9900 5000
Wire Wire Line
	3000 5100 3400 5100
Wire Wire Line
	3000 5200 9200 5200
Wire Wire Line
	3000 5300 9100 5300
Wire Wire Line
	3000 5400 9000 5400
Wire Wire Line
	3000 5500 8900 5500
Wire Wire Line
	3000 5600 8000 5600
Wire Wire Line
	3000 5700 8200 5700
Wire Wire Line
	3000 5800 3400 5800
Wire Wire Line
	3000 5900 7450 5900
Wire Wire Line
	3000 6000 7350 6000
Wire Wire Line
	3000 6100 7250 6100
Wire Wire Line
	3000 6200 7150 6200
Wire Wire Line
	3000 6300 6450 6300
Wire Wire Line
	3000 6400 6450 6400
Wire Wire Line
	3000 6500 3400 6500
Wire Wire Line
	3000 6600 3400 6600
Text Label 3050 6200 0    60   ~ 0
enc1_A+
Text Label 3050 6100 0    60   ~ 0
enc1_A-
Text Label 3050 6000 0    60   ~ 0
enc1_B+
Text Label 3050 5900 0    60   ~ 0
enc1_B-
Text Label 3050 6400 0    60   ~ 0
enc1_GND
Text Label 3050 6300 0    60   ~ 0
enc1_5V
Text Label 3050 5500 0    60   ~ 0
enc2_A+
Text Label 3050 5400 0    60   ~ 0
enc2_A-
Text Label 3050 5300 0    60   ~ 0
enc2_B+
Text Label 3050 5200 0    60   ~ 0
enc2_B-
Text Label 3050 5600 0    60   ~ 0
enc2_GND
Text Label 3050 5700 0    60   ~ 0
enc2_5V
Text Label 3050 5000 0    60   ~ 0
enc3_5V
Text Label 3050 4800 0    60   ~ 0
enc3_A+
Text Label 3050 4700 0    60   ~ 0
enc3_A-
Text Label 3050 4600 0    60   ~ 0
enc3_B+
Text Label 3050 4500 0    60   ~ 0
enc3_B-
Text Label 3050 4900 0    60   ~ 0
enc3_GND
$Comp
L CONN_02X03 J1_optical-distance_3
U 1 1 59542CBF
P 10150 5100
F 0 "J1_optical-distance_3" H 10150 5300 50  0000 C CNN
F 1 "CONN_02X03" H 10150 4900 50  0000 C CNN
F 2 "" H 10150 3900 50  0001 C CNN
F 3 "" H 10150 3900 50  0001 C CNN
	1    10150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4900 9700 5100
Wire Wire Line
	9700 5100 9900 5100
Wire Wire Line
	10650 4800 10650 5000
Wire Wire Line
	10650 5000 10400 5000
Wire Wire Line
	10750 4700 10750 5100
Wire Wire Line
	10750 5100 10400 5100
Wire Wire Line
	10850 4600 10850 5200
Wire Wire Line
	10850 5200 10400 5200
Wire Wire Line
	10950 4500 10950 5400
Wire Wire Line
	10950 5400 9800 5400
Wire Wire Line
	9800 5400 9800 5200
Wire Wire Line
	9800 5200 9900 5200
$Comp
L CONN_02X03 J1_optical-distance_1
U 1 1 5954347B
P 6700 6400
F 0 "J1_optical-distance_1" H 6700 6600 50  0000 C CNN
F 1 "CONN_02X03" H 6700 6200 50  0000 C CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6200 7150 6300
Wire Wire Line
	7150 6300 6950 6300
Wire Wire Line
	7250 6100 7250 6400
Wire Wire Line
	7250 6400 6950 6400
Wire Wire Line
	7350 6000 7350 6500
Wire Wire Line
	7350 6500 6950 6500
Wire Wire Line
	7450 5900 7450 6650
Wire Wire Line
	7450 6650 6300 6650
Wire Wire Line
	6300 6650 6300 6500
Wire Wire Line
	6300 6500 6450 6500
$Comp
L CONN_02X03 J1_optical-distance_?
U 1 1 59543BF8
P 8450 5800
F 0 "J1_optical-distance_?" H 8450 6000 50  0000 C CNN
F 1 "CONN_02X03" H 8450 5600 50  0000 C CNN
F 2 "" H 8450 4600 50  0001 C CNN
F 3 "" H 8450 4600 50  0001 C CNN
	1    8450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5600 8000 5800
Wire Wire Line
	8000 5800 8200 5800
Wire Wire Line
	8900 5500 8900 5700
Wire Wire Line
	8900 5700 8700 5700
Wire Wire Line
	9000 5400 9000 5800
Wire Wire Line
	9000 5800 8700 5800
Wire Wire Line
	9100 5300 9100 5900
Wire Wire Line
	9100 5900 8700 5900
Wire Wire Line
	9200 5200 9200 6050
Wire Wire Line
	9200 6050 8000 6050
Wire Wire Line
	8000 6050 8000 5900
Wire Wire Line
	8000 5900 8200 5900
Wire Notes Line
	6200 6700 6200 5850
Wire Notes Line
	6200 5850 7500 5850
Wire Notes Line
	7500 5850 7500 6700
Wire Notes Line
	7500 6700 6200 6700
Wire Notes Line
	7950 6100 9250 6100
Wire Notes Line
	9250 6100 9250 5150
Wire Notes Line
	9250 5150 7950 5150
Wire Notes Line
	7950 5150 7950 6100
Wire Notes Line
	9650 5450 11000 5450
Wire Notes Line
	11000 5450 11000 4450
Wire Notes Line
	11000 4450 9650 4450
Wire Notes Line
	9650 4450 9650 5450
Text Notes 9650 4450 0    60   ~ 0
BOARD: optical-distance
Text Notes 7950 5150 0    60   ~ 0
BOARD: optical-distance
Text Notes 6200 5850 0    60   ~ 0
BOARD: optical-distance
$Comp
L DB_78 U202_mainboard
U 1 1 59546962
P 2550 11650
F 0 "U202_mainboard" H 2550 7350 60  0000 C CNN
F 1 "DB_78" H 2550 15650 60  0000 C CNN
F 2 "" H 2400 15350 60  0001 C CNN
F 3 "" H 2400 15350 60  0001 C CNN
	1    2550 11650
	-1   0    0    1   
$EndComp
Text Notes 1600 11700 1    60   ~ 0
Temperature sensor connectors
$Comp
L DB_44 U201_mainboard
U 1 1 59546FD6
P 2600 18350
F 0 "U201_mainboard" H 2600 16000 60  0000 C CNN
F 1 "DB_44" H 2600 20600 60  0000 C CNN
F 2 "" H 3800 18350 60  0001 C CNN
F 3 "" H 3800 18350 60  0001 C CNN
	1    2600 18350
	-1   0    0    1   
$EndComp
$Comp
L DB25_FEMALE J201_mainboard
U 1 1 59548AFB
P 2700 22350
F 0 "J201_mainboard" H 2700 23700 50  0000 C CNN
F 1 "DB25_FEMALE" H 2700 20975 50  0000 C CNN
F 2 "" H 2700 22350 50  0001 C CNN
F 3 "" H 2700 22350 50  0001 C CNN
	1    2700 22350
	-1   0    0    1   
$EndComp
Wire Notes Line
	4000 800  4000 23800
Wire Notes Line
	1000 800  4000 800 
Text Notes 1000 800  0    60   ~ 0
BOARD: mainboard
Wire Notes Line
	4000 23800 1000 23800
$Comp
L DB15_MALE J101_powerboard
U 1 1 59552ADF
P 2700 25400
F 0 "J101_powerboard" H 2720 26250 50  0000 C CNN
F 1 "DB15_MALE" H 2700 24525 50  0000 C CNN
F 2 "" H 2700 25400 50  0001 C CNN
F 3 "" H 2700 25400 50  0001 C CNN
	1    2700 25400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 24700 3100 24700
Wire Wire Line
	3100 24700 3100 24800
Wire Wire Line
	3000 24800 3700 24800
Connection ~ 3100 24800
Wire Wire Line
	3000 24900 3700 24900
Wire Wire Line
	3000 25100 3700 25100
Wire Wire Line
	3000 25300 3700 25300
Wire Wire Line
	3000 25400 3700 25400
Wire Wire Line
	3000 25500 3700 25500
Wire Wire Line
	3000 25600 3700 25600
Wire Wire Line
	3000 25700 3700 25700
Wire Wire Line
	3000 25800 3700 25800
Wire Wire Line
	3000 25900 3700 25900
Wire Wire Line
	3000 26100 3700 26100
Wire Wire Line
	3100 26100 3100 26000
Wire Wire Line
	3100 26000 3000 26000
Connection ~ 3100 26100
Text Label 3150 26100 0    60   ~ 0
RXSM_GND
Text Label 3150 24800 0    60   ~ 0
RXSM_POWER
Text Label 3150 24900 0    60   ~ 0
RXSM_CHARGE+
Text Label 3150 25100 0    60   ~ 0
RXSM_SODS
Text Label 3150 25300 0    60   ~ 0
RXSM_SOE
Text Label 3150 25400 0    60   ~ 0
RXSM_CHARGE-
Text Label 3150 25500 0    60   ~ 0
RXSM_LO
Text Label 3150 25600 0    60   ~ 0
RXSM_RX_A
Text Label 3150 25700 0    60   ~ 0
RXSM_RX_Y
Text Label 3150 25800 0    60   ~ 0
RXSM_B(inverted)
Text Label 3150 25900 0    60   ~ 0
RXSM_Z(inverted)
$Comp
L DB9_FEMALE J103_powerboard
U 1 1 59556B6B
P 2700 27050
F 0 "J103_powerboard" H 2700 27600 50  0000 C CNN
F 1 "DB9_FEMALE" H 2700 26475 50  0000 C CNN
F 2 "" H 2700 27050 50  0001 C CNN
F 3 "" H 2700 27050 50  0001 C CNN
	1    2700 27050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 26850 3700 26850
Text Label 3100 26850 0    60   ~ 0
camera-light_LED_OUT
Wire Wire Line
	3000 26950 3700 26950
Text Label 3100 26950 0    60   ~ 0
camera-light_GND
$Comp
L DB15_FEMALE J104_powerboard
U 1 1 595585AE
P 2700 28750
F 0 "J104_powerboard" H 2720 29600 50  0000 C CNN
F 1 "DB15_FEMALE" H 2700 27875 50  0000 C CNN
F 2 "" H 2700 28750 50  0001 C CNN
F 3 "" H 2700 28750 50  0001 C CNN
	1    2700 28750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 28050 3700 28050
Wire Wire Line
	3000 28150 3700 28150
Wire Wire Line
	3000 28250 3700 28250
Wire Wire Line
	3000 28350 3700 28350
Text Label 3100 28150 0    60   ~ 0
motor_PHASE_W
Text Label 3100 28250 0    60   ~ 0
motor_PHASE_V
Text Label 3100 28350 0    60   ~ 0
motor_PHASE_U
Wire Wire Line
	3000 28550 3700 28550
Wire Wire Line
	3000 28650 3700 28650
Text Label 3100 28650 0    60   ~ 0
endswitch_out
Text Label 3100 28550 0    60   ~ 0
endswitch_5V
Wire Wire Line
	3000 28750 3700 28750
Wire Wire Line
	3000 28850 3700 28850
Wire Wire Line
	3000 28950 3700 28950
Wire Wire Line
	3000 29050 3700 29050
Text Label 3100 29050 0    60   ~ 0
motor-encoder_A+
Text Label 3100 28950 0    60   ~ 0
motor-encoder_A-
Text Label 3100 28850 0    60   ~ 0
motor-encoder_B+
Text Label 3100 28750 0    60   ~ 0
motor-encoder_B-
Wire Wire Line
	3000 29450 3700 29450
Wire Wire Line
	3000 29350 3700 29350
Wire Wire Line
	3000 29250 3700 29250
Text Label 3100 29450 0    60   ~ 0
hall_U
Text Label 3100 29350 0    60   ~ 0
hall_V
Text Label 3100 29250 0    60   ~ 0
hall_W
$Comp
L DB25_FEMALE J801_powerboard
U 1 1 5955DA13
P 2700 31300
F 0 "J801_powerboard" H 2700 32650 50  0000 C CNN
F 1 "DB25_FEMALE" H 2700 29925 50  0000 C CNN
F 2 "" H 2700 31300 50  0001 C CNN
F 3 "" H 2700 31300 50  0001 C CNN
	1    2700 31300
	-1   0    0    1   
$EndComp
Wire Notes Line
	4000 24450 1000 24450
Wire Notes Line
	4000 24450 4000 32900
Wire Notes Line
	1000 24450 1000 32900
Wire Notes Line
	1000 32900 4000 32900
Text Notes 1000 24450 0    60   ~ 0
BOARD: powerboard
Wire Notes Line
	1000 23800 1000 800 
$EndSCHEMATC
