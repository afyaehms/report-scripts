-- INACTIVATED POLIO VACCINE (IPV) (drug_id: 347)
-- BCG is stored as STATE1 & STATE2
-- get no. of children vaccinated during the month
-- This transaction is stored in the patient_state table.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state
WHERE state=41
AND start_date BETWEEN :startOfPeriod AND :endOfPeriod;
