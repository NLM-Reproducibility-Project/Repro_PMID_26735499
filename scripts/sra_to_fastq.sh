#!/bin/bash

#converts sra files to fastq and splits up paired reads
for ((i = 54; i <= 81 ; i++))
        do
        fastq-dump --split-files --origfmt --gzip SRR29899$i
done


