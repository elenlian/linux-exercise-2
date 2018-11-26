#!/bin/bash

#Download the fasta file.
wget http://139.91.162.50/bioinf2018/fasta.fa

#Count how many sequences have at least an indel (i.e. at least a single ‘-’)
grep -ie '-[^0-9]' fasta.fa | wc -l 
##2607 sequences

#Count how many sequences have at least two continuous indels (i.e. ‘–’)
grep -- --  fasta.fa | wc -l
##2491 sequences

#Count how many sequences have a pattern that looks like that N_N_N, where N can be any nucleotide.
grep -ie '[acgt]-[acgt]' fasta.fa | wc -l
##504 sequences

#Count how many sequences have no '-'
egrep -ix '[acgt]+' fasta.fa | wc -l
##2392 sequences

#Extract all motifs that are three ’G’s then a pyrimidine and then a purine.
grep -i 'GGG[CT][AG]' fasta.fa | wc -l
##1213 sequences

#Export only the sequence names and find out how many sequences are from human (hg19)
grep '^>' fasta.fa > sequences.txt
grep "hg19" sequences.txt | wc -l
##50 human sequences
