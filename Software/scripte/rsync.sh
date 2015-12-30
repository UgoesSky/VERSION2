#!/bin/bash
#TODO: Seperates Programm mit Zeitstempel
rsync -avh --progress --numeric-ids /home/pi/picam /home/pi/sstv /home/pi/werte /home/pi/webcam1 /home/pi/webcam2 /home/pi/webcam3 /media/stick  #/media/stick/Backup #TODO: Dateipfade überprüfen
# Crontab:	 */1 * * * * PFAD
