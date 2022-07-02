#!/bin/bash

filename=StudentsPerformance.csv
FS='","'

awk '/female/' $filename | awk -F $FS '$6 > 60 { count++ } END { print "1 count=" count }'

awk -F $FS '/^\"male/ { sum += $7; count++ } END { print "2 male avg=" sum/count }' $filename
awk -F $FS '/female/ { sum += $7; count++ } END { print "2 female avg=" sum/count }' $filename

awk '/^\"male/' $filename | awk -F $FS 'BEGIN { min = 1000; max = 0 }{ if ( 0+$7<min) min = $7; if ( 0+$7>max) max = 0+$7} END { print "3 reading male min=" min ", max=" max}'
awk '/female/' $filename | awk -F $FS 'BEGIN { min = 1000; max = 0 }{ if ( 0+$7<min) min = $7; if ( 0+$7>max) max = 0+$7} END { print "3 reading female min=" min ", max=" max}'
awk '/^\"male/' $filename | awk -F $FS 'BEGIN { min = 1000; max = 0 }{ if ( 0+$8<min) min = 0+$8; if ( 0+$8>max) max = 0+$8} END { print "3 writing male min=" min ", max=" max}'
awk '/female/' $filename | awk -F $FS 'BEGIN { min = 1000; max = 0 }{ if ( 0+$8<min) min = 0+$8; if ( 0+$8>max) max = 0+$8} END { print "3 writing female min=" min ", max=" max}'

awk '/^\"male/' $filename | awk -F $FS '0+$6 == 100 || 0+$7 == 100 || 0+$8 == 100 { count++ } END { print "4 count=" count }'
