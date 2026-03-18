-- Capstone database final schema script
-- Created: 2026-03-18
-- Owner: coletterouiller
-- Status: incomplete (draft - still need to clean comments)


-- part 3: create one final table across both cohorts 

-- set path 
SET search_path TO final; 


-- drop if exists (for debugging/query development)
DROP TABLE IF EXISTS nhanes_final;

--now create table

CREATE TABLE nhanes_final AS
SELECT 
	c1_clean.seqn,

    -- cohort 1 label
    'c1_2001_2002' AS cohort,

    -- demographics vars 
    c1_clean.age_year,
    c1_clean.sex,
    c1_clean.race_ethnicity,
    c1_clean.income_ratio,

    -- demo weights
    c1_clean.exam_weight,
    c1_clean.survey_psu,
    c1_clean.survey_strata,

    -- bmi vars 
    c1_clean.bmi,
    c1_clean.waist_circumference,

    -- diabetes vars
    c1_clean.diabetes,

    -- crp (inflammation) var
    c1_clean.crp,

    -- liver vars to keep
    c1_clean.ast,
    c1_clean.alt,
    c1_clean.ggt,
    c1_clean.glucose,

    --biomarkers 
    c1_clean.rbc_folate,
    c1_clean.vit_b12,
    c1_clean.serum_folate,
    c1_clean.homocysteine,
    c1_clean.mm_acid,
    c1_clean.ferritin

FROM staging.c1_clean

 --use UNION ALL not UNION bc I am stacking, not de-duplicating 
UNION ALL

--now adding in second cohort
SELECT
    c2_clean.seqn,

    -- cohort label
    'c2_2003_2004' AS cohort,

    -- demographics vars to keep
    c2_clean.age_year,
    c2_clean.sex,
    c2_clean.race_ethnicity,
    c2_clean.income_ratio,

    -- demo weights to keep
    c2_clean.exam_weight,
    c2_clean.survey_psu,
    c2_clean.survey_strata,

    -- bmi vars to keep
    c2_clean.bmi,
    c2_clean.waist_circumference,

    -- diabetes vars
    c2_clean.diabetes,

    -- crp (inflammation) var
    c2_clean.crp,

    -- liver vars to keep
    c2_clean.ast,
    c2_clean.alt,
    c2_clean.ggt,
    c2_clean.glucose,

    -- biomarkers
    c2_clean.rbc_folate,
    c2_clean.vit_b12,
    c2_clean.serum_folate,
    c2_clean.homocysteine,
    c2_clean.mm_acid,
    c2_clean.ferritin

FROM staging.c2_clean;


-- now export as a csv 
COPY final.nhanes_final
TO '/Users/coletterouiller/capstone/data/clean_data/nhanes_final.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);