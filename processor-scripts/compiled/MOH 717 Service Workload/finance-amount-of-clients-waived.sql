--Total amount for all clients waived
--Sum of amount of all clients waived in pharmacy, opd and ipd departments

SELECT SUM(amount)
FROM (
    SELECT SUM(waiver_amount) amount FROM inventory_store_drug_patient 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount &gt; 0
	AND created_on BETWEEN :startOfPeriod AND :endOfPeriod
    UNION ALL
    SELECT SUM(waiver_amount) FROM billing_patient_service_bill 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount &gt; 0
	AND created_date BETWEEN :startOfPeriod AND :endOfPeriod
    UNION ALL
    SELECT SUM(waiver_amount) 
	FROM indoor_patient_service_bill 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount &gt; 0
	AND created_date BETWEEN :startOfPeriod AND :endOfPeriod
) AS total_waived
