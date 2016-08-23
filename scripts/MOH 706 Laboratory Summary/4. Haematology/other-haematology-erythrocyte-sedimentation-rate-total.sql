-- Get count of ERYTHROCYTE SEDIMENTATION RATE (concept_id: 2220)
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o

WHERE o.concept_id = 2220
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'