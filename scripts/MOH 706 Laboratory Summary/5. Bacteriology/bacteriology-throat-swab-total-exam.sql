-- THROAT SWAB CULTURE AND SENSITIVITY - A throat culture is a laboratory diagnostic test to isolate and identify
-- organisms that may cause infection in the throat. Sampling is performed by throat swab
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2752
AND ob.concept_id = 5156
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'