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
Sheet 4 7
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
L LM75 IC2
U 1 1 55D42F1C
P 2600 2200
F 0 "IC2" H 2350 2550 50  0000 C CNN
F 1 "LM75" H 2800 1850 50  0000 C CNN
F 2 "" H 2600 2150 50  0000 C CNN
F 3 "" H 2600 2150 50  0000 C CNN
	1    2600 2200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR08
U 1 1 55D42F23
P 2600 1500
F 0 "#PWR08" H 2600 1350 50  0001 C CNN
F 1 "+3V3" H 2600 1640 50  0000 C CNN
F 2 "" H 2600 1500 60  0000 C CNN
F 3 "" H 2600 1500 60  0000 C CNN
	1    2600 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 55D42F29
P 2600 2900
F 0 "#PWR09" H 2600 2650 50  0001 C CNN
F 1 "GND" H 2600 2750 50  0000 C CNN
F 2 "" H 2600 2900 60  0000 C CNN
F 3 "" H 2600 2900 60  0000 C CNN
	1    2600 2900
	1    0    0    -1  
$EndComp
Text GLabel 1900 2000 0    50   Input ~ 0
SDA
Text GLabel 1900 2100 0    50   Input ~ 0
SCL
Wire Wire Line
	2100 2100 1900 2100
Wire Wire Line
	2100 2000 1900 2000
Wire Wire Line
	2600 1700 2600 1500
Wire Wire Line
	2600 2700 2600 2900
$Comp
L JUMPER3 JP1
U 1 1 55D42F35
P 3500 2100
F 0 "JP1" H 3550 2000 50  0000 L CNN
F 1 "JUMPER3" H 3500 2200 50  0000 C BNN
F 2 "" H 3500 2100 60  0000 C CNN
F 3 "" H 3500 2100 60  0000 C CNN
	1    3500 2100
	0    1    1    0   
$EndComp
$Comp
L JUMPER3 JP2
U 1 1 55D42F3C
P 3900 2200
F 0 "JP2" H 3950 2100 50  0000 L CNN
F 1 "JUMPER3" H 3900 2300 50  0000 C BNN
F 2 "" H 3900 2200 60  0000 C CNN
F 3 "" H 3900 2200 60  0000 C CNN
	1    3900 2200
	0    1    1    0   
$EndComp
$Comp
L JUMPER3 JP3
U 1 1 55D42F43
P 4200 2300
F 0 "JP3" H 4250 2200 50  0000 L CNN
F 1 "JUMPER3" H 4200 2400 50  0000 C BNN
F 2 "" H 4200 2300 60  0000 C CNN
F 3 "" H 4200 2300 60  0000 C CNN
	1    4200 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2100 3100 2100
Wire Wire Line
	3800 2200 3100 2200
Wire Wire Line
	4100 2300 3100 2300
Wire Wire Line
	3500 1850 3500 1600
Wire Wire Line
	2600 1600 4200 1600
Connection ~ 2600 1600
Wire Wire Line
	3900 1600 3900 1950
Connection ~ 3500 1600
Wire Wire Line
	4200 1600 4200 2050
Connection ~ 3900 1600
Wire Wire Line
	4200 2550 4200 2800
Wire Wire Line
	4200 2800 2600 2800
Connection ~ 2600 2800
Wire Wire Line
	3500 2350 3500 2800
Connection ~ 3500 2800
Wire Wire Line
	3900 2450 3900 2800
Connection ~ 3900 2800
$EndSCHEMATC
