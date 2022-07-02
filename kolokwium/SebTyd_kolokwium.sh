#!/usr/bin/bash

awk -F ';' '0 + $2 < 50 && $1~/.*a.*/ {print $0}' dane_kolokwium.csv > odp1.txt
awk -F ';' '0 + $2 < 50 && $1~/.*a.*/ {count++; print $0} END {print "------------\nTyle jest " count}' dane_kolokwium.csv > odp.txt

echo "------------" >> odp.txt

sed 's/.*;18/Dan;18/' odp1.txt >> odp.txt

echo "------------" >> odp.txt

liczba_osob=`awk -F ';' '0 + $2 < 50 && $1~/.*a.*/ {count++} END {print count}' dane_kolokwium.csv`
suma=`awk -F ';' '0 + $2 < 50 && $1~/.*a.*/ {suma += 0 + $2} END {print suma}' dane_kolokwium.csv`
echo "scale=4;($suma/$liczba_osob)" | bc -l >> odp.txt

dialog --textbox odp.txt 40 80

