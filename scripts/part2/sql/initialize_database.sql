-- Capstone database structure setup 
-- Created: 2026-02-25
-- Owner: coletterouiller
-- Notes: need to note in file or can't commit 

-- Schemas checker (created manually but wanted to check 
-- if they are under right profile/location)
CREATE schema IF NOT EXISTS raw;
CREATE schema IF NOT EXISTS staging;
CREATE schema IF NOT EXISTS final;

--notes for clarity:  
 --raw  = Imported NHANES file tables/unmodified structure
 --staging = Intermediate cleaned/joined tables 
 --final = Cohort tables ready for analysis 
