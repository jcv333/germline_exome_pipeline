#!/bin/bash

# 1. Load modules.
module load gatk/4.1.2.0
module load java/1.8.0_192
module load samtools/1.10

# 2. Create variables for directories.
ref=/home/path/to/dir/hg19_reference
source=/home/path/to/dir/source

# 3. Variant calling - haplotypecaller.
srun gatk --java-options "-Xms30g -Xmx120g" HaplotypeCaller \
-R $ref/Homo_sapiens.hg19.fa \
-I $source/bam1_sorted_nodup_aln.bam \
-O $source/bam1_nodup.hc.raw.vcf.gz \
--standard-min-confidence-threshold-for-calling 20

# 4. Remove no longer useful intermediate files.
rm $source/bam1_sorted_nodup_aln.bam

# The end.
