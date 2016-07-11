-- CSF analysis may be used to help diagnose a wide variety of diseases and conditions affecting the central nervous
-- system (CNS) such as bleeding within the brain or skull, cancer, autoimmune disorder or infection.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2251
AND ob.concept_id = 5655
AND ob.value_coded = 782
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'