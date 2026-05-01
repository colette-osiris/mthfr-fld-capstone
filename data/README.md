

# Data

This directory contains data used in the Part 2 NHANES analysis 
organized by processing stage.

## raw_data/

Source files from NHANES 2001-2002 and 2003-2004 cohorts. Raw .xpt
files are excluded from version control and must be downloaded directly from the NHANES site (link: https://wwwn.cdc.gov/nchs/nhanes/). All preprocessing and downstream analysis can be accomplished using the cleaned data. 

PubMed search logs, which are stored as .csv files, are used during the Part 1 PRISMA-informed literature review are also tracked here as documentation of the search strategy.

## clean_data/

Analysis-ready datasets produced by the SQL preprocessing pipeline
(see scripts/part2/sql/). The final merged dataset is nhanes_final.csv, while the other CSVs serve as intermediate per-biomarker files that document the extraction stages. A summary of their work with example code blocks can be found in the file 'data-preprocessing.qmd' in part2. 

The 'study-characteristics-table.xlsx` file contains the Part 1 study characteristics table raw data that is imported and converted into a flex table within an R chunk of the 'methods.qmd' document.