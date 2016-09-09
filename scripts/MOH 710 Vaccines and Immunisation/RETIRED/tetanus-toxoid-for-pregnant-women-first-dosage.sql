--Tetanus toxoid for pregnant women
--Fist Dosage
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state ps
INNER JOIN patient_program pg ON pg.patient_program_id=ps.patient_program_id
INNER JOIN person p ON pg.patient_id = p.person_id
INNER JOIN program_workflow_state pws ON pws.program_workflow_state_id=ps.state
WHERE pws.concept_id = 100126174
AND start_date BETWEEN :startOfPeriod AND :endOfPeriod