#!/bin/bash

# Create access variables.
ref_alignment=/path/to/dir/bwa_index
source=/path/to/dir/source

# Alignment with bwa mem. The output is a sam file.
srun bwa mem -M -t 26 -p $ref_alignment/Homo_sapiens.hg19.fa $source/bam1_interleaved.fq > $source/bam1_aln.sam

# The end.
