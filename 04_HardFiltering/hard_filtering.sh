#!/bin/bash

# 1. Load the required libraries.
module load gatk/4.1.2.0
module load java/1.8.0_192
module load samtools/1.10
module load tabix/0.2.6

# 2. Create variables for directories.
ref=/home/path/to/dir/hg19_reference
source=/home/path/to/dir/source

# 3. VariantFiltration.
srun gatk --java-options "-Xms30g -Xmx120g" VariantFiltration \
-R $ref/Homo_sapiens.hg19.fa \
-V $source/bam1_nodup.hc.raw.vcf.gz \
-O $source/bam1_rln.nodup.hc.vf.raw.vcf.gz \
--filter-name "QD_filter" \
--filter-expression "QD < X.X" \
--filter-name "FS_filter" \
--filter-expression "FS > XXX.X" \
--filter-name "MQ_filter" \
--filter-expression "MQ0 < XXX.X"

# 4. Remove variants with a non-pass quality criteria.
gunzip $source/bam1_rln.nodup.hc.vf.raw.vcf.gz
awk '/^#/||$7=="PASS"' $source/bam1_rln.nodup.hc.vf.raw.vcf > $source/bam1_rln.nodup.hc.vf.raw.awk.vcf
bgzip -c $source/bam1_rln.nodup.hc.vf.raw.awk.vcf > $source/bam1_rln.nodup.hc.vf.raw.awk.vcf.gz
tabix -p vcf $source/bam1_rln.nodup.hc.vf.raw.awk.vcf.gz

# The end.
