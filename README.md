# Exome analysis: genomic pipelines.
## Repository created by Jose Camacho Valenzuela.
Pipeline to process exome-sequenced BAM files with basic parameters, from alignment to annotation.

### Disclaimer.
This repository provides an example of a mock pipeline for processing blood BAM files for downstream germline exome analysis. The pipeline is broken down into individual scripts `.sh`, intended to serve as generalized templates, which can be adapted to users' specific needs.

## 1) Alignment to the human reference genome hg19.
Script available in the subdirectory <b> 01_Alignment </b>, file `alignment.sh`.

## 2) Remove PCR duplicates.
Script available in the subdirectory <b> 02_PCRduplicates </b>, file `PCR_duplicates.sh`.

## 3) Variant calling for germline samples.
Script available in the subdirectory <b> 03_VariantCalling </b>, file `variant_calling.sh`.

## 4) Hard filtering.
Script available in the subdirectory <b> 04_HardFiltering </b>, file `hard_filtering.sh`.

## 5) Annotation with Annovar.
Script available in the subdirectory <b> 05_Annotation </b>, file `annotation.sh`.
Additionally, installation of annovar is exemplified in `Script_install_annovar_commandline.sh`.

