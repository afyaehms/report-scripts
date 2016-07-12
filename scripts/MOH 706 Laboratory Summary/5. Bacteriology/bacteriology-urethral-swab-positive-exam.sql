-- URETHRAL DISCHARGE CULTURE-	Urethral discharge smear is a laboratory test done for males to identify
-- organisms in the urethra and genital tract that cause infection.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2418
AND ob.concept_id = 5167
AND ob.value_coded IS NOT NULL AND ob.value_coded NOT IN(5188)
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'