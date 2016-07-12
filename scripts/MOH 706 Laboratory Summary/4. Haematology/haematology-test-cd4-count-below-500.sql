-- Get count of CD4 COUNT (concept_id: 4004) that are below 500
-- CD4 COUNT uses the CD4 COUNT VALUE (concept_id: 5152) to store value numeric
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 4004
AND ob.concept_id = 5152
AND ob.value_numeric < 500

WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'