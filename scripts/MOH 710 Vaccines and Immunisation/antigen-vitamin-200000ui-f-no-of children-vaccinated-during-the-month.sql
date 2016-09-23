-- VITAMIN A 200000 IU (drug_id: 355)
-- BCG is stored as STATE1 & STATE2
-- get no. of children vaccinated during the month
-- This transaction is stored in the patient_state table.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM patient_state
WHERE state IN (17, 41, 42, 43, 44, 45, 46, 47, 48)
AND start_date BETWEEN :startOfPeriod AND :endOfPeriod;

