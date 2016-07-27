-- get count of cervical cancer screening done
-- 


SELECT Count(DISTINCT person_id)
FROM   obs
WHERE  concept_id = 100126139
AND obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'  