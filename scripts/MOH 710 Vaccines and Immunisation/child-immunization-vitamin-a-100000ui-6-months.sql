-- Vitamin A at 6 months(100,000 IU) 1 (concept_id: 100126164)
-- Only 1 Vitamin A 100,000UI is given below the age of 1 (at six months)
-- Given the above assumption, then the drug can be given at anytime before 1yr
-- After 1year, a different Vitamin A 200,000UI is given
-- Substitute the dates with date placeholders

SELECT COUNT(*)

FROM patient_state ps
INNER JOIN patient_program pg ON pg.patient_program_id=ps.patient_program_id
INNER JOIN person p ON pg.patient_id = p.person_id
INNER JOIN program_workflow_state pws ON pws.program_workflow_state_id=ps.state

WHERE pws.concept_id = 100126164
AND start_date BETWEEN '2016-01-01' AND '2016-06-30'
AND birthdate IS NOT NULL 
AND (DATEDIFF(CURDATE(),birthdate) / 365) &lt; 1