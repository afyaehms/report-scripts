-- PLEURAL FLUID EXAMINATION
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
WHERE o.concept_id = 2252
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';