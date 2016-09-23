-- TETANUS TOXOID (drug_id: 188)
-- Doses at the Begining of the month
-- Get the last transaction's Closing Quantity, before the begining of the Month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM (
	SELECT closing_balance
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=188

	WHERE DATE(isdtd.created_on) < :startOfPeriod
	AND DATE(isdtd.created_on) < :endOfPeriod

	ORDER BY isdtd.id DESC
	LIMIT 1
) AS CL
