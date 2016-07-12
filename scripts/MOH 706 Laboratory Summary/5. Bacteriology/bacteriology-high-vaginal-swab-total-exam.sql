-- HIGH VAGINAL SWAB CULTURE - It is useful for the investigation of bacterial vaginosis.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 5063
AND ob.concept_id = 5155
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'