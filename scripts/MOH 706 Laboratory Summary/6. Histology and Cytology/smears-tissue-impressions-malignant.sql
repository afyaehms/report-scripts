-- Tissue impressions (concept_id: 5669)
-- Substitute the dates with date placeholders

SELECT COUNT(*) 

FROM obs o
INNER JOIN obs ob ON o.obs_group_id=ob.obs_id
AND ob.concept_id=5669

WHERE o.concept_id = 5655
AND o.value_coded=782
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';