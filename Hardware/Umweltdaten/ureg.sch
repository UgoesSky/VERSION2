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
Sheet 2 6
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
L GND #PWR01
U 1 1 55D42288
P 5250 2300
F 0 "#PWR01" H 5250 2050 50  0001 C CNN
F 1 "GND" H 5250 2150 50  0000 C CNN
F 2 "" H 5250 2300 60  0000 C CNN
F 3 "" H 5250 2300 60  0000 C CNN
	1    5250 2300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 55D4228E
P 6100 1300
F 0 "#PWR02" H 6100 1150 50  0001 C CNN
F 1 "+3V3" H 6100 1440 50  0000 C CNN
F 2 "" H 6100 1300 60  0000 C CNN
F 3 "" H 6100 1300 60  0000 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR03
U 1 1 55D42294
P 3500 1300
F 0 "#PWR03" H 3500 1150 50  0001 C CNN
F 1 "+BATT" H 3500 1440 50  0000 C CNN
F 2 "" H 3500 1300 60  0000 C CNN
F 3 "" H 3500 1300 60  0000 C CNN
	1    3500 1300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55D4229A
P 3500 1850
F 0 "C1" H 3525 1950 50  0000 L CNN
F 1 "1µF" H 3525 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3538 1700 30  0001 C CNN
F 3 "" H 3500 1850 60  0000 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 55D422A8
P 1900 1650
F 0 "P1" H 1900 1800 50  0000 C CNN
F 1 "BATT" V 2000 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1900 1650 60  0001 C CNN
F 3 "" H 1900 1650 60  0000 C CNN
	1    1900 1650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 55D422B5
P 2200 1800
F 0 "#PWR04" H 2200 1550 50  0001 C CNN
F 1 "GND" H 2200 1650 50  0000 C CNN
F 2 "" H 2200 1800 60  0000 C CNN
F 3 "" H 2200 1800 60  0000 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1700 2200 1700
Wire Wire Line
	2200 1700 2200 1800
$Comp
L TLV70233DBV U1
U 1 1 55D42281
P 5250 1550
F 0 "U1" H 5000 1750 40  0000 C CNN
F 1 "TLV70233DBV" H 5350 1750 40  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-5" H 5250 1800 35  0000 C CIN
F 3 "" H 5250 1550 60  0000 C CNN
	1    5250 1550
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 55D45A3C
P 4300 1650
F 0 "JP1" H 4300 1800 50  0000 C CNN
F 1 "Ureg EN" H 4300 1570 50  0000 C CNN
F 2 "Footprints:SJ" H 4300 1650 60  0001 C CNN
F 3 "" H 4300 1650 60  0000 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55D422A1
P 6100 1850
F 0 "C2" H 6125 1950 50  0000 L CNN
F 1 "1µF" H 6125 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6138 1700 30  0001 C CNN
F 3 "" H 6100 1850 60  0000 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1700 6100 1300
Wire Wire Line
	5700 1500 6100 1500
Connection ~ 6100 1500
Wire Wire Line
	3500 2000 3500 2100
Wire Wire Line
	3500 2100 6100 2100
Wire Wire Line
	5250 1850 5250 2300
Wire Wire Line
	6100 2100 6100 2000
Connection ~ 5250 2100
Wire Wire Line
	4600 1650 4800 1650
Wire Wire Line
	4000 1650 3500 1650
Wire Wire Line
	3500 1300 3500 1700
Connection ~ 3500 1650
Wire Wire Line
	4800 1500 4700 1500
Wire Wire Line
	4700 1500 4700 1400
Wire Wire Line
	4700 1400 3500 1400
Connection ~ 3500 1400
$Comp
L +BATT #PWR05
U 1 1 55D4AD93
P 2200 1500
F 0 "#PWR05" H 2200 1350 50  0001 C CNN
F 1 "+BATT" H 2200 1640 50  0000 C CNN
F 2 "" H 2200 1500 60  0000 C CNN
F 3 "" H 2200 1500 60  0000 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1500 2200 1600
Wire Wire Line
	2200 1600 2100 1600
Wire Wire Line
	3900 1650 3900 1800
Wire Wire Line
	3900 1800 4700 1800
Wire Wire Line
	4700 1800 4700 1650
Connection ~ 4700 1650
Connection ~ 3900 1650
$EndSCHEMATC
