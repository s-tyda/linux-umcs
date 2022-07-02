#!/usr/bin/bash
# $Id: msgbox,v 1.7 2010/01/13 10:35:13 tom Exp $

. ./setup-vars

$DIALOG --title "MESSAGE BOX" --clear "$@" \
        --msgbox "\
User: `echo $USER`
Home: `getent passwd $USER | cut -d: -f6`
CPU: `lscpu | grep 'Model name' | cut -f 2 -d ":" | xargs`
Kernel: `uname -r`" 8 50

retval=$?

. ./report-button
