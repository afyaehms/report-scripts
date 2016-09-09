-- SPUTUM SMEARS (concept_id: 3324)
-- Result is stored in 2259
-- Get total counts
-- Return positive
-- Replace date placeholders

SELECT COUNT(*)
FROM obs o
WHERE concept_id=2259
AND value_coded IN (694, 695, 696, 697)
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-09-31';