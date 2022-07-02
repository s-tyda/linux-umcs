#!/usr/bin/bash

OPTION=`dialog --clear --no-collapse \
		--cr-wrap --stdout --title "Zad4" \
		--menu "Kalkulatoruj" 14 40 3 1 "Wielomian" 2 "Liczba PI" 3 "Złota liczba"`
PRECISION=`dialog --clear --no-collapse \
		--cr-wrap --stdout --title "Zad4" \
		--inputbox "Precyzja" 10 40 "10"`

case $OPTION in
	1) 
		A=`dialog --clear --no-collapse \
			--cr-wrap --stdout --title "Zad4" \
			--inputbox "WSP. A dwumianu Ax+B" 10 40 "1"`
		B=`dialog --clear --no-collapse \
			--cr-wrap --stdout --title "Zad4" \
			--inputbox "WSP. B dwumianu Ax+B" 10 40 "15"`
		RESULT=`echo "scale=$PRECISION;-1*$B/$A" | bc -l`
		;;
	2) RESULT=`echo "scale=$PRECISION;4*a(1)" | bc -l` ;;
	3) RESULT=`echo "scale=$PRECISION;(1 + sqrt(5))/2" | bc -l`
esac

dialog --clear --no-collapse --cr-wrap --title "Wynik" $@ --msgbox "$RESULT" 5 40
