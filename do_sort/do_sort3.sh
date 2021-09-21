#!/bin/bash

#do_sort
#-----------
#7.9.21 L.Duttweiler
#
#Gibt aus wie gross das Verzeichniss ist. 

echo "Ausgabe der Grösse aller Verzeichnisse und Dateien"
#if [ $1 ]
#then 
#	if [ $1 == 's' ]
#	then
#		du -a | sort -h 
#	fi
#fi
du -a | sort $1
total=$(du -c | grep total | cut -f -1)
echo "The whole directory is: $total"
