-- BCG remaining at the end of the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM (
SELECT closing_balance
FROM inventory_store_drug_transaction_detail isd
INNER JOIN drug d ON d.drug_id = isd.drug_id
WHERE opening_balance  &lt;&gt;  closing_balance
AND d.concept_id = 193
AND DATE(created_on) BETWEEN :startOfPeriod AND :endOfPeriod
ORDER BY created_on DESC
LIMIT 1
) AS qnty 
