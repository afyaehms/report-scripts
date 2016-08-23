-- Get count of ERYTHROCYTE SEDIMENTATION RATE (concept_id: 2220)
-- Substitute the dates with date placeholders

SELECT COUNT(*) 

FROM obs o
INNER JOIN concept_numeric cn 
ON cn.concept_id=o.concept_id
AND o.concept_id = 2220
AND value_numeric >= hi_normal

WHERE DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';