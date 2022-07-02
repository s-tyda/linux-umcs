#!/usr/bin/bash

echo $USER > pliczek.txt
getent passwd $USER | cut -d: -f6 >> pliczek.txt
lscpu | grep 'Nazwa modelu' | cut -f 2 -d ":" | xargs  >> pliczek.txt
uname -r >> pliczek.txt
