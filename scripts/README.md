This directory includes all scripts written for the project. 

It has 3 sub-directories for each utilized programming language in the prject: Python, SQL, and R. 

Database structure may change as project progresses. 

# Scripts

This directory includes all helper scripts written for the project, including preprocessing and conversion scripts, and is organized by language.

## Execution order

1. **SQL** (part2/sql/) — PostgreSQL setup, raw data loading, and
   staging queries. 
   
   Run in this order:
   
   - initialize_database.sql
   - create_raw_tables.sql
   - raw_load_copy_c1.sql and raw_load_copy_c2.sql
   - staging_c1.sql and staging_c2.sql
   - final_schema.sql

2. **Python** (part2/python/) — xpt_to_csv.py converts NHANES
   .xpt binary format to CSV before SQL on boarding.

Once .qmd file population started, all remaining required code was included in those documents. The Part 2 analysis itself is performed in part2/machine-learning.qmd (Python ML modeling) and part2/visualization.qmd (R diagnostic visualization), which are both located at the project root.
