-- FNAC is a diagnostic procedure sometimes used to investigate superficial (just under the skin) lumps or masses.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 1526
AND ob.concept_id = 5655
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'