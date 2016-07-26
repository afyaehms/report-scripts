--Total number of clients waived
--Sum of all clients waived in pharmacy, opd and ipd departments

SELECT SUM(counter)
FROM (
    SELECT COUNT(*) counter FROM inventory_store_drug_patient 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount > 0
	AND created_on BETWEEN :startOfPeriod AND :endOfPeriod
    UNION ALL
    SELECT COUNT(*) FROM billing_patient_service_bill 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount > 0
	AND created_date BETWEEN :startOfPeriod AND :endOfPeriod
    UNION ALL
    SELECT COUNT(*) 
	FROM indoor_patient_service_bill 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount > 0
	AND created_date BETWEEN :startOfPeriod AND :endOfPeriod
) AS union_records
