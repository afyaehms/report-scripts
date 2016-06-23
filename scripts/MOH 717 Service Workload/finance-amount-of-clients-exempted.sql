--Total amount for all clients exempted

SELECT 	SUM(free_bill) FROM billing_patient_service_bill WHERE free_bill &lt;&gt; 0;
