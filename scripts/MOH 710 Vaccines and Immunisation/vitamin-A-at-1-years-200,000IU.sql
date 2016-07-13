--Vitamin A at 1years (200,000IU)
--Patients above 1 year and below 11/2 years old
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state ps
INNER JOIN patient_program pg ON pg.patient_program_id=ps.patient_program_id
INNER JOIN person p ON pg.patient_id = p.person_id
INNER JOIN program_workflow_state pws ON pws.program_workflow_state_id=ps.state
WHERE pws.concept_id = 100126165
AND start_date BETWEEN :startOfPeriod AND :endOfPeriod
AND birthdate IS NOT NULL
AND (DATEDIFF(CURDATE(),birthdate) / 365) &lt; 1.5
