-- Get count of patients revisiting Psychiatric Clinic
select 
	count(patient_id) 
from 
	opd_patient_queue_log 
where 
	opd_concept_id = 5700 
and 
	visit_status like 'Revisit'
AND
	created_on BETWEEN :startOfPeriod AND :endOfPeriod;
