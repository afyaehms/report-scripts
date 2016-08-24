-- SPUTUM SMEARS (concept_id: 3324)
-- Get total counts
-- Replace date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id = 3324
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';