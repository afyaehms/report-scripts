-- Vitamin A 100,000 remaining at the end of the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM(
	SELECT closing_balance
	FROM drug dr
	INNER JOIN inventory_store_drug isd ON isd.drug_id = dr.drug_id
	WHERE concept_id=100126164 AND created_on <= '2016-06-30'
	ORDER BY created_on DESC
	LIMIT 1
) AS qnty;