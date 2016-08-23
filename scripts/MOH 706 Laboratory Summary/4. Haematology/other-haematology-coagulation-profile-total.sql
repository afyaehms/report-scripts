-- Get count of COAGULATION PROFILE (concept_id: 3013) TESTS done
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o

WHERE o.concept_id = 3013
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'