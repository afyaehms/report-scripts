--Total amount for all clients waived
--Sum of amount of all clients waived in pharmacy, opd and ipd departments

SELECT SUM(amount)
FROM (
    SELECT SUM(waiver_amount) amount FROM inventory_store_drug_patient 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount &gt; 0
	AND created_on BETWEEN '2016-06-01' AND '2016-06-30'
    UNION ALL
    SELECT SUM(waiver_amount) FROM billing_patient_service_bill 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount &gt; 0
	AND created_date BETWEEN '2016-06-01' AND '2016-06-30'
    UNION ALL
    SELECT SUM(waiver_amount) 
	FROM indoor_patient_service_bill 
	WHERE waiver_amount IS NOT NULL 
	AND waiver_amount &gt; 0
	AND created_date BETWEEN '2016-06-01' AND '2016-06-30'
) AS total_waived
