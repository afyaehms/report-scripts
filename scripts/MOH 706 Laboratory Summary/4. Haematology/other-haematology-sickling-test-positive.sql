-- Get count of SICKLE TEST (concept_id: 3319) that are below 500
-- SICKLE TEST uses the SICKLE TEST VALUE (concept_id: 5136) to store value coded
-- Return Positive (Concept_id: 782)
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 3319
AND ob.concept_id = 5136
AND ob.value_numeric = 782

WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'