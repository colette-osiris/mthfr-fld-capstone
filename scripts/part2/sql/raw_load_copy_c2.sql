-- need to populate empty raw tables for c1


-- duplication issue identified: use of COPY command 
-- COPY=new full importation every run - need to truncate for reproducible reloads
-- need to populate empty table
TRUNCATE TABLE
    raw.c2_demo,
    raw.c2_alt_ast_ggt_glucose,
    raw.c2_bmi,
    raw.c2_crp,
    raw.c2_diabetes,
    raw.c2_folate_b12,
    raw.c2_hcy_mma,
    raw.c2_iron;
	
-- c2 demo table
COPY raw.c2_demo
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_demo.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 alt/ast/ggt/glucose table
COPY raw.c2_alt_ast_ggt_glucose
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_alt_ast_ggt_glucose.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 bmi table
COPY raw.c2_bmi
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_bmi.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 crp table
COPY raw.c2_crp
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_crp.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 diabetes table
COPY raw.c2_diabetes
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_diabetes.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 folate B12 table
COPY raw.c2_folate_b12 
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_folate_b12.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 hcy mma table
COPY raw.c2_hcy_mma 
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_hcy_mma.csv'
WITH (FORMAT CSV, HEADER true);

-- c2 iron table
COPY raw.c2_iron 
FROM '/Users/coletterouiller/capstone/data/clean_data/c2_iron.csv'
WITH (FORMAT CSV, HEADER true);
