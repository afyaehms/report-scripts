-- get count of ANC clients given exercise
-- substitute the  date placeholders  with appropriate date range
-- 1 is the program_id for ANC
-- ANC EXERCISE GIVEN? concept id is 100126144
-- YES answer concept uuid is 4536f271-5430-4345-b5f7-37ca4cfe1553

SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
WHERE o.concept_id = 100126144 AND o.value_text = '4536f271-5430-4345-b5f7-37ca4cfe1553'
AND pp.program_id = 1
AND o.obs_datetime BETWEEN '2016-06-14' AND '2016-06-17'