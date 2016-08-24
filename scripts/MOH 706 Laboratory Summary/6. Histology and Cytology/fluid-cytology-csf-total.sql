-- CSF analysis may be used to help diagnose a wide variety of diseases and conditions affecting the central nervous
-- system (CNS) such as bleeding within the brain or skull, cancer, autoimmune disorder or infection.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
WHERE o.concept_id = 2251
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'