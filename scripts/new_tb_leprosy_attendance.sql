-- Get count of new patients attending TB and Leprosy Clinic
select 
	count(patient_id)
from 
	opd_patient_queue_log
where 
	opd_concept_id = 5698
and 
	visit_status like 'New Patient';
