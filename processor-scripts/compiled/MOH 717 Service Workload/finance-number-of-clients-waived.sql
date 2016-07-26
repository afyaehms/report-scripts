--Total number of clients exempted
--Sum of all clients exempted

SELECT 	COUNT(*) FROM billing_patient_service_bill 
WHERE free_bill &lt;&gt; 0
AND created_date BETWEEN :startOfPeriod AND :endOfPeriod
