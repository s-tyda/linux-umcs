#!/usr/bin/bash
# $Id: form1,v 1.15 2011/10/04 23:36:53 tom Exp $

. ./setup-vars

DIALOG_ERROR=254
export DIALOG_ERROR

backtitle="Tyda zrobił:"

returncode=0
while test $returncode != 1 && test $returncode != 250
do
exec 3>&1
value=`$DIALOG --ok-label "Submit" \
	  --backtitle "$backtitle" "$@" \
	  --form "Here is a possible piece of a configuration program." \
20 50 0 \
	"Imie:"			1 1	"" 1 10 40 0 \
	"Nazwisko:"  	2 1	"" 2 10 40 0 \
	"E-mail:"    	3 1	"" 3 10 40 0 \
	"Login:"     	4 1	"" 4 10 40 0 \
	"Haslo:"     	5 1	"" 5 10 40 0 \
	"Hobby:"     	6 1	"" 6 10 40 0 \
2>&1 1>&3`
returncode=$?
exec 3>&-

show=`echo "$value"`

	case $returncode in
	$DIALOG_CANCEL)
		"$DIALOG" \
		--clear \
		--backtitle "$backtitle" \
		--yesno "Really quit?" 10 30
		case $? in
		$DIALOG_OK)
			break
			;;
		$DIALOG_CANCEL)
			returncode=99
			;;
		esac
		;;
	$DIALOG_OK)
		RESULT=`$DIALOG --clear --backtitle "$backtitle" --no-collapse --cr-wrap --stdout --title "Please choose a file" "$@" --fselect $HOME/ 14 48`
		echo "$show" >> "$RESULT"
		;;
	$DIALOG_HELP)
		echo "Button 2 (Help) pressed."
		exit
		;;
	$DIALOG_EXTRA)
		echo "Button 3 (Extra) pressed."
		exit
		;;
	$DIALOG_ERROR)
		echo "ERROR!$value"
		exit
		;;
	$DIALOG_ESC)
		echo "ESC pressed."
		exit
		;;
	*)
		echo "Return code was $returncode"
		exit
		;;
	esac
break
done
