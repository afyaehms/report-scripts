-- ROTAVIRUS VACCINE (drug_id: 349)
-- BCG is stored as STATE8, STATE9 & STATE10
-- get no. of children vaccinated during the month
-- This transaction is stored in the patient_state table.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state
WHERE state BETWEEN 18 AND 19
AND start_date BETWEEN :startOfPeriod AND :endOfPeriod;
