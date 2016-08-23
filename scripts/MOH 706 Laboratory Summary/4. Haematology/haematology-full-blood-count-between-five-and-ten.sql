-- COMPLETE BLOOD COUNT (concept_id 2410)
-- Haemoglobin (concept_id: 995)
-- Get Haemoglobin frpm Complete BloodCount where result (value_numeric) is between 5 and 10

SELECT COUNT(*)
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2410
AND ob.concept_id = 995
AND ob.value_numeric BETWEEN 5 AND 10
WHERE DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';