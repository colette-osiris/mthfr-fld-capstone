-- log of database checks 
/*
SELECT COUNT(*) FROM staging.c1_clean;

SELECT * 
FROM staging.c1_clean
LIMIT 10;

SELECT
    COUNT(ast) AS n_ast,
    COUNT(alt) AS n_alt,
    COUNT(ggt) AS n_ggt,
    COUNT(glucose) AS n_glucose,
    COUNT(rbc_folate) AS n_rbc_folate,
    COUNT(vit_b12) AS n_vit_b12,
    COUNT(serum_folate) AS n_serum_folate,
    COUNT(homocysteine) AS n_homocysteine,
    COUNT(mm_acid) AS n_mma,
    COUNT(ferritin) AS n_ferritin,
    COUNT(crp) AS n_crp
FROM staging.c1_clean;


SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'raw'
  AND table_name = 'c2_hcy_mma';

SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'raw'
  AND table_name = 'c2_folate_b12';

SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'raw'
  AND table_name = 'c2_iron';

SELECT * FROM staging.c2_clean
LIMIT 100

SELECT * FROM "raw".c2_alt_ast_ggt_glucose

SELECT * FROM "raw".c2_folate_b12
LIMIT 100

SELECT * FROM "raw".c2_hcy_mma
LIMIT 100

SELECT * FROM "raw".c2_iron

SELECT * FROM "raw".c2_diabetes
LIMIT 100

SELECT * FROM "raw".c2_demo

SELECT * FROM "raw".c2_crp
LIMIT 100

SELECT * FROM "raw".c2_bmi
LIMIT 100


SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'raw'
  AND table_name = 'c2_alt_ast_ggt_glucose';


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT seqn) AS distinct_seqn
FROM staging.c2_clean;


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_alt_ast_ggt_glucose;


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_demo;



SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_bmi;




SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_diabetes;


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_crp;


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_folate_b12;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_hcy_mma;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c2_iron;



SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_alt_ast_ggt_glucose;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_bmi;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_crp;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_demo;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_diabetes;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_folate_b12_hcy_mma_iron;

SELECT
    CAST(CAST(seqn AS numeric) AS integer) AS seqn_clean,
    COUNT(*) AS n_rows
FROM raw.c2_diabetes
GROUP BY seqn_clean
HAVING COUNT(*) > 1
ORDER BY n_rows DESC, seqn_clean
LIMIT 20;

SELECT *
FROM raw.c2_diabetes
WHERE CAST(CAST(seqn AS numeric) AS integer) = 21005;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_demo;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_bmi;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_alt_ast_ggt_glucose;

SELECT
    CAST(CAST(seqn AS numeric) AS integer) AS seqn_clean,
    COUNT(*) AS n_rows
FROM raw.c1_bmi
GROUP BY seqn_clean
HAVING COUNT(*) > 1
ORDER BY n_rows DESC, seqn_clean
LIMIT 20;

SELECT *
FROM raw.c1_bmi
WHERE CAST(CAST(seqn AS numeric) AS integer) = 9966;


TRUNCATE TABLE raw.c1_bmi;

COPY raw.c1_bmi
FROM '/Users/coletterouiller/capstone/data/clean_data/c1_bmi.csv'
WITH (FORMAT CSV, HEADER true);

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_bmi;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_bmi;

 

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_demo;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_alt_ast_ggt_glucose;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_bmi;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_crp;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_diabetes;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer)) AS distinct_seqn
FROM raw.c1_folate_b12_hcy_mma_iron;
 

 SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT seqn) AS distinct_seqn
FROM staging.c1_clean;


SELECT seqn, COUNT(*) AS n_rows
FROM staging.c1_clean
GROUP BY seqn
HAVING COUNT(*) > 1
ORDER BY n_rows DESC, seqn
LIMIT 20;


SELECT
    COUNT(*) AS total_rows,
    COUNT(ast) AS n_ast,
    COUNT(alt) AS n_alt,
    COUNT(ggt) AS n_ggt,
    COUNT(glucose) AS n_glucose,
    COUNT(rbc_folate) AS n_rbc_folate,
    COUNT(vit_b12) AS n_vit_b12,
    COUNT(serum_folate) AS n_serum_folate,
    COUNT(homocysteine) AS n_homocysteine,
    COUNT(mm_acid) AS n_mma,
    COUNT(ferritin) AS n_ferritin
FROM staging.c1_clean;

SELECT COUNT(*)
FROM raw.c1_alt_ast_ggt_glucose;

SELECT COUNT(DISTINCT CAST(CAST(seqn AS numeric) AS integer))
FROM raw.c1_alt_ast_ggt_glucose;


SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT seqn) AS distinct_seqn
FROM staging.c2_clean;

SELECT seqn, COUNT(*) AS n_rows
FROM staging.c2_clean
GROUP BY seqn
HAVING COUNT(*) > 1; 

SELECT * FROM staging.c2_clean
LIMIT 100

SELECT * FROM staging.c1_clean
LIMIT 100


--following are checks to ensure everything is proper through staging schema 

-- check: 1 row per person per staging table 
--status: complete 

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT seqn) AS distinct_seqn
FROM staging.c1_clean;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT seqn) AS distinct_seqn
FROM staging.c2_clean;

-- check: no duplicate seqn per table  
--status: complete 

SELECT seqn, COUNT(*) AS n_rows
FROM staging.c1_clean
GROUP BY seqn
HAVING COUNT(*) > 1
ORDER BY n_rows DESC, seqn
LIMIT 20;

SELECT seqn, COUNT(*) AS n_rows
FROM staging.c2_clean
GROUP BY seqn
HAVING COUNT(*) > 1
ORDER BY n_rows DESC, seqn
LIMIT 20;

-- check: n per cohort is the same in raw and staging 
--status: complete 
--SELECT COUNT(*) FROM raw.c1_alt_ast_ggt_glucose;
--SELECT COUNT(*) FROM staging.c1_clean;

--SELECT COUNT(*) FROM raw.c2_alt_ast_ggt_glucose;
SELECT COUNT(*) FROM staging.c2_clean;



-- check: null coverage per biomarker  
--status: complete 
SELECT
    COUNT(*) AS total_rows,
    COUNT(ast) AS n_ast,
    COUNT(alt) AS n_alt,
    COUNT(ggt) AS n_ggt,
    COUNT(glucose) AS n_glucose,
    COUNT(rbc_folate) AS n_rbc_folate,
    COUNT(vit_b12) AS n_vit_b12,
    COUNT(serum_folate) AS n_serum_folate,
    COUNT(homocysteine) AS n_homocysteine,
    COUNT(mm_acid) AS n_mma,
    COUNT(ferritin) AS n_ferritin,
    COUNT(crp) AS n_crp,
    COUNT(bmi) AS n_bmi,
    COUNT(diabetes) AS n_diabetes
FROM staging.c1_clean;

SELECT
    COUNT(*) AS total_rows,
    COUNT(ast) AS n_ast,
    COUNT(alt) AS n_alt,
    COUNT(ggt) AS n_ggt,
    COUNT(glucose) AS n_glucose,
    COUNT(rbc_folate) AS n_rbc_folate,
    COUNT(vit_b12) AS n_vit_b12,
    COUNT(serum_folate) AS n_serum_folate,
    COUNT(homocysteine) AS n_homocysteine,
    COUNT(mm_acid) AS n_mma,
    COUNT(ferritin) AS n_ferritin,
    COUNT(crp) AS n_crp,
    COUNT(bmi) AS n_bmi,
    COUNT(diabetes) AS n_diabetes
FROM staging.c2_clean;

-- check: casting or import mistakes   
--status: complete 
SELECT
    MIN(age_year), MAX(age_year),
    MIN(bmi), MAX(bmi),
    MIN(ast), MAX(ast),
    MIN(alt), MAX(alt),
    MIN(ggt), MAX(ggt),
    MIN(glucose), MAX(glucose),
    MIN(crp), MAX(crp)
FROM staging.c1_clean;

SELECT
    MIN(age_year), MAX(age_year),
    MIN(bmi), MAX(bmi),
    MIN(ast), MAX(ast),
    MIN(alt), MAX(alt),
    MIN(ggt), MAX(ggt),
    MIN(glucose), MAX(glucose),
    MIN(crp), MAX(crp)
FROM staging.c2_clean;


-- check: coded variables correctness    
--status: complete 
SELECT sex, COUNT(*)
FROM staging.c1_clean
GROUP BY sex
ORDER BY sex;

SELECT race_ethnicity, COUNT(*)
FROM staging.c1_clean
GROUP BY race_ethnicity
ORDER BY race_ethnicity;

SELECT diabetes, COUNT(*)
FROM staging.c1_clean
GROUP BY diabetes
ORDER BY diabetes;

SELECT sex, COUNT(*)
FROM staging.c2_clean
GROUP BY sex
ORDER BY sex;


SELECT race_ethnicity, COUNT(*)
FROM staging.c2_clean
GROUP BY race_ethnicity
ORDER BY race_ethnicity;

SELECT diabetes, COUNT(*)
FROM staging.c2_clean
GROUP BY diabetes
ORDER BY diabetes;

--check: confirm n for biomarker panel
--status: complete 

SELECT COUNT(*)
FROM staging.c1_clean
WHERE rbc_folate IS NOT NULL
  AND vit_b12 IS NOT NULL
  AND serum_folate IS NOT NULL
  AND homocysteine IS NOT NULL
  AND mm_acid IS NOT NULL
  AND ferritin IS NOT NULL;

SELECT COUNT(*)
FROM staging.c2_clean
WHERE rbc_folate IS NOT NULL
  AND vit_b12 IS NOT NULL
  AND serum_folate IS NOT NULL
  AND homocysteine IS NOT NULL
  AND mm_acid IS NOT NULL
  AND ferritin IS NOT NULL;


--check: manual inspection 
--status: complete 
SELECT *
FROM staging.c1_clean
LIMIT 20;
*/
SELECT *
FROM staging.c2_clean
LIMIT 20;