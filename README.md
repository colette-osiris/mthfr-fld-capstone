# mthfr-fld-capstone

This Repository contains my IVSP Capstone project that investigates the relationship between MTHFR C677T mutation, Fatty Liver Disease,through analysis of their shared associated biomarkers. 

Final Deliverable: Quarto-rendered HTML document including:

  1) a PRISMA-informed mini meta-analysis on mechanisms and biomarker trends related to the C677T MTHFR mutation
  2) a population level NHANES analysis using SQL, Python, and R
  3) Integrated interpretation, visualization, and discussion

Note to self: additional README.md files created for project subdirectories since empty directory creation cannot be committed in GitHub.  

# this list is current updates since last mentor meeting 
- finalized biomarker list for parts 1 and 2
- emailed faculty readers (1 responded, still waiting on next)
- finalized part 2 data cohorts (2001-2002, 2003-2004, with supporting cohort of 1999-2000)
- figured out which files I needed per cohort
- fixed PostGres Login and update issues
- planned and executed database layout/approach: (layer 1 = imported/converted data), (layer 2 = preprocessing/joining based on cohort), (layer 3 = final 3 tables)

  
- notes:
-   need to look at export packages
-   look at schema structure - not learned in class but could be useful here with 30+ data files
- - defintely sticking with schema - just a folder system (going to have 3: raw, staging, and final)
  - Schema = folder/namespace (raw.*, staging.*, final.*)
  - View = a saved query that behaves like a table when you SELECT from it
  
