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
Sheet 1 6
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
S 1000 1000 2000 2000
U 55D40B0D
F0 "Ureg" 60
F1 "ureg.sch" 60
$EndSheet
$Sheet
S 7000 4000 2000 2000
U 55D42960
F0 "microSD" 60
F1 "microsd.sch" 60
$EndSheet
$Sheet
S 4000 4000 2000 2000
U 55D430E7
F0 "GY88" 60
F1 "gy88.sch" 60
F2 "G_INT" O R 6000 4600 60 
F3 "M_DRDY" O R 6000 4900 60 
$EndSheet
$Sheet
S 4000 1000 2000 2000
U 55D456D3
F0 "ATmega328" 50
F1 "atmega328.sch" 50
$EndSheet
$Sheet
S 7000 1000 2000 2000
U 55D471EF
F0 "connector" 50
F1 "con.sch" 50
F2 "O.S._1" O R 9000 1400 60 
F3 "O.S._2" O R 9000 1600 60 
F4 "O.S._3" O R 9000 1800 60 
$EndSheet
Text GLabel 6300 4600 2    50   3State ~ 0
PD7
Text GLabel 6300 4900 2    50   3State ~ 0
PD6
Wire Wire Line
	6000 4900 6300 4900
Wire Wire Line
	6000 4600 6300 4600
$EndSCHEMATC
