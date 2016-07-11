-- get Total count of PNC clients on family plannig progestin
-- substitute the dates with date placeholders
-- substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC)
-- 374 is the concept id for Method of birth control FP method
-- 907 is the concept id for MEDROXYPROGESTERONE ACETATE
-- Uncomment the following after confirming concept id
-- SELECT COUNT(*)
-- FROM obs o
-- INNER JOIN patient_program pp ON pp.patient_id = o.person_id
-- WHERE o.concept_id = 374
-- AND o.value_coded = 907
-- AND pp.program_id = 2
SELECT 0
FROM obs o
WHERE o.obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'