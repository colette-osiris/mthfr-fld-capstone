-- Capstone database staging schema script: Cohort 2 
-- Created: 2026-03-09
-- Owner: coletterouiller
-- Status: incomplete (draft - not run yet )


-- set path 
-- why? this communicates that all tables 
-- in the script belong in the staging schema
SET search_path TO staging; 

-- part2: FLD, so anchor on liver biomarkers 


-- drop if exists (for debugging/query development)
DROP TABLE IF EXISTS c2_clean;

--now create table (use int for whole numbers, numeric for continuous )

CREATE TABLE c2_clean AS
SELECT 
	CAST(CAST(c2_alt_ast_ggt_glucose.SEQN AS numeric) AS integer) AS seqn,

    -- demographics vars to include 
    CAST(CAST(NULLIF(c2_demo.RIDAGEYR, '') AS numeric) AS integer) AS age_year,
    CAST(CAST(NULLIF(c2_demo.RIAGENDR, '') AS numeric) AS integer) AS sex,
    CAST(CAST(NULLIF(c2_demo.RIDRETH1, '') AS numeric) AS integer) AS race_ethnicity,
    CAST(NULLIF(c2_demo.INDFMPIR, '') AS numeric) AS income_ratio,
	
	-- demo weights to include 
    CAST(NULLIF(c2_demo.WTMEC2YR, '') AS numeric) AS exam_weight,
    CAST(CAST(NULLIF(c2_demo.SDMVPSU, '') AS numeric) AS integer) AS survey_psu,
    CAST(CAST(NULLIF(c2_demo.SDMVSTRA, '') AS numeric) AS integer) AS survey_strata, 

	-- bmi vars to include 
    CAST(NULLIF(c2_bmi.BMXBMI, '') AS numeric) AS bmi,
    CAST(NULLIF(c2_bmi.BMXWAIST, '') AS numeric) AS waist_circumference,
	
	-- diabetes var
	-- NOTE: scale: 3= borderline, 7= refused, 9 = dont know
	-- will need to derive a variable in modeling portion - DONT USE RAW 
    CAST(CAST(NULLIF(c2_diabetes.DIQ010, '') AS numeric) AS integer) AS diabetes,

	-- crp (inflammation) var 
    CAST(NULLIF(c2_crp.LBXCRP, '') AS numeric) AS crp,

	-- liver vars to include 
	CAST(NULLIF(c2_alt_ast_ggt_glucose.LBXSASSI, '') AS numeric) AS ast,
    CAST(NULLIF(c2_alt_ast_ggt_glucose.LBXSATSI, '') AS numeric) AS alt,
    CAST(NULLIF(c2_alt_ast_ggt_glucose.LBXSGTSI, '') AS numeric) AS ggt,
    CAST(NULLIF(c2_alt_ast_ggt_glucose.LBXSGL, '') AS numeric) AS glucose,
	
	-- one-carbon biomarkers to include 
    CAST(NULLIF(c2_folate_b12.LBXRBF, '') AS numeric) AS rbc_folate,
    CAST(NULLIF(c2_folate_b12.LBXB12, '') AS numeric) AS vit_b12,
    CAST(NULLIF(c2_folate_b12.LBXFOL, '') AS numeric) AS serum_folate,
    CAST(NULLIF(c2_hcy_mma.LBXHCY, '') AS numeric) AS homocysteine,
    CAST(NULLIF(c2_hcy_mma.LBXMMA, '') AS numeric) AS mm_acid,
    CAST(NULLIF(c2_iron.LBDFER, '') AS numeric) AS ferritin 
	
FROM raw.c2_alt_ast_ggt_glucose 

-- now that vars are retrieved, left join on SEQN
LEFT JOIN raw.c2_demo 
    USING (SEQN)
LEFT JOIN raw.c2_bmi 
    USING (SEQN)
LEFT JOIN raw.c2_diabetes 
    USING (SEQN)
LEFT JOIN raw.c2_crp 
    USING (SEQN)
LEFT JOIN raw.c2_folate_b12 
    USING (SEQN)
LEFT JOIN raw.c2_hcy_mma 
    USING (SEQN)
LEFT JOIN raw.c2_iron 
    USING (SEQN);
