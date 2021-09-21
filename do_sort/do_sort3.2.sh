#!/bin/bash

#Name 
#do_sort_3.1
#Synopsis 
#do_sort.3.1.sh [OPTIONS] 
#OPTIONS: Options of sort command. 
#Description
#Script returns everything in active directory. Can be sorted with options of sort command.
#Parameter
#$1 is the parameter that is used as option for the script. $1 will be used as parameter for sort command.
#Author 
#Linus Duttweiler

echo "Ausgabe der Grösse aller Verzeichnisse und Dateien"
du -a | sort $1 
total=$(du -c | grep total | cut -f -1)
echo "The whole directory is: $total"
