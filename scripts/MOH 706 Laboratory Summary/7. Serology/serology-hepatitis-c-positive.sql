--HEPATITIS BC Tests
--has possible tests : HEPATITIS C ANTIGEN TEST,HCV RAPID TEST, ANTI HCV
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id IN (2617,2604,5138)
AND obs.value_coded = 782
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-30';