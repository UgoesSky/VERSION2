#!/bin/bash
#echo "18" > /sys/class/gpio/unexport
#echo "27" > /sys/class/gpio/unexport

echo "18" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio18/direction
echo "27" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio27/direction

while [ 1 ]
do
status1=$(cat /sys/class/gpio/gpio18/value) #reboot
status2=$(cat /sys/class/gpio/gpio27/value) #shutdown

#echo $status1

if [ $status1 == 1 ]
then
echo "Herunterfahren!"
shutdown -h 0
fi


if [ $status2 == 1 ]
then
echo "Neustart!"
reboot
fi

done

