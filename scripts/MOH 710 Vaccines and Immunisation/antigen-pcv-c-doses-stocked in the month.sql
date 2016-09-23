-- PNEUMOCOCCAL VACCINE (drug_id: 343)
-- Doses stocked in the month (A+B)
-- Get A & B, Union and get the sum
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM (
	SELECT * FROM (
	  SELECT closing_balance
	  FROM immunization_store_drug_transaction_detail isdtd

	  INNER JOIN immunization_store_drug drug
	  ON isdtd.immunization_store_drug_id = drug.id
	  AND drug.inventory_drug_id=343

	  WHERE DATE(isdtd.created_on) < :startOfPeriod
	  AND DATE(isdtd.created_on) < :endOfPeriod
	  ORDER BY isdtd.id DESC
	  LIMIT 1
	) AS OP

	UNION ALL

	SELECT quantity
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=343

	WHERE DATE(isdtd.created_on) >= :startOfPeriod
	AND DATE(isdtd.created_on) <= :endOfPeriod
	AND isdtd.transaction_type = 1
) STOCKED

