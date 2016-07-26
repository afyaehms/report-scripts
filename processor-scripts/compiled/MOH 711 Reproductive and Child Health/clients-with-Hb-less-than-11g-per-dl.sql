--get count of MCH(ANC/PNC/CWC) clients with Hb < 11 g/dl
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC, 3=>CWC
SELECT count(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
WHERE o.concept_id = 995 AND value_numeric &lt; 11
AND pp.program_id = 1
AND o.date_created BETWEEN :startOfPeriod AND :endOfPeriod