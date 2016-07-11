-- Clients receiving male condoms
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON p.person_id = o.person_id
WHERE o.concept_id = 374
AND o.value_coded = 190 AND p.gender = 'M'
AND o.obs_datetime BETWEEN '2016-01-01' AND '2016-06-30'



