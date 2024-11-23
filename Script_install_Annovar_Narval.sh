#!/bin/bash
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=32G
#SBATCH --cpus-per-task=4
#SBATCH --time=0-23:50
#SBATCH --job-name=install_Annovar
#SBATCH --mail-user=jcamachov_23@hotmail.com
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --output=/home/josecv3/projects/rrg-wfoulkes/josecv3/TCGA/OV_cohort/out_files/install_Annovar.out


# Setting Bash to exit whenever a command exits with a non-zero status.
set -e
set -o pipefail


# -------------------------------------------------------------------------------------------------- #
# ################################################################################################## #
# ###################                                                            ################### #
# ###################              ---   Install Annovar   ---                   ################### #
# ###################              ---       Narval        ---                  ################### #
# ###################                                                            ################### #
# ################################################################################################## #
# -------------------------------------------------------------------------------------------------- #

# Start the process.

# 1. Go to the directory defined to be for annovar.
cd /home/josecv3/projects/def-wfoulkes/josecv3/Annovar_commandline

# 2. Download annovar.
wget http://www.openbioinformatics.org/annovar/download/0wgxR2rIVP/annovar.latest.tar.gz

# 3. Untar annovar.
tar -xvf annovar.latest.tar.gz

# 4. Enter the generated directory called "annovar".
cd annovar

# 5. Start downloading the required databases.
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

# ----- No need of -downdb -webfrom annovar.
./annotate_variation.pl -downdb -buildver hg19 cytoBand humandb/
./annotate_variation.pl -downdb -buildver hg19 snp138 humandb/
./annotate_variation.pl -downdb -buildver hg19 1000g2015aug humandb/

# The end.
