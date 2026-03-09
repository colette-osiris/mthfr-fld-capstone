-- need to populate empty table

-- c1 demo table
COPY raw.c1_demo
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_demo.csv'
WITH (FORMAT CSV, HEADER true);

-- c1 alt/ast/ggt/glucose table
COPY raw.c1_alt_ast_ggt_glucose
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_alt_ast_ggt_glucose.csv'
WITH (FORMAT CSV, HEADER true);

-- c1 bmi table
COPY raw.c1_bmi
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_bmi.csv'
WITH (FORMAT CSV, HEADER true);

-- c1 crp table
COPY raw.c1_crp
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_crp.csv'
WITH (FORMAT CSV, HEADER true);

-- c1 diabetes table
COPY raw.c1_diabetes
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_diabetes.csv'
WITH (FORMAT CSV, HEADER true);

-- c1 folate B12 hcy mma and iron table
COPY raw.c1_folate_b12_hcy_mma_iron 
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_folate_b12_hcy_mma_iron.csv'
WITH (FORMAT CSV, HEADER true);