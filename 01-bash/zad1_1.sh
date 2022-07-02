#!/usr/bin/bash

case $1 in
   "-mv") mv $2 $3 ;;
   "-cp") cp $2 $3 ;;
   "-touch") touch $2 ;;
   "-mkdir") mkdir $2 ;;
   "-mkdirs") mkdir -p $2 ;;
   "-rm") rm $2 ;;
   "-rmdir") rm -r $2
esac
