#!/usr/bin/bash

case $1 in
   "-hd") df ;;
   "-ram") free ;;
   "-cpu") lscpu ;;
   "-all") df & free & lscpu
esac
