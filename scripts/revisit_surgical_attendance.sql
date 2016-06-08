-- Get count of patients revisiting Surgical Clinic
select 
	count(patient_id)
from 
	opd_patient_queue_log
where 
	opd_concept_id = 5707
and 
	visit_status like 'Revisit';
