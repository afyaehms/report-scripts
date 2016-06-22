--get count of ANC that Tested for HIV
--substitute the dates with date placeholders
--program id for ANC is 1
--concept IDs for HIV related investigations 3110-HIV TEST, 100126141-HIV RETEST, 2081-HIV COMB TEST,2082-HIV CARD TEST,2083 -	HIV RAPID CARD,


SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
WHERE o.concept_id IN(3110,100126141,2081,2082,2083)
AND pp.program_id = 1
AND o.obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'