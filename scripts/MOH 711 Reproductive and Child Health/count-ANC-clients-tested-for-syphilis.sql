--get count of ANC Clients tested for Syphilis both negative and positive
--substitute the begin and end dates with date placeholders
--concept id for syphilis test (VDRL) is 2202
--program id 1 is ANC program

SELECT count(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
WHERE o.concept_id = 2202
AND pp.program_id = 1
AND o.obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'