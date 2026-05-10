# MTHFR C677T & Fatty Liver Disease: A Biomarker Analysis

[![Live Site](https://img.shields.io/badge/site-live-brightgreen)](https://colette-osiris.github.io/mthfr-fld-capstone/)

IVSP capstone project, B.S. Bioinformatics and Computational Biology, University of Maryland College Park.

**Author:** Colette Rouiller

**Live Site:** https://colette-osiris.github.io/mthfr-fld-capstone/

## Background

Fatty Liver Disease (FLD) affects up to 42.2% of US adults, and the MTHFR C677T variant is carried by approximately 25% of the US population. Both involve hepatic mechanisms, and prior literature suggests the variant may influence liver-related biomarkers — but a direct test of mechanistic linkage between C677T genotype and FLD risk would require a single dataset containing both genotype and biomarker data per individual. No such dataset is publicly available.

## Study Design

This project uses a split-analysis design that pairs two independently-sourced analyses sharing a biomarker overlap, rather than collapsing to a single underpowered cohort:

- **Part 1 — Genotype-stratified biomarker profile.** A PRISMA-informed mini meta-analysis of peer-reviewed literature establishing directional biomarker patterns associated with C677T genotype (CC/CT/TT).
- **Part 2 — Population-level FLD classification.** A machine-learning analysis on NHANES 2001–2004 cohort data, evaluating whether biomarkers identified in Part 1 carry independent predictive signal for FLD status.
- **Part 3 — Discussion.** Concordance evaluation between Parts 1 and 2, mechanistic plausibility, limitations.

The split design is not a substitute for direct testing; concordance between parts is interpreted as plausibility evidence, not causal evidence.

## Methods

**Part 1.** PRISMA-informed search strategy with pre-defined inclusion/exclusion criteria and a study-characteristics table. Bibliography and search logs in `references/` and `images/`.

**Part 2.** NHANES 2001–2002 and 2003–2004 cohorts, with 1999–2000 as supporting cohort. Data extraction and preprocessing in PostgreSQL via a three-schema architecture (`raw` / `staging` / `final`). Modeling in Python (logistic regression, KNN; scikit-learn). Interpretive visualization in R (tidyverse). All analysis components rendered through Quarto.

**Part 3.** Integrated interpretation, written prose.

### Implementation notes

- Cohort construction was re-anchored on the largest validated source table after early designs anchored on full biomarker overlap collapsed the analytical sample to 551 observations. The re-anchored design recovered ~15,000 observations for the primary analysis while preserving the 551-row biomarker subset for sub-analysis.
- Cross-language reproducibility checks between Python and R surfaced a 1,446-row misclassification (~10% of usable sample) during preliminary runs, traced to NaN-handling differences. The check was incorporated as a routine QA/QC step in the final pipeline.
- Type-drift and row-duplication issues at the staging layer were resolved through SEQN auditing and nested SQL casts to preserve one-row-per-participant integrity.

## Tech Stack

Python (pandas, scikit-learn), R (tidyverse), PostgreSQL, SQL, Bash, Quarto, reticulate, GitHub Pages.

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

## Data Availability

Part 1 sources are peer-reviewed publications cited in `references/`. Part 2 uses the National Health and Nutrition Examination Survey (NHANES), publicly available at <https://www.cdc.gov/nchs/nhanes/>.

## Reproducibility 

Raw NHANES .xpt files were excluded from version control to reduce repo size and in accordance with professional standard practices. Original data can be retrieved from the NHANES website to fully reproduce the preprocessing pipeline, but the cleaned datasets in data/clean_data/ are sufficient to run downstream analysis.
All source code, cleaned data files, data processing scripts, and rendering configuration are version-controlled and publicly available in this repository. 

## Acknowledgements 

Project mentors/readers included Aric Bills (ARLIS at UMD), Jeff Henrikson (AOSC at UMD), and Dr. Louisa Wu (CBMG at UMD).   
