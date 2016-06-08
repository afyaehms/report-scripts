-- Get count of new patients attending EYE Clinic
select 
	count(patient_id)
from 
	opd_patient_queue_log
where 
	opd_concept_id = 5118
and 
	visit_status like 'New Patient';
