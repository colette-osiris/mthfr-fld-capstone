-- log of database checks 

--SELECT COUNT(*) FROM staging.c1_clean;

--SELECT * 
--FROM staging.c1_clean
--LIMIT 10;

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