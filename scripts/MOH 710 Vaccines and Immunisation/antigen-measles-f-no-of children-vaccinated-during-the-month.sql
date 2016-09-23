-- MEASLES VACCINE (drug_id: 352)
-- BCG is stored as STATE1 & STATE2
-- get no. of children vaccinated during the month
-- This transaction is stored in the patient_state table.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state
WHERE (state BETWEEN 37 AND 39)
AND start_date BETWEEN :startOfPeriod AND :endOfPeriod;
