-- VITAMIN A 200000 IU (drug_id: 355)
-- Doses wasted in the month[E-F]
-- Unions E & F
-- Substitute the dates with date placeholders

SELECT (IFNULL(GREATEST(SUM(qt_used)-SUM(qt_immunized),0)/SUM(qt_used),0))*100 qt_perc
FROM (
	SELECT SUM(quantity) qt_used, 0 qt_immunized
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=355

	WHERE DATE(isdtd.created_on) >= '2016-09-01'
	AND DATE(isdtd.created_on) <= '2016-09-30'
	AND isdtd.transaction_type = 2

	UNION ALL

	SELECT 0, COUNT(*)
	FROM patient_state
	WHERE state IN (17, 41, 42, 43, 44, 45, 46, 47, 48)
	AND start_date BETWEEN '2016-09-01' AND '2016-09-30'
) AS WASTAGE;