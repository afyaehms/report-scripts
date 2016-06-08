-- Get count of patients revisiting Orthopaedic Clinic
select 
	count(patient_id)
from 
	opd_patient_queue_log
where 
	opd_concept_id = 5121
and 
	visit_status like 'Revisit';
