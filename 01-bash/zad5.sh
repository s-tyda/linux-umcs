#!/usr/bin/bash

function replace_word {
	read text
	echo "${text//$1/$2}"
}

replace_word $1 $2
