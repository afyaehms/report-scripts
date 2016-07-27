-- get Total women done breast examination
-- substitute the dates with date placeholders
-- substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC)

SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
WHERE o.concept_id = 5538
AND (pp.program_id = 1 OR pp.program_id = 2)
AND o.obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'