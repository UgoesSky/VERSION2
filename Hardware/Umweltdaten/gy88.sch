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
Sheet 5 7
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
F 2 "" H 2400 1700 50  0000 C CNN
F 3 "" H 2400 1700 50  0000 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 55D43286
P 2600 1400
F 0 "#PWR010" H 2600 1250 50  0001 C CNN
F 1 "+3V3" H 2600 1540 50  0000 C CNN
F 2 "" H 2600 1400 60  0000 C CNN
F 3 "" H 2600 1400 60  0000 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 55D4328C
P 2500 2700
F 0 "#PWR011" H 2500 2450 50  0001 C CNN
F 1 "GND" H 2500 2550 50  0000 C CNN
F 2 "" H 2500 2700 60  0000 C CNN
F 3 "" H 2500 2700 60  0000 C CNN
	1    2500 2700
	1    0    0    -1  
$EndComp
Text GLabel 1700 2100 0    50   Input ~ 0
SDA
Text GLabel 1700 2000 0    50   Input ~ 0
SCL
Wire Wire Line
	1900 2000 1700 2000
Wire Wire Line
	1900 2100 1700 2100
Wire Wire Line
	2500 2500 2500 2700
Wire Wire Line
	2600 1600 2600 1400
$EndSCHEMATC
