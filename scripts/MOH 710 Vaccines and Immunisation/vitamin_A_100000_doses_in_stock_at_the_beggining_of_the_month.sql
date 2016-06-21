-- Vitamin A 100,000 doses in stock at the beginning of the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(current_quantity),0)
FROM(
	SELECT current_quantity
	FROM drug dr
	INNER JOIN inventory_store_drug isd ON isd.drug_id = dr.drug_id
	WHERE concept_id= 100126164 AND created_on &le; '2016-06-01'
	ORDER BY created_on DESC
	LIMIT 1
) AS qnty;