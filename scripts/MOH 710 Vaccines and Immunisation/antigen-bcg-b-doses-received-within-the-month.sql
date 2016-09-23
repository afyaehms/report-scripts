-- BACILLE CAMILE-GUERIN VACCINE (drug_id: 346)
-- Doses received within the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(quantity),0)
FROM immunization_store_drug_transaction_detail isdtd

INNER JOIN immunization_store_drug drug
ON isdtd.immunization_store_drug_id = drug.id
AND drug.inventory_drug_id=346

WHERE DATE(isdtd.created_on) >= :startOfPeriod
AND DATE(isdtd.created_on) <= :endOfPeriod
AND isdtd.transaction_type = 1
