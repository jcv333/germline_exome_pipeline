# work1
First repo trial

R basic commands

library(data.table)

# 1. Load the required libraries.
library(data.table)
library(tidyr)
library(dplyr)
library(readxl)
library(openxlsx)
library(tidyverse)

# 2. Load the preliminary integrated dataframe without gHRD samples- Sig3+ group (n = 106).
setwd("C:/Users/k_mac/OneDrive - McGill University/D/TCGA_files/2._TCGA_germline/BRCA/Integrated_analysis_refined2/Integrated_masterdataframes")
list.files()
masterdf.106 <- fread(file = "Sig3_positive_df_ClinVar_unclassified_filtered_preliminary_6_nogHRD.txt") %>% setDT()
unique(masterdf.106$Tumor_Sample_Barcode) # Indeed, 106 samples

# 3. Import the big gene panel and the targeted panel.
setwd("C:/Users/k_mac/OneDrive - McGill University/Desktop/McGill")
gp <- read_excel(path = "all_panels_2024_curated_v5.xlsx", sheet = "Sheet1") %>% setDT()

