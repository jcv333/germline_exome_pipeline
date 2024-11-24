#!/bin/bash

# 1. Variables for directories.
source=/home/path/to/dir/source

# 2. Sort the aligned bam file.
srun gatk --java-options "-Xms30g -Xmx120g" SortSam \
-I $source/bam1_mrg_aln.bam \
-O $source/bam1_sorted_aln.bam \
--SORT_ORDER coordinate

# 3. Mark PCR duplicates.
srun gatk --java-options "-Xms30g -Xmx120g" MarkDuplicates \
-I $source/bam1_sorted_aln.bam \
-O $source/bam1_sorted_nodup_aln.bam \
-M $source/bam1_sorted_nodup_aln_metrics.txt \
--REMOVE_DUPLICATES true

# 4. Remove no longer useful intermediate files.
rm $source/bam1_mrg_aln.bam
rm $source/bam1_mrg_aln.bai

# 5. Create index.
samtools index $source/bam1_sorted_nodup_aln.bam

# The end.
