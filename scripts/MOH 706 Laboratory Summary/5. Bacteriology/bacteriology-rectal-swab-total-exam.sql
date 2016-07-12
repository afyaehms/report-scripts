-- RECTAL SWAB CULTURE -A rectal swab culture is a lab test to check for bacteria or other germs in the sample.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 5161
AND ob.concept_id = 5160
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'