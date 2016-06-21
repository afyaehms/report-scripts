-- Get count of patients revisiting Eye Clinic
select 
	count(patient_id) 
from 
	opd_patient_queue_log 
where 
	opd_concept_id = 5118 
and 
	visit_status like 'Revisit'
AND
	created_on BETWEEN '2016-06-01' AND '2016-06-30';
