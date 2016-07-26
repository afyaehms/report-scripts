-- BCG received within the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(quantity), 0)
FROM inventory_store_drug_transaction_detail isd
INNER JOIN drug d ON d.drug_id = isd.drug_id
WHERE opening_balance <> closing_balance
AND concept_id = 83533
AND DATE(created_on) BETWEEN :startOfPeriod AND :endOfPeriod;