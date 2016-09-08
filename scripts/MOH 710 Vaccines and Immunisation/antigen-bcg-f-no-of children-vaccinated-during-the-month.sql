-- BACILLE CAMILE-GUERIN VACCINE (drug_id: 346)
-- BCG is stored as STATE1 & STATE2
-- get no. of children vaccinated during the month
-- This transaction is stored in the patient_state table.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state
WHERE (state=1 OR state=2)
AND start_date BETWEEN '2016-09-01' AND '2016-09-30';