-- Crag Test - 	The test is done for the diagnosis of cryptococcal disease.
-- 5186 - Crag TEst Value
-- 5187 - Crag Test
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 5187
AND ob.concept_id = 5186
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'