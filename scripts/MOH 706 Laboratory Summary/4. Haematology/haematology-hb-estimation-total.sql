-- HB OTHER TECHNIQUES, ABNORMAL HB ESTIMATION (concept_id: 2921
-- Get Count
-- Replace Date Placeholders
 
SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 2921
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';