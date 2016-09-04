-- TETANUS TOXOID (drug_id: 188)
-- No. of children vaccinated during the month
-- This transaction is stored in the drug table.
-- The details are pulled and uses encounter type to know if they were issued in MCH ANC Clinic
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM inventory_store_drug_transaction_detail isdtd
INNER JOIN encounter e ON e.encounter_id = isdtd.encounter_id
AND e.encounter_type=19

WHERE drug_id=188
AND DATE(isdtd.created_on) BETWEEN '2016-09-01' AND '2016-09-30'