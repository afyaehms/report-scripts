-- HB OTHER TECHNIQUES, ABNORMAL HB ESTIMATION (concept_id: 2921)
-- Stores Result as Value NUMERIC
-- Get Range between 5 and 10
-- Replace Date Placeholders
 
SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 2921
AND o.value_numeric BETWEEN 5 AND 10
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';