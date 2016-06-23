--get count of underweight babies aged 24mnths-59mnths
--substitute the dates with date placeholders
--substitute the program_id WITH the appropriate program id(1=>ANC, 2=>PNC, 3=>CWC
SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
INNER JOIN person p ON pp.patient_id = p.person_id
WHERE o.concept_id = 1854 AND value_coded = '123814'
AND pp.program_id = 3
AND o.date_created BETWEEN '2016-06-17' AND '2016-06-18'
AND p.birthdate IS NOT NULL
AND (DATEDIFF(CURDATE(),p.birthdate)) / 365 >= 2
AND (DATEDIFF(CURDATE(),p.birthdate)) / 365 <= 5