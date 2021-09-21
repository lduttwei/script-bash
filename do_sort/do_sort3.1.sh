#!/bin/bash

#Name 
#do_sort_3.1
#Synopsis 
#do_sort.3.1.sh [s] 
#s: Options of sort. 
#Description
#Script returns everything in active directory. Can be sorted by name or value.
#Parameter
#$1 is the parameter that is used as option for the script. If $1 is s, it will be sorted by value.
#Author 
#Linus Duttweiler

echo "Ausgabe der Grösse aller Verzeichnisse und Dateien"
if [ $1 ]
then 
	if [ $1 == 's' ]
	then
		du -a | sort -h 
	fi
else 
	du -a
fi
total=$(du -c | grep total | cut -f -1)
echo "The whole directory is: $total"
