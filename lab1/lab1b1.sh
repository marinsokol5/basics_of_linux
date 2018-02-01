#!/bin/bash
touch govor1
touch govor2
gnome-terminal -e echo "Osoba 1 piši" & cat <&0 > govor1  
gnome-terminal -e echo "Osoba 2 piši" & cat <&0 > govor2
gnome-terminal -e echo "Osoba 2 čitaj" & tail -f govor1
gnome-terminal -e echo "Osoba 1 čitaj" & tail -f govor2
 

