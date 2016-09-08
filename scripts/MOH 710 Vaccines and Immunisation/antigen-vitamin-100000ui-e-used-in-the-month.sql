-- VITAMIN A 100000 IU (drug_id: 354)
-- Doses used in the month [C-D]
-- Transaction Type 2 Represent issues
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(quantity),0)
FROM immunization_store_drug_transaction_detail isdtd

INNER JOIN immunization_store_drug drug
ON isdtd.immunization_store_drug_id = drug.id
AND drug.inventory_drug_id=354

WHERE DATE(isdtd.created_on) >= '2016-09-01'
AND DATE(isdtd.created_on) <= '2016-09-30'
AND isdtd.transaction_type = 2