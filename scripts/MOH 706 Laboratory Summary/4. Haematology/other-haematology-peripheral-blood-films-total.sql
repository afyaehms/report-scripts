-- Get count of CD4 COUNT (concept_id: 2572) TESTS done
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o

WHERE o.concept_id = 2572
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'