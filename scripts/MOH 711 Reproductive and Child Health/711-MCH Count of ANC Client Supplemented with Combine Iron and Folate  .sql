--get Total ANC Client given Folate
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC)
--limit encounter ids to the  ones raised from MCH - 19 is the encounter type for ANC
--include drug ids in a comma separated list for future/yet to be know combinations of iron and folate

SELECT COUNT(*)
FROM opd_drug_order odo
INNER JOIN patient_program pp ON pp.patient_id = odo.patient_id
INNER JOIN encounter e ON e.encounter_id = odo.encounter_id
WHERE odo.inventory_drug_id IN (134)
AND e.encounter_type=19
AND pp.program_id = 1
AND odo.created_on BETWEEN '2016-06-10' AND '2016-06-21'