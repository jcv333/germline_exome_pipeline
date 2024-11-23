#!/bin/bash

# ################################################################################################## #
# ###################              ---   Install Annovar   ---                   ################### #
# ################################################################################################## #

# 1. Download annovar into the desired directory.
cd /home/user/path/to/dir/annovar_commandline
wget http://www.openbioinformatics.org/annovar/download/0wgxR2rIVP/annovar.latest.tar.gz
tar -xvf annovar.latest.tar.gz

# 2. Download the required databases.
cd annovar

# ----- From annovar web (-downdb -webfrom annovar).
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 clinvar_20220320 humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 refGene humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 avsnp150 humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 exac03nontcga humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 revel humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 mcap humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 gme humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 cosmic70 humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 kaviar_20150923 humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 gnomad_genome humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 exac03nontcga humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 esp6500siv2_all humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 dbnsfp30a humandb/
./annotate_variation.pl -downdb -webfrom annovar -buildver hg19 dbscsnv11 humandb/

# ----- No -webfrom.
./annotate_variation.pl -downdb -buildver hg19 cytoBand humandb/
./annotate_variation.pl -downdb -buildver hg19 snp138 humandb/
./annotate_variation.pl -downdb -buildver hg19 1000g2015aug humandb/

# The end.
