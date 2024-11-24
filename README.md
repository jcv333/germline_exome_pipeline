# Exome analysis: genomic pipelines.
## Repository created by Jose Camacho Valenzuela.
Pipeline to process exome-sequenced BAM files with basic parameters, from alignment to annotation.

### Disclaimer.
This repository provides an example of a mock pipeline for processing blood BAM files for downstream germline exome analysis. The pipeline is broken down into individual scripts `.sh`, intended to serve as generalized templates, which can be adapted to users' specific needs.

## Alignment to the human reference genome hg19.
Script available in the subdirectory `alignment.sh`.

## Remove PCR duplicates.
Script available in the subdirectory `PCR_duplicates.sh`.

## Variant calling for germline samples.
Script available in the subdirectory `variant_calling.sh`.

## Hard filtering.
Script available in the subdirectory `hard_filtering.sh`.

## Annotation with Annovar.
Script available in the subdirectory `annotation.sh`. Additionally, installation of annovar is exemplified in `Script_install_annovar_commandline.sh`.

