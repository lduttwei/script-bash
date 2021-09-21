#!/bin/bash

echo "Ausgabe der Grösse aller Verzeichnisse und Dateien"
du 
total=$(du -c | grep total | cut -f -1)
echo "The whole directory is: $total"

