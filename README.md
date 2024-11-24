# Exome analysis: genomic pipelines.
## Repository created by Jose Camacho Valenzuela.
Pipeline to process exome-sequenced BAM files with basic parameters, from alignment to annotation.

### Disclaimer.
This repository contains an example bioinformatics pipeline to process blood BAM files for downstream germline exome analysis. The scripts of this pipeline are generalized templates and can be adapted to the specific user's needs. Unpublished data is not included here.

## Alignment to the human reference genome hg19.
Script is available in the subdirectory `alignment.sh`.

## Variant calling for germline samples.
Script is available in the subdirectory `variant_calling.sh`.

## Hard filtering.
Script is available in the subdirectory `hard_filtering.sh`.

## Annotation with Annovar.
Script is available in the subdirectory `annotation.sh`. Additionally, installation of annovar is exemplified in `Script_install_annovar_commandline.sh`.

