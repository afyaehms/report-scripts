-- Get count of 	RHEUMATOID FACTOR VALUE within a time period
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 5140
AND ob.concept_id = 2248
AND ob.value_coded = 782
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'