#!/bin/bash

#find files with .fasq extension
find . -type f \( -name "*.fasq" \) | while read fname;
do
    #take every 4th row(an assumption), if length > 30 count it and total up
    awk '{if(NR%4==0) if(length($0) >=30)count++;}; END{printf"%s\t%s\t%s\n",FILENAME, count, (100*(count/(NR/4)))}' $fname
done
