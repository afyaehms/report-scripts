-- Get count of all fully vaccinated children
-- Tests to ensure all vaccination have been administered

SELECT COUNT(*)
FROM(
SELECT patient_id
FROM patient_state ps
INNER JOIN patient_program pp ON ps.patient_program_id=pp.patient_program_id
INNER JOIN person p ON pp.patient_id = p.person_id
WHERE birthdate IS NOT NULL 
AND ((DATEDIFF(:startOfPeriod,birthdate) / 365) &gt; 1
OR (DATEDIFF(:endOfPeriod,birthdate) / 365) &gt; 1)
GROUP BY patient_id
HAVING COUNT(DISTINCT state)=(
SELECT COUNT(program_workflow_state_id)
FROM program_workflow_state pws
INNER JOIN program_workflow pw 
ON pw.program_workflow_id = pws.program_workflow_id AND program_id=3)
) AS fully_vaccinated  
