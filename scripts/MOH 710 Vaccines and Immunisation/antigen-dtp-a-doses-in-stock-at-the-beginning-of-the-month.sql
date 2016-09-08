-- DIPHTHERIA TETANUS AND PERTUSSIS VACCINE (drug_id: 348)
-- Doses at the Begining of the month
-- Get the last transaction's Closing Quantity, before the begining of the Month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM (
	SELECT closing_balance
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=348

	WHERE DATE(isdtd.created_on) < '2016-09-01'
	AND DATE(isdtd.created_on) < '2016-09-30'

	ORDER BY isdtd.id DESC
	LIMIT 1
) AS OP
