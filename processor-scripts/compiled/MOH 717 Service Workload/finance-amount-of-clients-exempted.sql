--Total amount for all clients exempted
--substitute the dates with date placeholders

SELECT 	SUM(free_bill) FROM billing_patient_service_bill 
WHERE free_bill &lt;&gt; 0
AND created_date BETWEEN :startOfPeriod AND :endOfPeriod

