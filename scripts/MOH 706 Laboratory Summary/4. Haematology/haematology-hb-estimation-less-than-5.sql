-- HB OTHER TECHNIQUES, ABNORMAL HB ESTIMATION (concept_id: 2921)
-- Stores Result as Value NUMERIC
-- Get Range less than 5
-- Replace Date Placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 2921
AND o.value_numeric < 5
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';