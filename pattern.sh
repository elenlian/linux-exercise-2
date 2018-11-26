#!/bin/bash

wget http://139.91.162.50/bioinf2018/fasta.fa
grep -ie '-[^0-9]' fasta.fa | wc -l
grep -- --  fasta.fa | wc -l
grep -ie '[acgt]-[acgt]' fasta.fa | wc -l
egrep -ix '[acgt]+' fasta.fa | wc -l
grep -i 'GGG[CT][AG]' fasta.fa | wc -l

#export only the sequence names and find out how many sequences are from human (hg19)
grep '^>' fasta.fa > sequences.txt
grep "hg19" sequences.txt | wc -l
##50 human sequences
