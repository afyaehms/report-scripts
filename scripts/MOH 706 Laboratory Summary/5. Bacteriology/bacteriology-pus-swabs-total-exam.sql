-- PUS SWAB CULTURE MICRO ORGANISM IDENTIFICATION
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 5019
AND ob.concept_id = 5177
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'