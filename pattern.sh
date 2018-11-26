#!/bin/bash

wget http://139.91.162.50/bioinf2018/fasta.fa
grep -ie '-[^0-9]' fasta.fa | wc -l
grep -- --  fasta.fa | wc -l
grep -ie '[acgt]-[acgt]' fasta.fa | wc -l
egrep -ix '[acgt]+' fasta.fa | wc -l
grep -i 'GGG[CT][AG]' fasta.fa | wc -l
