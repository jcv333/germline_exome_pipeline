#!/bin/bash

# 1. Create variables for directories.
source=/home/path/to/dir/source

# 2. Load modules.
module load gatk/4.1.2.0
module load java/13.0.1
module load bwa/0.7.17
module load samtools/1.10

# 3. Sort the aligned bam file.
srun gatk --java-options "-Xms30g -Xmx120g" SortSam \
-I $source/bam1_mrg_aln.bam \
-O $source/bam1_sorted_aln.bam \
--SORT_ORDER coordinate

# 4. Mark PCR duplicates.
srun gatk --java-options "-Xms30g -Xmx120g" MarkDuplicates \
-I $source/bam1_sorted_aln.bam \
-O $source/bam1_sorted_nodup_aln.bam \
-M $source/bam1_sorted_nodup_aln_metrics.txt \
--REMOVE_DUPLICATES true

# 5. Remove no longer useful intermediate files.
rm $source/bam1_mrg_aln.bam
rm $source/bam1_mrg_aln.bai

# 5. Create index.
samtools index $source/bam1_sorted_nodup_aln.bam

# The end.
