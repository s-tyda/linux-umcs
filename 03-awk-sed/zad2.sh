#!/bin/bash

sed -i 's/female/0/;s/male/1/' StudentsPerformance.csv
sed -i 's/none/0/' StudentsPerformance.csv
sed -i 's/group //' StudentsPerformance.csv
