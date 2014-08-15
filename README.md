bio-utilites
==============

Some bio utilities I did for a code test. Hopefully these can help others in the bio field work with their data.

##fastq.sh
A simple bash script to read files with a fasq extension and do some counting on string length. 

To run fastq:
```
run "chmod +x fastq.sh", and then "./fastq.sh"
```

##fasta.sh
A bash script to read a passed file name and count the 10 most frequent sequences.

To run fasta:
```
run "chmod +x fastq.sh", and then "./fastq.sh /path/to/my/data/file"
```


##chromosome.py
A python script to lookup chromosome coordinates and match it's annotation from a second file. Outputs a file with the combined match. 

To run chromosome.py:

```
Modify chromeosome.py to point to correct file paths.
run "python chromosome.py"
```
