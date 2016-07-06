-- Tetanus Toxoid doses in stock at the beginning of the month
-- Substitute the dates with date placeholders


SELECT IFNULL(SUM(opening_balance),0)
FROM(
	SELECT opening_balance
	FROM inventory_store_drug_transaction_detail isd
	INNER JOIN drug d ON d.drug_id = isd.drug_id
	WHERE opening_balance  IS NOT  closing_balance
	AND concept_id = 88
	AND DATE(created_on) BETWEEN '2016-06-01' AND '2016-06-30'
	ORDER BY created_on ASC
	LIMIT 1;
) AS qnty;