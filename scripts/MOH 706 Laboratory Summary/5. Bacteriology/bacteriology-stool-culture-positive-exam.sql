-- STOOL CULTURE-A stool culture is used to detect the presence of disease-causing bacteria (pathogenic)
-- and help diagnose an infection of the digestive trac
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 3125
AND ob.concept_id = 5157
AND ob.value_coded IS NOT NULL AND ob.value_coded NOT IN(5188)
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'