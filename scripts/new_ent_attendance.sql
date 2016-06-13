-- Get count of new patients attending ENC Clinic
select 
	count(patient_id) 
from 
	opd_patient_queue_log 
where 
	opd_concept_id = 5119 
and 
	visit_status like 'New Patient'
AND
	created_on BETWEEN '2016-06-01' AND '2016-06-30';	
