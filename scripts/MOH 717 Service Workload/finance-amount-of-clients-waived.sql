--Total amount for all clients waived
--Sum of amount of all clients waived in pharmacy, opd and ipd departments

SELECT SUM(amount)
FROM (
    SELECT SUM(waiver_amount) amount FROM inventory_store_drug_patient WHERE waiver_amount IS NOT NULL AND waiver_amount &gt; 0
    UNION ALL
    SELECT SUM(waiver_amount) FROM billing_patient_service_bill WHERE waiver_amount IS NOT NULL AND waiver_amount &gt; 0
    UNION ALL
    SELECT SUM(waiver_amount) FROM indoor_patient_service_bill WHERE waiver_amount IS NOT NULL AND waiver_amount &gt; 0
) AS total_waived
