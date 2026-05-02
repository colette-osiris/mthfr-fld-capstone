# MTHFR C677T & Fatty Liver Disease: A Biomarker Analysis

This project was completed by Colette Rouiller as an IVSP capstone for her B.S. of Bioinformatics and Computational Biology at the University of Maryland, College Park. It investigates whether biomarkers associated with the MTHFR C677T variant retain relevance and show correlated patterns in population-level Fatty Liver Disease Analysis. 

**Live site:** https://colette-osiris.github.io/mthfr-fld-capstone/

## Project Overview 

Fatty Liver Disease affects up to 42.2% of US adults and MTHFR C677T is
carried by approximately 25% of the US populationl; these conditions overlapping across symptoms, and they both impact biological mechanisms that take place in the liver. Directly testing the relationship between the two would require a single dataset containing both genotype and biomarker data from the same individuals, which is not publicly available. Instead, this project uses a split-analysis approach that focuses on overlapping biomarker trends as potential indications of mechanistic links.

## Project Structure 

The final deliverable for this prodiect is a Quarto-rendered website that is organized into 3 parts:  

  1) A PRISMA-informed mini meta-analysis on mechanisms and biomarker trends related to the C677T MTHFR mutation
  2) A population level analysis of NHANES 2001-2004 cohort data. Data extracting and preprocessing we conducted in PostgresSQL, machine learning (logistical regression and KNN) in Python, and interpretive visualization in R. All components are contained within Quarto documents.
  4) Integrated interpretation and discussion that evaluates concordance and mechanistic plausibility between Parts 1 and 2, as well as limitations and directions for future research. 

## Repository Layout 

 The layout of the repository is as follows: 

├── _quarto.yml                 Quarto configuration

├── index.qmd                   Site landing page

├── discussion.qmd              Part 3 integrated discussion

├── references.qmd              Bibliography page

├── requirements.txt            Python dependencies

├── .Renviron                   Python interpreter config (for reticulate)


├── part1/                      Part 1 source files (literature synthesis)

├── part2/                      Part 2 source files (NHANES analysis)


├── scripts/                    Data preprocessing pipeline (Python + SQL)

├── data/                       Raw NHANES files and cleaned datasets

├── plots/                      Generated figures

├── tables/                     Generated tables

├── images/                     Reference images and search logs

├── references/                 Bibliography files (.bib, .csl) and PRISMA tracking


└── docs/                       Rendered Quarto site (served by GitHub Pages)

## Reproducibility 

Raw NHANES .xpt files were excluded from version control to reduce repo size and in accordance with professional standard practices. Original data can be retrieved from the NHANES website to fully reproduce the preprocessing pipeline, but the cleaned datasets in data/clean_data/ are sufficient to run downstream analysis.
All source code, cleaned data files, data processing scripts, and rendering configuration are version-controlled and publicly available in this repository. 

## Acknowledgements 

Project mentors/readers included Aric Bills (ARLIS at UMD), Jeff Henrikson (AOSC at UMD), and Dr. Louisa Wu.   
