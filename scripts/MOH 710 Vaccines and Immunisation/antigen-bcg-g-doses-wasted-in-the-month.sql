-- BACILLE CAMILE-GUERIN VACCINE (drug_id: 346)
-- Doses wasted in the month[E-F]
-- Unions E & F
-- Substitute the dates with date placeholders

SELECT GREATEST(SUM(qt),0)
FROM (
	SELECT SUM(quantity) qt
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=346

	WHERE DATE(isdtd.created_on) >= '2016-09-08'
	AND DATE(isdtd.created_on) <= '2016-09-30'
	AND isdtd.transaction_type = 2

	UNION ALL

	SELECT (0-COUNT(*))
	FROM patient_state
	WHERE (state=1 OR state=2)
	AND start_date BETWEEN '2016-09-01' AND '2016-09-30'
) AS WASTAGE;