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
Sheet 4 6
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
L GY88 IC3
U 1 1 55D4327F
P 2500 2000
F 0 "IC3" H 2150 2250 50  0000 C CNN
F 1 "GY88" H 2900 1650 50  0000 C CNN
F 2 "Footprints:GY88" H 2400 1700 50  0001 C CNN
F 3 "" H 2400 1700 50  0000 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR08
U 1 1 55D43286
P 2600 1400
F 0 "#PWR08" H 2600 1250 50  0001 C CNN
F 1 "+3V3" H 2600 1540 50  0000 C CNN
F 2 "" H 2600 1400 60  0000 C CNN
F 3 "" H 2600 1400 60  0000 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 55D4328C
P 2500 2700
F 0 "#PWR09" H 2500 2450 50  0001 C CNN
F 1 "GND" H 2500 2550 50  0000 C CNN
F 2 "" H 2500 2700 60  0000 C CNN
F 3 "" H 2500 2700 60  0000 C CNN
	1    2500 2700
	1    0    0    -1  
$EndComp
Text GLabel 1700 2100 0    50   Input ~ 0
SDA
Text GLabel 1700 2000 0    50   BiDi ~ 0
SCL
Text HLabel 3500 2200 2    60   Output ~ 0
G_INT
$Comp
L JUMPER3 JP2
U 1 1 55D49031
P 4200 2100
F 0 "JP2" H 4250 2000 50  0000 L CNN
F 1 "G_AD0" H 4200 2200 50  0000 C BNN
F 2 "Footprints:SJ_2" H 4200 2100 60  0001 C CNN
F 3 "" H 4200 2100 60  0000 C CNN
	1    4200 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 2000 1700 2000
Wire Wire Line
	1900 2100 1700 2100
Wire Wire Line
	2500 2500 2500 2700
Wire Wire Line
	2600 1600 2600 1400
Wire Wire Line
	3500 2200 3200 2200
Wire Wire Line
	4100 2100 3200 2100
Wire Wire Line
	4200 2350 4200 2600
Wire Wire Line
	4200 2600 2500 2600
Connection ~ 2500 2600
Wire Wire Line
	4200 1850 4200 1500
Wire Wire Line
	4200 1500 2600 1500
Connection ~ 2600 1500
Text HLabel 3500 1900 2    60   Output ~ 0
M_DRDY
Wire Wire Line
	3500 1900 3200 1900
NoConn ~ 2400 1600
Wire Wire Line
	4000 2100 4000 2600
Connection ~ 4000 2600
Connection ~ 4000 2100
$EndSCHEMATC
