-- FP Injections
-- Substitute the dates with date placeholdersSELECT COUNT(*)

SELECT COUNT(*)

FROM patient_state ps
INNER JOIN patient_program pg ON pg.patient_program_id=ps.patient_program_id
INNER JOIN person p ON pg.patient_id = p.person_id
INNER JOIN program_workflow_state pws ON pws.program_workflow_state_id=ps.state

WHERE pws.concept_id = 5279
AND start_date BETWEEN '2016-01-01' AND '2016-06-30'


