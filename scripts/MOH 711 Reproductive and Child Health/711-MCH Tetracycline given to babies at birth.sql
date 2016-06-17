--get count of TETRACYCLINE given to babies at birth
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC, 3=>CWC
--concept id for TETRACYCLINE is 120
SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
WHERE o.concept_id = 120 
AND pp.program_id = 2
AND o.obs_datetime BETWEEN '2013-06-14' AND '2016-06-17'