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
LIBS:sensors
LIBS:card
LIBS:Umweltdaten-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X03 P3
U 1 1 55D472F5
P 2300 1800
F 0 "P3" H 2300 2000 50  0000 C CNN
F 1 "CONN_01X03" V 2400 1800 50  0000 C CNN
F 2 "" H 2300 1800 60  0000 C CNN
F 3 "" H 2300 1800 60  0000 C CNN
	1    2300 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 55D472FE
P 2000 2000
F 0 "#PWR017" H 2000 1750 50  0001 C CNN
F 1 "GND" H 2000 1850 50  0000 C CNN
F 2 "" H 2000 2000 60  0000 C CNN
F 3 "" H 2000 2000 60  0000 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 55D47304
P 2450 3000
F 0 "P2" H 2450 3200 50  0000 C CNN
F 1 "CONN_02X03" H 2450 2800 50  0000 C CNN
F 2 "" H 2450 1800 60  0000 C CNN
F 3 "" H 2450 1800 60  0000 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 55D4730B
P 2800 3200
F 0 "#PWR018" H 2800 2950 50  0001 C CNN
F 1 "GND" H 2800 3050 50  0000 C CNN
F 2 "" H 2800 3200 60  0000 C CNN
F 3 "" H 2800 3200 60  0000 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR019
U 1 1 55D47311
P 2800 2800
F 0 "#PWR019" H 2800 2650 50  0001 C CNN
F 1 "+3V3" H 2800 2940 50  0000 C CNN
F 2 "" H 2800 2800 60  0000 C CNN
F 3 "" H 2800 2800 60  0000 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Text GLabel 2000 3100 0    50   Output ~ 0
RESET
Text GLabel 2900 3000 2    50   Output ~ 0
MOSI
Text GLabel 2000 2900 0    50   Input ~ 0
MISO
Text GLabel 2000 3000 0    50   Output ~ 0
SCK
Text GLabel 1900 1700 0    50   Output ~ 0
RX
Text GLabel 1900 1800 0    50   Input ~ 0
TX
$Comp
L CONN_01X08 P4
U 1 1 55D46A91
P 5200 2450
F 0 "P4" H 5200 2900 50  0000 C CNN
F 1 "CONN_01X08" V 5300 2450 50  0000 C CNN
F 2 "" H 5200 2450 60  0000 C CNN
F 3 "" H 5200 2450 60  0000 C CNN
	1    5200 2450
	-1   0    0    -1  
$EndComp
Text GLabel 5700 2100 2    50   3State ~ 0
PB0
Text GLabel 5700 2200 2    50   3State ~ 0
PB1
Text GLabel 5700 2300 2    50   3State ~ 0
PB2
Text GLabel 5700 2400 2    50   3State ~ 0
PB3
Text GLabel 5700 2500 2    50   3State ~ 0
PB4
Text GLabel 5700 2600 2    50   3State ~ 0
PB5
Text GLabel 5700 2700 2    50   3State ~ 0
PB6
Text GLabel 5700 2800 2    50   3State ~ 0
PB7
Text GLabel 5700 3200 2    50   3State ~ 0
PC0
Text GLabel 5700 3300 2    50   3State ~ 0
PC1
Text GLabel 5700 3400 2    50   3State ~ 0
PC2
Text GLabel 5700 3500 2    50   3State ~ 0
PC3
Text GLabel 5700 3600 2    50   3State ~ 0
PC4
Text GLabel 5700 3700 2    50   3State ~ 0
PC5
Text GLabel 5700 3800 2    50   3State ~ 0
PC6
$Comp
L CONN_01X07 P5
U 1 1 55D46E94
P 5200 3500
F 0 "P5" H 5200 3900 50  0000 C CNN
F 1 "CONN_01X07" V 5300 3500 50  0000 C CNN
F 2 "" H 5200 3500 60  0000 C CNN
F 3 "" H 5200 3500 60  0000 C CNN
	1    5200 3500
	-1   0    0    -1  
$EndComp
Text GLabel 5700 4200 2    50   3State ~ 0
PD0
Text GLabel 5700 4300 2    50   3State ~ 0
PD1
Text GLabel 5700 4400 2    50   3State ~ 0
PD2
Text GLabel 5700 4500 2    50   3State ~ 0
PD3
Text GLabel 5700 4600 2    50   3State ~ 0
PD4
Text GLabel 5700 4700 2    50   3State ~ 0
PD5
Text GLabel 5700 4800 2    50   3State ~ 0
PD6
Text GLabel 5700 4900 2    50   3State ~ 0
PD7
$Comp
L CONN_01X08 P7
U 1 1 55D471EF
P 5200 4550
F 0 "P7" H 5200 5000 50  0000 C CNN
F 1 "CONN_01X08" V 5300 4550 50  0000 C CNN
F 2 "" H 5200 4550 60  0000 C CNN
F 3 "" H 5200 4550 60  0000 C CNN
	1    5200 4550
	-1   0    0    -1  
$EndComp
Text GLabel 5700 5300 2    50   3State ~ 0
ADC6
Text GLabel 5700 5400 2    50   3State ~ 0
ADC7
$Comp
L CONN_01X02 P8
U 1 1 55D476B7
P 5200 5350
F 0 "P8" H 5200 5500 50  0000 C CNN
F 1 "CONN_01X02" V 5300 5350 50  0000 C CNN
F 2 "" H 5200 5350 60  0000 C CNN
F 3 "" H 5200 5350 60  0000 C CNN
	1    5200 5350
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X05 P9
U 1 1 55D47A62
P 2000 4600
F 0 "P9" H 2000 4900 50  0000 C CNN
F 1 "CONN_01X05" V 2100 4600 50  0000 C CNN
F 2 "" H 2000 4600 60  0000 C CNN
F 3 "" H 2000 4600 60  0000 C CNN
	1    2000 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 2900 2000 2900
Wire Wire Line
	2200 3000 2000 3000
Wire Wire Line
	2200 3100 2000 3100
Wire Wire Line
	2800 3100 2800 3200
Wire Wire Line
	2700 3100 2800 3100
Wire Wire Line
	2800 2900 2800 2800
Wire Wire Line
	2700 2900 2800 2900
Wire Wire Line
	2900 3000 2700 3000
Wire Wire Line
	2000 1900 2000 2000
Wire Wire Line
	2100 1900 2000 1900
Wire Wire Line
	2100 1800 1900 1800
Wire Wire Line
	2100 1700 1900 1700
Wire Wire Line
	5700 2100 5400 2100
Wire Wire Line
	5400 2200 5700 2200
Wire Wire Line
	5700 2300 5400 2300
Wire Wire Line
	5400 2400 5700 2400
Wire Wire Line
	5700 2500 5400 2500
Wire Wire Line
	5400 2600 5700 2600
Wire Wire Line
	5700 2700 5400 2700
Wire Wire Line
	5400 2800 5700 2800
Wire Wire Line
	5700 3200 5400 3200
Wire Wire Line
	5400 3300 5700 3300
Wire Wire Line
	5700 3400 5400 3400
Wire Wire Line
	5400 3500 5700 3500
Wire Wire Line
	5700 3600 5400 3600
Wire Wire Line
	5400 3700 5700 3700
Wire Wire Line
	5700 3800 5400 3800
Wire Wire Line
	5400 4200 5700 4200
Wire Wire Line
	5700 4300 5400 4300
Wire Wire Line
	5400 4400 5700 4400
Wire Wire Line
	5700 4500 5400 4500
Wire Wire Line
	5400 4600 5700 4600
Wire Wire Line
	5700 4700 5400 4700
Wire Wire Line
	5400 4800 5700 4800
Wire Wire Line
	5700 4900 5400 4900
Wire Wire Line
	5700 5300 5400 5300
Wire Wire Line
	5400 5400 5700 5400
$Comp
L GND #PWR?
U 1 1 55D480FA
P 2300 4900
F 0 "#PWR?" H 2300 4650 50  0001 C CNN
F 1 "GND" H 2300 4750 50  0000 C CNN
F 2 "" H 2300 4900 60  0000 C CNN
F 3 "" H 2300 4900 60  0000 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 55D4811A
P 2300 4300
F 0 "#PWR?" H 2300 4150 50  0001 C CNN
F 1 "+3V3" H 2300 4440 50  0000 C CNN
F 2 "" H 2300 4300 60  0000 C CNN
F 3 "" H 2300 4300 60  0000 C CNN
	1    2300 4300
	1    0    0    -1  
$EndComp
Text GLabel 2500 4500 2    50   BiDi ~ 0
SDA
Text GLabel 2500 4600 2    50   Input ~ 0
SCL
Wire Wire Line
	2500 4500 2200 4500
Wire Wire Line
	2500 4600 2200 4600
Wire Wire Line
	2300 4900 2300 4800
Wire Wire Line
	2300 4800 2200 4800
Wire Wire Line
	2200 4400 2300 4400
Wire Wire Line
	2300 4400 2300 4300
Text HLabel 2500 4700 2    60   Output ~ 0
O.S._1
Wire Wire Line
	2500 4700 2200 4700
$Comp
L CONN_01X05 P10
U 1 1 55D486EC
P 2000 5900
F 0 "P10" H 2000 6200 50  0000 C CNN
F 1 "CONN_01X05" V 2100 5900 50  0000 C CNN
F 2 "" H 2000 5900 60  0000 C CNN
F 3 "" H 2000 5900 60  0000 C CNN
	1    2000 5900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55D486F2
P 2300 6200
F 0 "#PWR?" H 2300 5950 50  0001 C CNN
F 1 "GND" H 2300 6050 50  0000 C CNN
F 2 "" H 2300 6200 60  0000 C CNN
F 3 "" H 2300 6200 60  0000 C CNN
	1    2300 6200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 55D486F8
P 2300 5600
F 0 "#PWR?" H 2300 5450 50  0001 C CNN
F 1 "+3V3" H 2300 5740 50  0000 C CNN
F 2 "" H 2300 5600 60  0000 C CNN
F 3 "" H 2300 5600 60  0000 C CNN
	1    2300 5600
	1    0    0    -1  
$EndComp
Text GLabel 2500 5800 2    50   BiDi ~ 0
SDA
Text GLabel 2500 5900 2    50   Input ~ 0
SCL
Wire Wire Line
	2500 5800 2200 5800
Wire Wire Line
	2500 5900 2200 5900
Wire Wire Line
	2300 6200 2300 6100
Wire Wire Line
	2300 6100 2200 6100
Wire Wire Line
	2200 5700 2300 5700
Wire Wire Line
	2300 5700 2300 5600
Text HLabel 2500 6000 2    60   Output ~ 0
O.S._2
Wire Wire Line
	2500 6000 2200 6000
$Comp
L CONN_01X05 P11
U 1 1 55D487D4
P 2000 7200
F 0 "P11" H 2000 7500 50  0000 C CNN
F 1 "CONN_01X05" V 2100 7200 50  0000 C CNN
F 2 "" H 2000 7200 60  0000 C CNN
F 3 "" H 2000 7200 60  0000 C CNN
	1    2000 7200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55D487DA
P 2300 7500
F 0 "#PWR?" H 2300 7250 50  0001 C CNN
F 1 "GND" H 2300 7350 50  0000 C CNN
F 2 "" H 2300 7500 60  0000 C CNN
F 3 "" H 2300 7500 60  0000 C CNN
	1    2300 7500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 55D487E0
P 2300 6900
F 0 "#PWR?" H 2300 6750 50  0001 C CNN
F 1 "+3V3" H 2300 7040 50  0000 C CNN
F 2 "" H 2300 6900 60  0000 C CNN
F 3 "" H 2300 6900 60  0000 C CNN
	1    2300 6900
	1    0    0    -1  
$EndComp
Text GLabel 2500 7100 2    50   BiDi ~ 0
SDA
Text GLabel 2500 7200 2    50   Input ~ 0
SCL
Wire Wire Line
	2500 7100 2200 7100
Wire Wire Line
	2500 7200 2200 7200
Wire Wire Line
	2300 7500 2300 7400
Wire Wire Line
	2300 7400 2200 7400
Wire Wire Line
	2200 7000 2300 7000
Wire Wire Line
	2300 7000 2300 6900
Text HLabel 2500 7300 2    60   Output ~ 0
O.S._3
Wire Wire Line
	2500 7300 2200 7300
$EndSCHEMATC
