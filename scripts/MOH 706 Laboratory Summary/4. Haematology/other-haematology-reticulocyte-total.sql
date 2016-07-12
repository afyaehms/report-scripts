-- Get count of RETICULOCYTE COUNT (concept_id: 2578) TESTS done
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o

WHERE o.concept_id = 2578
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'