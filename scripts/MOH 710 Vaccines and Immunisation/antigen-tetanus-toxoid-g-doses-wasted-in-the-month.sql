-- TETANUS TOXOID (drug_id: 188)
-- Doses wasted in the month[E-F]
-- Unions E & F
-- Substitute the dates with date placeholders

SELECT GREATEST(SUM(qt),0)
FROM (
	SELECT SUM(quantity) qt
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=188

	WHERE DATE(isdtd.created_on) >= :startOfPeriod
	AND DATE(isdtd.created_on) <= :endOfPeriod
	AND isdtd.transaction_type = 2

	UNION ALL

	SELECT (0-COUNT(*))
	FROM inventory_store_drug_transaction_detail isdtd
	INNER JOIN encounter e ON e.encounter_id = isdtd.encounter_id
	AND e.encounter_type=19

	WHERE drug_id=188
	AND DATE(isdtd.created_on) BETWEEN :startOfPeriod AND :endOfPeriod
) AS WASTAGE;
