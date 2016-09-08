-- YELLOW FEVER VACCINE (drug_id: 350)
-- BCG is stored as STATE8, STATE9 & STATE10
-- get no. of children vaccinated during the month
-- This transaction is stored in the patient_state table.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state
WHERE state = 14
AND start_date BETWEEN '2016-09-01' AND '2016-09-30';