#!/bin/bash
#Bash script to find 10 most frequent sequences and return the sequence and counts.

if [ $# -eq 0 ]
 then
    echo "File name not passed. Pass file name when running this script like this: \"./fasta.sh mySampleFile.fasta\""
    exit 1
fi

#Pass every second row, use dna seq as our array index.
awk '{if(NR%2==0)dna_count[$0]++;};END{for(seq in dna_count)printf "%s count is: %s\n", seq, dna_count[seq] | "sort -t \" \" -k4 -n -r | head -n 10"}' $1 
