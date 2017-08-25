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
$Descr User 11693 39331
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
P 2600 3250
F 0 "J102_mainboard" H 2600 3800 50  0000 C CNN
F 1 "DB9_FEMALE" H 2600 2675 50  0000 C CNN
F 2 "" H 2600 3250 50  0001 C CNN
F 3 "" H 2600 3250 50  0001 C CNN
	1    2600 3250
	-1   0    0    1   
$EndComp
Text Label 2950 3550 0    60   ~ 0
pressure_SCL
Text Label 2950 3450 0    60   ~ 0
pressure_SDA
Text Label 2950 3650 0    60   ~ 0
pressure_GND
Text Label 2950 3350 0    60   ~ 0
pressure_VCC_3V3
Text Notes 6400 3150 0    60   ~ 0
BOARD: pressure-sensor
Text Label 2950 3150 0    60   ~ 0
temp_VCC_3V3
Text Label 2950 3050 0    60   ~ 0
temp_SCL
Text Label 2950 2950 0    60   ~ 0
temp_SDA
Text Label 2950 2850 0    60   ~ 0
temp_GND
$Comp
L DB9_FEMALE J103_mainboard
U 1 1 5953BEB8
P 2600 4850
F 0 "J103_mainboard" H 2600 5400 50  0000 C CNN
F 1 "DB9_FEMALE" H 2600 4275 50  0000 C CNN
F 2 "" H 2600 4850 50  0001 C CNN
F 3 "" H 2600 4850 50  0001 C CNN
	1    2600 4850
	-1   0    0    1   
$EndComp
Text Label 2950 5250 0    60   ~ 0
raspi_TX
Text Label 2950 5050 0    60   ~ 0
raspi_RX
Text Label 2950 5150 0    60   ~ 0
cam_GND
$Comp
L DB_26 U1201_mainboard
U 1 1 5953C94B
P 2500 7000
F 0 "U1201_mainboard" H 2500 5650 60  0000 C CNN
F 1 "DB_26" H 2500 8450 60  0000 C CNN
F 2 "" H 3700 7000 60  0001 C CNN
F 3 "" H 3700 7000 60  0001 C CNN
	1    2500 7000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04_MALE J1_pressure-sensor
U 1 1 595383DD
P 7200 3650
F 0 "J1_pressure-sensor" H 7200 4025 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 7200 3250 50  0000 C CNN
F 2 "" H 7200 3950 50  0001 C CNN
F 3 "" H 7200 3950 50  0001 C CNN
	1    7200 3650
	-1   0    0    1   
$EndComp
Text Label 2950 7900 0    60   ~ 0
enc1_A+
Text Label 2950 7800 0    60   ~ 0
enc1_A-
Text Label 2950 7700 0    60   ~ 0
enc1_B+
Text Label 2950 7600 0    60   ~ 0
enc1_B-
Text Label 2950 8100 0    60   ~ 0
enc1_GND
Text Label 2950 8000 0    60   ~ 0
enc1_5V
Text Label 2950 7200 0    60   ~ 0
enc2_A+
Text Label 2950 7100 0    60   ~ 0
enc2_A-
Text Label 2950 7000 0    60   ~ 0
enc2_B+
Text Label 2950 6900 0    60   ~ 0
enc2_B-
Text Label 2950 7300 0    60   ~ 0
enc2_GND
Text Label 2950 7400 0    60   ~ 0
enc2_5V
Text Label 2950 6700 0    60   ~ 0
enc3_5V
Text Label 2950 6500 0    60   ~ 0
enc3_A+
Text Label 2950 6400 0    60   ~ 0
enc3_A-
Text Label 2950 6300 0    60   ~ 0
enc3_B+
Text Label 2950 6200 0    60   ~ 0
enc3_B-
Text Label 2950 6600 0    60   ~ 0
enc3_GND
$Comp
L CONN_02X03 J1_optical-distance_3
U 1 1 59542CBF
P 10050 6800
F 0 "J1_optical-distance_3" H 10050 7000 50  0000 C CNN
F 1 "CONN_02X03" H 10050 6600 50  0000 C CNN
F 2 "" H 10050 5600 50  0001 C CNN
F 3 "" H 10050 5600 50  0001 C CNN
	1    10050 6800
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J1_optical-distance_1
U 1 1 5954347B
P 6600 8100
F 0 "J1_optical-distance_1" H 6600 8300 50  0000 C CNN
F 1 "CONN_02X03" H 6600 7900 50  0000 C CNN
F 2 "" H 6600 6900 50  0001 C CNN
F 3 "" H 6600 6900 50  0001 C CNN
	1    6600 8100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J1_optical-distance_?
U 1 1 59543BF8
P 8350 7500
F 0 "J1_optical-distance_?" H 8350 7700 50  0000 C CNN
F 1 "CONN_02X03" H 8350 7300 50  0000 C CNN
F 2 "" H 8350 6300 50  0001 C CNN
F 3 "" H 8350 6300 50  0001 C CNN
	1    8350 7500
	1    0    0    -1  
$EndComp
Text Notes 9550 6150 0    60   ~ 0
BOARD: optical-distance
Text Notes 7850 6850 0    60   ~ 0
BOARD: optical-distance
Text Notes 6100 7550 0    60   ~ 0
BOARD: optical-distance
$Comp
L DB_78 U202_mainboard
U 1 1 59546962
P 2450 13350
F 0 "U202_mainboard" H 2450 9050 60  0000 C CNN
F 1 "DB_78" H 2450 17350 60  0000 C CNN
F 2 "" H 2300 17050 60  0001 C CNN
F 3 "" H 2300 17050 60  0001 C CNN
	1    2450 13350
	-1   0    0    -1  
$EndComp
Text Notes 1500 13400 1    60   ~ 0
Temperature sensor connectors
$Comp
L DB_44 U201_mainboard
U 1 1 59546FD6
P 2500 20050
F 0 "U201_mainboard" H 2500 17700 60  0000 C CNN
F 1 "DB_44" H 2500 22300 60  0000 C CNN
F 2 "" H 3700 20050 60  0001 C CNN
F 3 "" H 3700 20050 60  0001 C CNN
	1    2500 20050
	-1   0    0    -1  
$EndComp
$Comp
L DB25_FEMALE J201_mainboard
U 1 1 59548AFB
P 2600 24050
F 0 "J201_mainboard" H 2600 25400 50  0000 C CNN
F 1 "DB25_FEMALE" H 2600 22675 50  0000 C CNN
F 2 "" H 2600 24050 50  0001 C CNN
F 3 "" H 2600 24050 50  0001 C CNN
	1    2600 24050
	-1   0    0    -1  
$EndComp
Text Notes 900  2500 0    60   ~ 0
BOARD: mainboard
$Comp
L DB15_MALE J101_powerboard
U 1 1 59552ADF
P 2600 27100
F 0 "J101_powerboard" H 2620 27950 50  0000 C CNN
F 1 "DB15_MALE" H 2600 26225 50  0000 C CNN
F 2 "" H 2600 27100 50  0001 C CNN
F 3 "" H 2600 27100 50  0001 C CNN
	1    2600 27100
	-1   0    0    1   
$EndComp
Text Label 3050 27800 0    60   ~ 0
RXSM_GND
Text Label 3050 26500 0    60   ~ 0
RXSM_POWER
Text Label 3050 26600 0    60   ~ 0
RXSM_CHARGE+
Text Label 3050 26800 0    60   ~ 0
RXSM_SODS
Text Label 3050 27000 0    60   ~ 0
RXSM_SOE
Text Label 3050 27100 0    60   ~ 0
RXSM_CHARGE-
Text Label 3050 27200 0    60   ~ 0
RXSM_LO
Text Label 3050 27300 0    60   ~ 0
RXSM_RX_A
Text Label 3050 27400 0    60   ~ 0
RXSM_RX_Y
Text Label 3050 27500 0    60   ~ 0
RXSM_B(inverted)
Text Label 3050 27600 0    60   ~ 0
RXSM_Z(inverted)
$Comp
L DB9_FEMALE J103_powerboard
U 1 1 59556B6B
P 2600 28750
F 0 "J103_powerboard" H 2600 29300 50  0000 C CNN
F 1 "DB9_FEMALE" H 2600 28175 50  0000 C CNN
F 2 "" H 2600 28750 50  0001 C CNN
F 3 "" H 2600 28750 50  0001 C CNN
	1    2600 28750
	-1   0    0    1   
$EndComp
Text Label 3000 28550 0    60   ~ 0
camera-light_LED_OUT
Text Label 3000 28650 0    60   ~ 0
camera-light_GND
$Comp
L DB15_FEMALE J104_powerboard
U 1 1 595585AE
P 2600 30450
F 0 "J104_powerboard" H 2620 31300 50  0000 C CNN
F 1 "DB15_FEMALE" H 2600 29575 50  0000 C CNN
F 2 "" H 2600 30450 50  0001 C CNN
F 3 "" H 2600 30450 50  0001 C CNN
	1    2600 30450
	-1   0    0    1   
$EndComp
Text Label 3000 29850 0    60   ~ 0
motor_PHASE_W
Text Label 3000 29950 0    60   ~ 0
motor_PHASE_V
Text Label 3000 30050 0    60   ~ 0
motor_PHASE_U
Text Label 3000 30350 0    60   ~ 0
endswitch_out
Text Label 3000 30250 0    60   ~ 0
endswitch_5V
Text Label 3000 30750 0    60   ~ 0
motor-encoder_A+
Text Label 3000 30650 0    60   ~ 0
motor-encoder_A-
Text Label 3000 30550 0    60   ~ 0
motor-encoder_B+
Text Label 3000 30450 0    60   ~ 0
motor-encoder_B-
Text Label 3000 31150 0    60   ~ 0
motor-hall_U
Text Label 3000 31050 0    60   ~ 0
motor-hall_V
Text Label 3000 30950 0    60   ~ 0
motor-hall_W
$Comp
L DB25_FEMALE J801_powerboard
U 1 1 5955DA13
P 2600 33000
F 0 "J801_powerboard" H 2600 34350 50  0000 C CNN
F 1 "DB25_FEMALE" H 2600 31625 50  0000 C CNN
F 2 "" H 2600 33000 50  0001 C CNN
F 3 "" H 2600 33000 50  0001 C CNN
	1    2600 33000
	-1   0    0    1   
$EndComp
Text Notes 900  26150 0    60   ~ 0
BOARD: powerboard
Text Label 3050 32600 0    60   ~ 0
bat_24V_3
Text Label 3050 33400 0    60   ~ 0
bat_24V_2
Text Label 3050 34200 0    60   ~ 0
bat_24V_1
Text Label 3050 33800 0    60   ~ 0
probe_1
Text Label 3050 33000 0    60   ~ 0
probe_2
Text Label 3050 32200 0    60   ~ 0
probe_3
$Comp
L CONN_01X02 P1_camera-light_1
U 1 1 59540207
P 5850 28600
F 0 "P1_camera-light_1" V 5950 28350 50  0000 C CNN
F 1 "CONN_01X02" V 5850 28250 50  0000 C CNN
F 2 "" H 5850 28600 50  0001 C CNN
F 3 "" H 5850 28600 50  0001 C CNN
	1    5850 28600
	1    0    0    -1  
$EndComp
Text Notes 5600 28400 0    60   ~ 0
BOARD: camera-light
$Comp
L CONN_01X02 P2_camera-light_1
U 1 1 59540A79
P 6200 28600
F 0 "P2_camera-light_1" V 6300 28350 50  0000 C CNN
F 1 "CONN_01X02" V 6200 28250 50  0000 C CNN
F 2 "" H 6200 28600 50  0001 C CNN
F 3 "" H 6200 28600 50  0001 C CNN
	1    6200 28600
	-1   0    0    -1  
$EndComp
Text Notes 5800 28500 0    60   ~ 0
-
Text Notes 6150 28500 0    60   ~ 0
+
$Comp
L CONN_01X02 P1_camera-light_?
U 1 1 59542D60
P 7600 28600
F 0 "P1_camera-light_?" V 7700 28350 50  0000 C CNN
F 1 "CONN_01X02" V 7600 28250 50  0000 C CNN
F 2 "" H 7600 28600 50  0001 C CNN
F 3 "" H 7600 28600 50  0001 C CNN
	1    7600 28600
	1    0    0    -1  
$EndComp
Text Notes 7350 28400 0    60   ~ 0
BOARD: camera-light
$Comp
L CONN_01X02 P2_camera-light_?
U 1 1 59542D69
P 7950 28600
F 0 "P2_camera-light_?" V 8050 28350 50  0000 C CNN
F 1 "CONN_01X02" V 7950 28250 50  0000 C CNN
F 2 "" H 7950 28600 50  0001 C CNN
F 3 "" H 7950 28600 50  0001 C CNN
	1    7950 28600
	-1   0    0    -1  
$EndComp
Text Notes 7550 28500 0    60   ~ 0
-
Text Notes 7900 28500 0    60   ~ 0
+
$Comp
L CONN_01X02 P1_camera-light_?
U 1 1 595431FD
P 9400 28600
F 0 "P1_camera-light_?" V 9500 28350 50  0000 C CNN
F 1 "CONN_01X02" V 9400 28250 50  0000 C CNN
F 2 "" H 9400 28600 50  0001 C CNN
F 3 "" H 9400 28600 50  0001 C CNN
	1    9400 28600
	1    0    0    -1  
$EndComp
Text Notes 9150 28400 0    60   ~ 0
BOARD: camera-light
$Comp
L CONN_01X02 P2_camera-light_?
U 1 1 59543206
P 9750 28600
F 0 "P2_camera-light_?" V 9850 28350 50  0000 C CNN
F 1 "CONN_01X02" V 9750 28250 50  0000 C CNN
F 2 "" H 9750 28600 50  0001 C CNN
F 3 "" H 9750 28600 50  0001 C CNN
	1    9750 28600
	-1   0    0    -1  
$EndComp
Text Notes 9350 28500 0    60   ~ 0
-
Text Notes 9700 28500 0    60   ~ 0
+
$Comp
L CONN_01X08 J1_motor
U 1 1 59543EDC
P 9250 30200
F 0 "J1_motor" H 9250 30650 50  0000 C CNN
F 1 "CONN_01X08" V 9350 30200 50  0000 C CNN
F 2 "" H 9250 30200 50  0001 C CNN
F 3 "" H 9250 30200 50  0001 C CNN
	1    9250 30200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1_endswitch
U 1 1 59544789
P 8000 30550
F 0 "J1_endswitch" H 8000 30700 50  0000 C CNN
F 1 "CONN_01X02" H 8000 30400 50  0000 C CNN
F 2 "" H 8000 30550 50  0001 C CNN
F 3 "" H 8000 30550 50  0001 C CNN
	1    8000 30550
	1    0    0    -1  
$EndComp
Text Notes 7700 30350 0    60   ~ 0
End-Switch
Text Label 3000 30150 0    60   ~ 0
motor-hall_5V
Text Label 3000 29750 0    60   ~ 0
motor-hall_GND
$Comp
L CONN_01X10 J1_motor-encoder
U 1 1 5954944C
P 6900 31750
F 0 "J1_motor-encoder" V 7000 32050 50  0000 C CNN
F 1 "CONN_01X10" V 7000 31400 50  0000 C CNN
F 2 "" H 6900 31750 50  0001 C CNN
F 3 "" H 6900 31750 50  0001 C CNN
	1    6900 31750
	0    -1   1    0   
$EndComp
Text Notes 8550 29700 0    60   ~ 0
Motor EC-max 22, 283840
Text Label 6450 31550 1    60   ~ 0
Motor+
Text Label 6750 31550 1    60   ~ 0
Motor-
Text Label 3000 30850 0    60   ~ 0
motor-encoder_GND
Text Notes 6200 32000 0    60   ~ 0
Motor-Encoder MR Typ-M, 201937
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS4
U 1 1 5955935F
P 10500 1550
F 0 "J1_temperature-sensor-DS4" H 10500 1925 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 10500 1150 50  0000 C CNN
F 2 "" H 10500 1850 50  0001 C CNN
F 3 "" H 10500 1850 50  0001 C CNN
	1    10500 1550
	0    1    1    0   
$EndComp
Text Notes 10000 2350 1    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS3
U 1 1 59559F83
P 9100 1550
F 0 "J1_temperature-sensor-DS3" H 9100 1925 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 9100 1150 50  0000 C CNN
F 2 "" H 9100 1850 50  0001 C CNN
F 3 "" H 9100 1850 50  0001 C CNN
	1    9100 1550
	0    1    1    0   
$EndComp
Text Notes 8600 2350 1    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS2
U 1 1 5955AE90
P 7650 1550
F 0 "J1_temperature-sensor-DS2" H 7650 1925 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 7650 1150 50  0000 C CNN
F 2 "" H 7650 1850 50  0001 C CNN
F 3 "" H 7650 1850 50  0001 C CNN
	1    7650 1550
	0    1    1    0   
$EndComp
Text Notes 7150 2350 1    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS1
U 1 1 5955B334
P 6200 1550
F 0 "J1_temperature-sensor-DS1" H 6200 1925 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 6200 1150 50  0000 C CNN
F 2 "" H 6200 1850 50  0001 C CNN
F 3 "" H 6200 1850 50  0001 C CNN
	1    6200 1550
	0    1    1    0   
$EndComp
Text Notes 5700 2350 1    60   ~ 0
BOARD: temperature-sensor-DS1731
Text Label 3050 9650 0    60   ~ 0
t1_RTD1_A
Text Label 3050 11950 0    60   ~ 0
t1_RTD6_D
Text Label 3050 12050 0    60   ~ 0
t2_RTD1_A
Text Label 3050 14350 0    60   ~ 0
t2_RTD6_D
Text Label 3050 14450 0    60   ~ 0
t3_RTD1_A
Text Label 3050 16750 0    60   ~ 0
t3_RTD6_D
Text Label 2950 17950 0    60   ~ 0
t4_RTD1_A
Text Label 2950 18050 0    60   ~ 0
t4_RTD2_B
Text Label 2950 19850 0    60   ~ 0
t4_RTD6_D
Text Label 2950 19950 0    60   ~ 0
t5_RTD1_A
Text Label 2950 22250 0    60   ~ 0
t5_RTD6_D
Text Label 2950 22850 0    60   ~ 0
t6_RTD1_A
Text Label 2950 25250 0    60   ~ 0
t6_RTD6_D
Text Label 3000 24050 0    60   ~ 0
GND
$Comp
L CONN_01X01 J1_ltc3757_GND_1
U 1 1 5957BB15
P 5850 36950
F 0 "J1_ltc3757_GND_1" H 5850 37050 50  0000 C CNN
F 1 "CONN_01X01" H 6200 36950 50  0000 C CNN
F 2 "" H 5850 36950 50  0001 C CNN
F 3 "" H 5850 36950 50  0001 C CNN
	1    5850 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J2_ltc3757_ENABLE_1
U 1 1 5957C7AA
P 5650 36950
F 0 "J2_ltc3757_ENABLE_1" H 5650 37050 50  0000 C CNN
F 1 "CONN_01X01" H 6000 36950 50  0000 C CNN
F 2 "" H 5650 36950 50  0001 C CNN
F 3 "" H 5650 36950 50  0001 C CNN
	1    5650 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J3_ltc3757_BAT_1
U 1 1 5957C85F
P 5450 36950
F 0 "J3_ltc3757_BAT_1" H 5450 37050 50  0000 C CNN
F 1 "CONN_01X01" H 5800 36950 50  0000 C CNN
F 2 "" H 5450 36950 50  0001 C CNN
F 3 "" H 5450 36950 50  0001 C CNN
	1    5450 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J4_ltc3757_24V_1
U 1 1 5957CCBD
P 5250 36950
F 0 "J4_ltc3757_24V_1" H 5250 37050 50  0000 C CNN
F 1 "CONN_01X01" H 5600 36950 50  0000 C CNN
F 2 "" H 5250 36950 50  0001 C CNN
F 3 "" H 5250 36950 50  0001 C CNN
	1    5250 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J9_ltc3757_GND_1
U 1 1 5957D1B2
P 5050 36950
F 0 "J9_ltc3757_GND_1" H 5050 37050 50  0000 C CNN
F 1 "CONN_01X01" H 5400 36950 50  0000 C CNN
F 2 "" H 5050 36950 50  0001 C CNN
F 3 "" H 5050 36950 50  0001 C CNN
	1    5050 36950
	0    1    1    0   
$EndComp
Text Notes 4950 37650 1    60   ~ 0
BOARD: lt3757-boost-converter
$Comp
L CONN_01X02 J1_heatprobe_3
U 1 1 5957F4EA
P 5950 32550
F 0 "J1_heatprobe_3" H 5950 32700 50  0000 C CNN
F 1 "CONN_01X02" H 6250 32550 50  0000 C CNN
F 2 "" H 5950 32550 50  0001 C CNN
F 3 "" H 5950 32550 50  0001 C CNN
	1    5950 32550
	1    0    0    -1  
$EndComp
Text Notes 5600 32350 0    60   ~ 0
FREEK Kleinheizpatrone 24V
$Comp
L CONN_01X01 J110_powerboard
U 1 1 595851EC
P 2700 34700
F 0 "J110_powerboard" H 2700 34800 50  0000 C CNN
F 1 "CONN_01X01" H 3000 34700 50  0000 C CNN
F 2 "" H 2700 34700 50  0001 C CNN
F 3 "" H 2700 34700 50  0001 C CNN
	1    2700 34700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X01 J106_powerboard?
U 1 1 595856A2
P 2700 35500
F 0 "J106_powerboard?" H 2700 35600 50  0000 C CNN
F 1 "CONN_01X01" H 3000 35500 50  0000 C CNN
F 2 "" H 2700 35500 50  0001 C CNN
F 3 "" H 2700 35500 50  0001 C CNN
	1    2700 35500
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X01 J119_powerboard?
U 1 1 595857A0
P 2700 35100
F 0 "J119_powerboard?" H 2700 35200 50  0000 C CNN
F 1 "CONN_01X01" H 3000 35100 50  0000 C CNN
F 2 "" H 2700 35100 50  0001 C CNN
F 3 "" H 2700 35100 50  0001 C CNN
	1    2700 35100
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X01 J107_powerboard?
U 1 1 595858A4
P 2700 35700
F 0 "J107_powerboard?" H 2700 35800 50  0000 C CNN
F 1 "CONN_01X01" H 3000 35700 50  0000 C CNN
F 2 "" H 2700 35700 50  0001 C CNN
F 3 "" H 2700 35700 50  0001 C CNN
	1    2700 35700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X01 J108_powerboard?
U 1 1 5958592A
P 2700 35900
F 0 "J108_powerboard?" H 2700 36000 50  0000 C CNN
F 1 "CONN_01X01" H 3000 35900 50  0000 C CNN
F 2 "" H 2700 35900 50  0001 C CNN
F 3 "" H 2700 35900 50  0001 C CNN
	1    2700 35900
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X01 J109_powerboard?
U 1 1 595859B3
P 2700 36100
F 0 "J109_powerboard?" H 2700 36200 50  0000 C CNN
F 1 "CONN_01X01" H 3000 36100 50  0000 C CNN
F 2 "" H 2700 36100 50  0001 C CNN
F 3 "" H 2700 36100 50  0001 C CNN
	1    2700 36100
	-1   0    0    -1  
$EndComp
Text Label 2950 35700 0    60   ~ 0
boost_24V_1
Text Label 2950 35900 0    60   ~ 0
boost_24V_2
Text Label 2950 36100 0    60   ~ 0
boost_24V_3
Text Label 2950 35100 0    60   ~ 0
boost_GND
Text Label 2950 35500 0    60   ~ 0
boost_ENABLE
Text Label 2950 34700 0    60   ~ 0
bat_RAW
$Comp
L CONN_01X02 J1_heatprobe_2
U 1 1 59588F43
P 5950 33150
F 0 "J1_heatprobe_2" H 5950 33300 50  0000 C CNN
F 1 "CONN_01X02" H 6250 33150 50  0000 C CNN
F 2 "" H 5950 33150 50  0001 C CNN
F 3 "" H 5950 33150 50  0001 C CNN
	1    5950 33150
	1    0    0    -1  
$EndComp
Text Notes 5600 32950 0    60   ~ 0
FREEK Kleinheizpatrone 24V
$Comp
L CONN_01X02 J1_heatprobe_1
U 1 1 595892A6
P 5950 33800
F 0 "J1_heatprobe_1" H 5950 33950 50  0000 C CNN
F 1 "CONN_01X02" H 6250 33800 50  0000 C CNN
F 2 "" H 5950 33800 50  0001 C CNN
F 3 "" H 5950 33800 50  0001 C CNN
	1    5950 33800
	1    0    0    -1  
$EndComp
Text Notes 5600 33600 0    60   ~ 0
FREEK Kleinheizpatrone 24V
$Comp
L CONN_01X01 J1_ltc3757_GND_2
U 1 1 595940FB
P 7550 36950
F 0 "J1_ltc3757_GND_2" H 7550 37050 50  0000 C CNN
F 1 "CONN_01X01" H 7900 36950 50  0000 C CNN
F 2 "" H 7550 36950 50  0001 C CNN
F 3 "" H 7550 36950 50  0001 C CNN
	1    7550 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J2_ltc3757_ENABLE_2
U 1 1 59594101
P 7350 36950
F 0 "J2_ltc3757_ENABLE_2" H 7350 37050 50  0000 C CNN
F 1 "CONN_01X01" H 7700 36950 50  0000 C CNN
F 2 "" H 7350 36950 50  0001 C CNN
F 3 "" H 7350 36950 50  0001 C CNN
	1    7350 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J3_ltc3757_BAT_2
U 1 1 59594107
P 7150 36950
F 0 "J3_ltc3757_BAT_2" H 7150 37050 50  0000 C CNN
F 1 "CONN_01X01" H 7500 36950 50  0000 C CNN
F 2 "" H 7150 36950 50  0001 C CNN
F 3 "" H 7150 36950 50  0001 C CNN
	1    7150 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J4_ltc3757_24V_2
U 1 1 5959410D
P 6950 36950
F 0 "J4_ltc3757_24V_2" H 6950 37050 50  0000 C CNN
F 1 "CONN_01X01" H 7300 36950 50  0000 C CNN
F 2 "" H 6950 36950 50  0001 C CNN
F 3 "" H 6950 36950 50  0001 C CNN
	1    6950 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J9_ltc3757_GND_2
U 1 1 59594113
P 6750 36950
F 0 "J9_ltc3757_GND_2" H 6750 37050 50  0000 C CNN
F 1 "CONN_01X01" H 7100 36950 50  0000 C CNN
F 2 "" H 6750 36950 50  0001 C CNN
F 3 "" H 6750 36950 50  0001 C CNN
	1    6750 36950
	0    1    1    0   
$EndComp
Text Notes 6650 37650 1    60   ~ 0
BOARD: lt3757-boost-converter
$Comp
L CONN_01X01 J1_ltc3757_GND_3
U 1 1 59594774
P 9300 36950
F 0 "J1_ltc3757_GND_3" H 9300 37050 50  0000 C CNN
F 1 "CONN_01X01" H 9650 36950 50  0000 C CNN
F 2 "" H 9300 36950 50  0001 C CNN
F 3 "" H 9300 36950 50  0001 C CNN
	1    9300 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J2_ltc3757_ENABLE_3
U 1 1 5959477A
P 9100 36950
F 0 "J2_ltc3757_ENABLE_3" H 9100 37050 50  0000 C CNN
F 1 "CONN_01X01" H 9450 36950 50  0000 C CNN
F 2 "" H 9100 36950 50  0001 C CNN
F 3 "" H 9100 36950 50  0001 C CNN
	1    9100 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J3_ltc3757_BAT_3
U 1 1 59594780
P 8900 36950
F 0 "J3_ltc3757_BAT_3" H 8900 37050 50  0000 C CNN
F 1 "CONN_01X01" H 9250 36950 50  0000 C CNN
F 2 "" H 8900 36950 50  0001 C CNN
F 3 "" H 8900 36950 50  0001 C CNN
	1    8900 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J4_ltc3757_24V_3
U 1 1 59594786
P 8700 36950
F 0 "J4_ltc3757_24V_3" H 8700 37050 50  0000 C CNN
F 1 "CONN_01X01" H 9050 36950 50  0000 C CNN
F 2 "" H 8700 36950 50  0001 C CNN
F 3 "" H 8700 36950 50  0001 C CNN
	1    8700 36950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J9_ltc3757_GND_3
U 1 1 5959478C
P 8500 36950
F 0 "J9_ltc3757_GND_3" H 8500 37050 50  0000 C CNN
F 1 "CONN_01X01" H 8850 36950 50  0000 C CNN
F 2 "" H 8500 36950 50  0001 C CNN
F 3 "" H 8500 36950 50  0001 C CNN
	1    8500 36950
	0    1    1    0   
$EndComp
Text Notes 8400 37650 1    60   ~ 0
BOARD: lt3757-boost-converter
$Comp
L CONN_01X02 J1_battery
U 1 1 5959BD39
P 10300 34750
F 0 "J1_battery" H 10300 34900 50  0000 C CNN
F 1 "CONN_01X02" H 10600 34750 50  0000 C CNN
F 2 "" H 10300 34750 50  0001 C CNN
F 3 "" H 10300 34750 50  0001 C CNN
	1    10300 34750
	1    0    0    -1  
$EndComp
Text Notes 9600 34500 0    60   ~ 0
Battery NIMH
Text Label 9700 34700 0    60   ~ 0
bat_10V
Text Label 9700 34800 0    60   ~ 0
bat_GND
$Comp
L CONN_01X01 J111_powerboard?
U 1 1 595BC2B1
P 2700 34900
F 0 "J111_powerboard?" H 2700 35000 50  0000 C CNN
F 1 "CONN_01X01" H 3000 34900 50  0000 C CNN
F 2 "" H 2700 34900 50  0001 C CNN
F 3 "" H 2700 34900 50  0001 C CNN
	1    2700 34900
	-1   0    0    -1  
$EndComp
Text Label 2950 34900 0    60   ~ 0
bat_GND
$Comp
L CONN_01X01 J119_powerboard?
U 1 1 595BE4A4
P 2700 35300
F 0 "J119_powerboard?" H 2700 35400 50  0000 C CNN
F 1 "CONN_01X01" H 3000 35300 50  0000 C CNN
F 2 "" H 2700 35300 50  0001 C CNN
F 3 "" H 2700 35300 50  0001 C CNN
	1    2700 35300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 5150 3300 5150
Wire Wire Line
	2900 5050 4050 5050
Wire Wire Line
	2900 5250 4150 5250
Wire Wire Line
	3450 2850 2900 2850
Wire Wire Line
	3550 2950 2900 2950
Wire Wire Line
	3650 3050 2900 3050
Wire Wire Line
	3750 3150 2900 3150
Wire Notes Line
	6400 4100 6400 3150
Wire Notes Line
	7650 4100 6400 4100
Wire Notes Line
	7650 3150 7650 4100
Wire Notes Line
	6400 3150 7650 3150
Wire Wire Line
	6500 3950 6900 3950
Wire Wire Line
	6500 3350 6500 3950
Wire Wire Line
	2900 3350 6500 3350
Wire Wire Line
	6600 3750 6900 3750
Wire Wire Line
	6600 3650 6600 3750
Wire Wire Line
	2900 3650 6600 3650
Wire Wire Line
	6600 3350 6900 3350
Wire Wire Line
	6600 3450 6600 3350
Wire Wire Line
	2900 3450 6600 3450
Wire Wire Line
	2900 3550 6900 3550
Wire Wire Line
	2900 5800 3300 5800
Wire Wire Line
	2900 5900 3300 5900
Wire Wire Line
	2900 6000 3300 6000
Wire Wire Line
	2900 6100 3300 6100
Wire Wire Line
	2900 6200 10850 6200
Wire Wire Line
	2900 6300 10750 6300
Wire Wire Line
	2900 6400 10650 6400
Wire Wire Line
	2900 6500 10550 6500
Wire Wire Line
	2900 6600 9600 6600
Wire Wire Line
	2900 6700 9800 6700
Wire Wire Line
	2900 6800 3300 6800
Wire Wire Line
	2900 6900 9100 6900
Wire Wire Line
	2900 7000 9000 7000
Wire Wire Line
	2900 7100 8900 7100
Wire Wire Line
	2900 7200 8800 7200
Wire Wire Line
	2900 7300 7900 7300
Wire Wire Line
	2900 7400 8100 7400
Wire Wire Line
	2900 7500 3300 7500
Wire Wire Line
	2900 7600 7350 7600
Wire Wire Line
	2900 7700 7250 7700
Wire Wire Line
	2900 7800 7150 7800
Wire Wire Line
	2900 7900 7050 7900
Wire Wire Line
	2900 8000 6350 8000
Wire Wire Line
	2900 8100 6350 8100
Wire Wire Line
	2900 8200 3300 8200
Wire Wire Line
	2900 8300 3300 8300
Wire Wire Line
	9600 6600 9600 6800
Wire Wire Line
	9600 6800 9800 6800
Wire Wire Line
	10550 6500 10550 6700
Wire Wire Line
	10550 6700 10300 6700
Wire Wire Line
	10650 6400 10650 6800
Wire Wire Line
	10650 6800 10300 6800
Wire Wire Line
	10750 6300 10750 6900
Wire Wire Line
	10750 6900 10300 6900
Wire Wire Line
	10850 6200 10850 7100
Wire Wire Line
	10850 7100 9700 7100
Wire Wire Line
	9700 7100 9700 6900
Wire Wire Line
	9700 6900 9800 6900
Wire Wire Line
	7050 7900 7050 8000
Wire Wire Line
	7050 8000 6850 8000
Wire Wire Line
	7150 7800 7150 8100
Wire Wire Line
	7150 8100 6850 8100
Wire Wire Line
	7250 7700 7250 8200
Wire Wire Line
	7250 8200 6850 8200
Wire Wire Line
	7350 7600 7350 8350
Wire Wire Line
	7350 8350 6200 8350
Wire Wire Line
	6200 8350 6200 8200
Wire Wire Line
	6200 8200 6350 8200
Wire Wire Line
	7900 7300 7900 7500
Wire Wire Line
	7900 7500 8100 7500
Wire Wire Line
	8800 7200 8800 7400
Wire Wire Line
	8800 7400 8600 7400
Wire Wire Line
	8900 7100 8900 7500
Wire Wire Line
	8900 7500 8600 7500
Wire Wire Line
	9000 7000 9000 7600
Wire Wire Line
	9000 7600 8600 7600
Wire Wire Line
	9100 6900 9100 7750
Wire Wire Line
	9100 7750 7900 7750
Wire Wire Line
	7900 7750 7900 7600
Wire Wire Line
	7900 7600 8100 7600
Wire Notes Line
	6100 8400 6100 7550
Wire Notes Line
	6100 7550 7400 7550
Wire Notes Line
	7400 7550 7400 8400
Wire Notes Line
	7400 8400 6100 8400
Wire Notes Line
	7850 7800 9150 7800
Wire Notes Line
	9150 7800 9150 6850
Wire Notes Line
	9150 6850 7850 6850
Wire Notes Line
	7850 6850 7850 7800
Wire Notes Line
	9550 7150 10900 7150
Wire Notes Line
	10900 7150 10900 6150
Wire Notes Line
	10900 6150 9550 6150
Wire Notes Line
	9550 6150 9550 7150
Wire Notes Line
	3900 2500 3900 25500
Wire Notes Line
	900  2500 3900 2500
Wire Notes Line
	3900 25500 900  25500
Wire Wire Line
	2900 26400 3000 26400
Wire Wire Line
	3000 26400 3000 26500
Wire Wire Line
	2900 26500 3600 26500
Connection ~ 3000 26500
Wire Wire Line
	2900 26600 3600 26600
Wire Wire Line
	2900 26800 3600 26800
Wire Wire Line
	2900 27000 3600 27000
Wire Wire Line
	2900 27100 3600 27100
Wire Wire Line
	2900 27200 3600 27200
Wire Wire Line
	2900 27300 3600 27300
Wire Wire Line
	2900 27400 3600 27400
Wire Wire Line
	2900 27500 3600 27500
Wire Wire Line
	2900 27600 3600 27600
Wire Wire Line
	2900 27800 3600 27800
Wire Wire Line
	3000 27800 3000 27700
Wire Wire Line
	3000 27700 2900 27700
Connection ~ 3000 27800
Wire Wire Line
	2900 28550 4100 28550
Wire Wire Line
	2900 28650 4100 28650
Wire Wire Line
	2900 29750 8900 29750
Wire Wire Line
	2900 29850 9050 29850
Wire Wire Line
	2900 29950 9050 29950
Wire Wire Line
	2900 30550 7150 30550
Wire Wire Line
	2900 30650 6850 30650
Wire Wire Line
	2900 30750 6950 30750
Wire Wire Line
	2900 31150 8700 31150
Wire Wire Line
	2900 31050 8800 31050
Wire Wire Line
	2900 30950 8900 30950
Wire Notes Line
	3900 26150 900  26150
Wire Notes Line
	3900 26150 3900 36250
Wire Notes Line
	900  26150 900  36250
Wire Notes Line
	900  25500 900  2500
Wire Wire Line
	2900 32200 3750 32200
Wire Wire Line
	2900 32100 3000 32100
Wire Wire Line
	3000 31900 3000 32200
Connection ~ 3000 32200
Wire Wire Line
	2900 32000 3000 32000
Connection ~ 3000 32100
Wire Wire Line
	2900 31900 3000 31900
Connection ~ 3000 32000
Wire Wire Line
	2900 32600 5750 32600
Wire Wire Line
	2900 32300 3000 32300
Wire Wire Line
	3000 32300 3000 32600
Connection ~ 3000 32600
Wire Wire Line
	2900 32400 3000 32400
Connection ~ 3000 32400
Wire Wire Line
	2900 32500 3000 32500
Connection ~ 3000 32500
Wire Wire Line
	2900 33000 3750 33000
Wire Wire Line
	2900 32700 3000 32700
Wire Wire Line
	3000 32700 3000 33000
Connection ~ 3000 33000
Wire Wire Line
	2900 32800 3000 32800
Connection ~ 3000 32800
Wire Wire Line
	2900 32900 3000 32900
Connection ~ 3000 32900
Wire Wire Line
	2900 33400 3750 33400
Wire Wire Line
	2900 33100 3000 33100
Wire Wire Line
	3000 33100 3000 33400
Connection ~ 3000 33400
Wire Wire Line
	2900 33200 3000 33200
Connection ~ 3000 33200
Wire Wire Line
	2900 33300 3000 33300
Connection ~ 3000 33300
Wire Wire Line
	2900 33500 3000 33500
Wire Wire Line
	3000 33500 3000 33800
Connection ~ 3000 33800
Wire Wire Line
	2900 33600 3000 33600
Connection ~ 3000 33600
Wire Wire Line
	2900 33700 3000 33700
Connection ~ 3000 33700
Wire Wire Line
	2900 34200 3750 34200
Wire Wire Line
	2900 33900 3000 33900
Wire Wire Line
	3000 33900 3000 34200
Connection ~ 3000 34200
Wire Wire Line
	2900 34100 3000 34100
Connection ~ 3000 34100
Wire Wire Line
	2900 34000 3000 34000
Connection ~ 3000 34000
Wire Notes Line
	5600 28400 6450 28400
Wire Notes Line
	5600 28400 5600 29250
Wire Notes Line
	5600 29250 6450 29250
Wire Notes Line
	6450 29250 6450 28400
Wire Notes Line
	7350 28400 8200 28400
Wire Notes Line
	7350 28400 7350 29250
Wire Notes Line
	7350 29250 8200 29250
Wire Notes Line
	8200 29250 8200 28400
Wire Notes Line
	9150 28400 10000 28400
Wire Notes Line
	9150 28400 9150 29250
Wire Notes Line
	9150 29250 10000 29250
Wire Notes Line
	10000 29250 10000 28400
Wire Notes Line
	7700 30350 7700 30750
Wire Notes Line
	7700 30750 8300 30750
Wire Notes Line
	8300 30750 8300 30350
Wire Notes Line
	8300 30350 7700 30350
Wire Wire Line
	8900 30950 8900 30350
Wire Wire Line
	8900 30350 9050 30350
Wire Wire Line
	8800 31050 8800 30450
Wire Wire Line
	8800 30450 9050 30450
Wire Wire Line
	8700 31150 8700 30550
Wire Wire Line
	8700 30550 9050 30550
Wire Wire Line
	2900 30050 9050 30050
Wire Wire Line
	2900 30150 9050 30150
Wire Wire Line
	8900 29750 8900 30250
Wire Wire Line
	8900 30250 9050 30250
Wire Notes Line
	8550 29700 8550 30650
Wire Notes Line
	8550 30650 9600 30650
Wire Notes Line
	9600 30650 9600 29700
Wire Notes Line
	9600 29700 8550 29700
Wire Wire Line
	6850 30650 6850 31550
Wire Wire Line
	6950 30750 6950 31550
Wire Wire Line
	7150 30550 7150 31550
Wire Wire Line
	2900 30450 7050 30450
Wire Wire Line
	7050 30450 7050 31550
Wire Wire Line
	6450 31550 6450 31300
Wire Wire Line
	6750 31550 6750 31300
Wire Wire Line
	6650 31550 6650 30850
Wire Wire Line
	6650 30850 2900 30850
Wire Wire Line
	6550 31550 6550 30250
Connection ~ 6550 30250
Wire Notes Line
	6200 31900 7550 31900
Wire Notes Line
	7550 31900 7550 31200
Wire Notes Line
	7550 31200 6200 31200
Wire Notes Line
	6200 31200 6200 31900
Wire Wire Line
	7800 30600 7250 30600
Wire Wire Line
	7250 30600 7250 30350
Wire Wire Line
	7800 30500 7350 30500
Wire Wire Line
	7350 30500 7350 30250
Wire Wire Line
	7350 30250 2900 30250
Wire Wire Line
	7250 30350 2900 30350
Wire Wire Line
	3750 2900 11050 2900
Wire Notes Line
	10000 2350 10950 2350
Wire Notes Line
	10000 900  10000 2350
Wire Notes Line
	10950 900  10000 900 
Wire Notes Line
	10950 2350 10950 900 
Wire Wire Line
	10600 1850 10600 2600
Wire Wire Line
	10800 1850 10800 2900
Wire Wire Line
	10200 1850 10200 2700
Wire Notes Line
	8600 2350 9550 2350
Wire Notes Line
	8600 900  8600 2350
Wire Notes Line
	9550 900  8600 900 
Wire Notes Line
	9550 2350 9550 900 
Wire Wire Line
	9200 1850 9200 2600
Wire Wire Line
	9400 1850 9400 2900
Wire Wire Line
	8800 1850 8800 2700
Wire Notes Line
	7150 2350 8100 2350
Wire Notes Line
	7150 900  7150 2350
Wire Notes Line
	8100 900  7150 900 
Wire Notes Line
	8100 2350 8100 900 
Wire Wire Line
	7750 1850 7750 2600
Wire Wire Line
	7950 1850 7950 2900
Wire Wire Line
	7350 1850 7350 2700
Wire Notes Line
	5700 2350 6650 2350
Wire Notes Line
	5700 900  5700 2350
Wire Notes Line
	6650 900  5700 900 
Wire Notes Line
	6650 2350 6650 900 
Wire Wire Line
	6300 1850 6300 2600
Wire Wire Line
	6500 1850 6500 2900
Wire Wire Line
	5900 1850 5900 2700
Wire Wire Line
	6100 1850 6100 2800
Connection ~ 6100 2800
Connection ~ 5900 2700
Connection ~ 6500 2900
Connection ~ 6300 2600
Wire Wire Line
	3750 2900 3750 3150
Wire Wire Line
	3650 2800 3650 3050
Wire Wire Line
	3550 2700 3550 2950
Wire Wire Line
	3450 2600 3450 2850
Connection ~ 7950 2900
Connection ~ 7750 2600
Wire Wire Line
	7550 1850 7550 2800
Connection ~ 7550 2800
Connection ~ 7350 2700
Wire Wire Line
	10400 1850 10400 2800
Wire Wire Line
	9000 1850 9000 2800
Connection ~ 9000 2800
Connection ~ 8800 2700
Connection ~ 9200 2600
Connection ~ 9400 2900
Wire Wire Line
	3450 2600 11050 2600
Wire Wire Line
	3550 2700 11050 2700
Wire Wire Line
	3650 2800 11050 2800
Connection ~ 10600 2600
Connection ~ 10200 2700
Connection ~ 10400 2800
Connection ~ 10800 2900
Wire Wire Line
	3000 9650 3400 9650
Wire Wire Line
	3000 11950 3400 11950
Wire Wire Line
	3000 12050 3400 12050
Wire Wire Line
	3000 14350 3450 14350
Wire Wire Line
	3000 14450 3450 14450
Wire Wire Line
	3000 16750 3450 16750
Wire Wire Line
	2900 17950 3450 17950
Wire Wire Line
	2900 18050 3450 18050
Wire Wire Line
	2900 19850 3450 19850
Wire Wire Line
	2900 19950 3450 19950
Wire Wire Line
	2900 22250 3500 22250
Wire Wire Line
	2900 22850 3500 22850
Wire Wire Line
	2900 24050 3500 24050
Wire Wire Line
	2900 25250 3500 25250
Wire Notes Line
	6050 36450 4950 36450
Wire Notes Line
	4950 36450 4950 37650
Wire Notes Line
	4950 37650 6050 37650
Wire Notes Line
	6050 37650 6050 36450
Wire Notes Line
	5600 32350 5600 32700
Wire Notes Line
	5600 32700 6550 32700
Wire Notes Line
	6550 32700 6550 32350
Wire Notes Line
	6550 32350 5600 32350
Wire Wire Line
	2900 35500 9100 35500
Wire Wire Line
	2900 35700 5250 35700
Wire Wire Line
	2900 35900 6950 35900
Wire Notes Line
	900  36250 3900 36250
Wire Notes Line
	5600 32950 5600 33300
Wire Notes Line
	5600 33300 6550 33300
Wire Notes Line
	6550 33300 6550 32950
Wire Notes Line
	6550 32950 5600 32950
Wire Notes Line
	5600 33600 5600 33950
Wire Notes Line
	5600 33950 6550 33950
Wire Notes Line
	6550 33950 6550 33600
Wire Notes Line
	6550 33600 5600 33600
Wire Wire Line
	5750 32500 3750 32500
Wire Wire Line
	3750 32500 3750 32200
Wire Wire Line
	5750 33200 3750 33200
Wire Wire Line
	3750 33200 3750 33400
Wire Wire Line
	3750 33000 3750 33100
Wire Wire Line
	3750 33100 5750 33100
Wire Wire Line
	5750 33850 3750 33850
Wire Wire Line
	3750 33850 3750 34200
Wire Wire Line
	2900 33800 3750 33800
Wire Wire Line
	3750 33800 3750 33750
Wire Wire Line
	3750 33750 5750 33750
Wire Wire Line
	2900 36100 8700 36100
Wire Notes Line
	7750 36450 6650 36450
Wire Notes Line
	6650 36450 6650 37650
Wire Notes Line
	6650 37650 7750 37650
Wire Notes Line
	7750 37650 7750 36450
Wire Notes Line
	9500 36450 8400 36450
Wire Notes Line
	8400 36450 8400 37650
Wire Notes Line
	8400 37650 9500 37650
Wire Notes Line
	9500 37650 9500 36450
Wire Wire Line
	5250 35700 5250 36750
Wire Wire Line
	6950 35900 6950 36750
Wire Wire Line
	8700 36100 8700 36750
Wire Wire Line
	9300 34800 10100 34800
Wire Notes Line
	9600 34950 10950 34950
Wire Notes Line
	10950 34950 10950 34500
Wire Notes Line
	10950 34500 9600 34500
Wire Notes Line
	9600 34500 9600 34950
Wire Wire Line
	4100 28550 4100 28200
Wire Wire Line
	4100 28200 10300 28200
Wire Wire Line
	4100 28650 4100 29350
Wire Wire Line
	4100 29350 10300 29350
Wire Wire Line
	5650 28550 5400 28550
Wire Wire Line
	5400 28550 5400 29350
Connection ~ 5400 29350
Wire Wire Line
	5700 28650 5400 28650
Connection ~ 5400 28650
Wire Wire Line
	6400 28550 6650 28550
Wire Wire Line
	6650 28200 6650 28650
Connection ~ 6650 28200
Wire Wire Line
	6650 28650 6400 28650
Connection ~ 6650 28550
Wire Wire Line
	7400 28550 7150 28550
Wire Wire Line
	7150 28550 7150 29350
Connection ~ 7150 29350
Wire Wire Line
	7400 28650 7150 28650
Connection ~ 7150 28650
Wire Wire Line
	8150 28650 8450 28650
Wire Wire Line
	8450 28650 8450 28200
Connection ~ 8450 28200
Wire Wire Line
	8150 28550 8450 28550
Connection ~ 8450 28550
Wire Wire Line
	9950 28650 10300 28650
Wire Wire Line
	10300 28650 10300 28200
Wire Wire Line
	9950 28550 10300 28550
Connection ~ 10300 28550
Wire Wire Line
	9200 28550 8850 28550
Wire Wire Line
	8850 28550 8850 29350
Connection ~ 8850 29350
Wire Wire Line
	9200 28650 8850 28650
Connection ~ 8850 28650
Wire Wire Line
	2900 34700 10100 34700
Wire Wire Line
	2900 34900 9300 34900
Wire Wire Line
	9300 34900 9300 34800
Wire Wire Line
	5650 36750 5650 35500
Connection ~ 5650 35500
Wire Wire Line
	7350 36750 7350 35500
Connection ~ 7350 35500
Wire Wire Line
	9100 35500 9100 36750
Wire Wire Line
	9300 36750 9300 35100
Wire Wire Line
	9300 35100 2900 35100
Wire Wire Line
	7550 36750 7550 35100
Connection ~ 7550 35100
Wire Wire Line
	6750 36750 6750 35100
Connection ~ 6750 35100
Wire Wire Line
	8500 36750 8500 35100
Connection ~ 8500 35100
Wire Wire Line
	5850 36750 5850 35100
Connection ~ 5850 35100
Wire Wire Line
	5050 36750 5050 35100
Connection ~ 5050 35100
Wire Wire Line
	8900 36750 8900 35300
Wire Wire Line
	8900 35300 2900 35300
Text Label 2950 35300 0    60   ~ 0
boost_10V
Wire Wire Line
	7150 36750 7150 35300
Connection ~ 7150 35300
Wire Wire Line
	5450 36750 5450 35300
Connection ~ 5450 35300
$Comp
L DB25_MALE J2_piboard
U 1 1 59562DD6
P 6950 5800
F 0 "J2_piboard" H 6950 7150 50  0000 C CNN
F 1 "DB25_MALE" H 6950 4425 50  0000 C CNN
F 2 "" H 6950 5800 50  0001 C CNN
F 3 "" H 6950 5800 50  0001 C CNN
	1    6950 5800
	0    -1   1    0   
$EndComp
Wire Wire Line
	7950 4300 7950 5500
Wire Wire Line
	7850 4500 7850 5500
Wire Wire Line
	7750 4400 7750 5500
Wire Wire Line
	7650 4600 7650 5500
Wire Wire Line
	7550 4700 7550 5500
Wire Wire Line
	7450 5500 7450 4800
Text Label 8150 5450 1    60   ~ 0
flir_SDA
Text Label 8050 5450 1    60   ~ 0
flir_SCL
Text Label 7950 5450 1    60   ~ 0
flir_CE
Text Label 7850 5450 1    60   ~ 0
flir_MISO
Text Label 7750 5450 1    60   ~ 0
flir_MOSI
Text Label 7650 5450 1    60   ~ 0
flir_CLCK
Text Label 7550 5450 1    60   ~ 0
flir_GND
Text Label 7450 5450 1    60   ~ 0
flir_VCC
Wire Wire Line
	7350 4400 7350 5500
Wire Wire Line
	7250 4500 7250 5500
Text Label 7350 5450 1    60   ~ 0
uart_RX
Text Label 7250 5450 1    60   ~ 0
uart_TX
Wire Wire Line
	6850 4550 6850 5500
Wire Wire Line
	6650 4600 6650 5500
Wire Wire Line
	6550 5500 6550 5450
Wire Wire Line
	6550 5450 6650 5450
Connection ~ 6650 5450
Wire Wire Line
	6750 5500 6750 5450
Wire Wire Line
	6750 5450 6850 5450
Connection ~ 6850 5450
Text Label 6850 5400 1    60   ~ 0
piboard_GND
Text Label 6650 5400 1    60   ~ 0
piboard_5V
Wire Wire Line
	6050 4250 6050 5500
Wire Wire Line
	5950 4250 5950 5500
Wire Wire Line
	5850 4250 5850 5500
Wire Wire Line
	5750 4250 5750 5500
Text Label 6050 5450 1    60   ~ 0
cam_USB-
Text Label 5950 5450 1    60   ~ 0
cam_USB+
Text Label 5850 5450 1    60   ~ 0
cam_GND
Text Label 5750 5450 1    60   ~ 0
cam_5V
Wire Wire Line
	7250 4500 4150 4500
Wire Wire Line
	4150 4500 4150 5250
Wire Wire Line
	7350 4400 4050 4400
Wire Wire Line
	4050 4400 4050 5050
$Comp
L CONN_01X04 J1_cam
U 1 1 595662F3
P 5900 4050
F 0 "J1_cam" H 5900 4300 50  0000 C CNN
F 1 "CONN_01X04" V 6000 4000 50  0000 C CNN
F 2 "" H 5900 4050 50  0001 C CNN
F 3 "" H 5900 4050 50  0001 C CNN
	1    5900 4050
	0    -1   -1   0   
$EndComp
Wire Notes Line
	5550 3900 6250 3900
Wire Notes Line
	6250 3900 6250 4300
Wire Notes Line
	6250 4300 5550 4300
Wire Notes Line
	5550 4300 5550 3900
Text Notes 5550 3900 0    60   ~ 0
IDS uEye XS
$Comp
L CONN_01X08 J1_flir
U 1 1 59567202
P 9550 4650
F 0 "J1_flir" H 9550 5100 50  0000 C CNN
F 1 "CONN_01X08" V 9650 4650 50  0000 C CNN
F 2 "" H 9550 4650 50  0001 C CNN
F 3 "" H 9550 4650 50  0001 C CNN
	1    9550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4300 9350 4300
Wire Wire Line
	7750 4400 9350 4400
Wire Wire Line
	7850 4500 9350 4500
Wire Wire Line
	7650 4600 9350 4600
Wire Wire Line
	7550 4700 9350 4700
Wire Wire Line
	7450 4800 9350 4800
Wire Wire Line
	9350 4900 8150 4900
Wire Wire Line
	9350 5000 8050 5000
Wire Wire Line
	8150 4900 8150 5500
Wire Wire Line
	8050 5000 8050 5500
Wire Notes Line
	9050 4100 9050 5200
Wire Notes Line
	9050 5200 10200 5200
Wire Notes Line
	10200 5200 10200 4100
Wire Notes Line
	10200 4100 9050 4100
Text Notes 9050 4100 0    60   ~ 0
FLIR Lepton3 Breakout-Board\n
Wire Notes Line
	8600 6050 5500 6050
Wire Notes Line
	5500 6050 5500 4750
Wire Notes Line
	5500 4750 8600 4750
Wire Notes Line
	8600 4750 8600 6050
Text Notes 5500 4750 0    60   ~ 0
BOARD: pi-board\n
Wire Wire Line
	2900 29050 3600 29050
Wire Wire Line
	2900 28850 4450 28850
Text Label 3000 28850 0    60   ~ 0
pi_board_5V
Text Label 3000 29050 0    60   ~ 0
5V
Wire Wire Line
	4400 28350 2900 28350
Wire Wire Line
	2900 28750 3600 28750
Text Label 3000 28450 0    60   ~ 0
RXSM_28V
Wire Wire Line
	2900 28450 3600 28450
Text Label 3000 28350 0    60   ~ 0
pi-board_GND
Text Label 3000 28750 0    60   ~ 0
lens-heater_OUT
Wire Wire Line
	6850 4550 4400 4550
Wire Wire Line
	4400 4550 4400 28350
Wire Wire Line
	6650 4600 4450 4600
Wire Wire Line
	4450 4600 4450 28850
$EndSCHEMATC
