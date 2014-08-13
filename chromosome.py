#! /usr/bin/env python

import sys
import csv

FILE = "sample_files/annotate/coordinates_to_annotate.txt"
SECOND_FILE = "sample_files/gtf/hg19_annotations.gtf"
OUTPUT_FILE = "coordinates_to_annotate_output.txt"

sys.stdout = open(OUTPUT_FILE, "w")

with open(FILE) as source:
    coordinates = list(csv.reader(source, delimiter="\t"))

with open(SECOND_FILE) as source:
    annotations = list(csv.reader(source, delimiter="\t"))


for index, line in enumerate(coordinates):
    for index2, line2 in enumerate(annotations):
        if coordinates[index][0] == annotations[index2][0] and annotations[index2][3] <= coordinates[index][1] \
                <= annotations[index2][4]:
            print "%s\t%s\t%s" % (coordinates[index][0], coordinates[index][1], annotations[index2][8])
            break