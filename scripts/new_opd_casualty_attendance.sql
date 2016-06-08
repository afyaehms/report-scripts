-- Get count of new patients who attended OPD Casualty
-- Assumption:
-- 1) All casualty patients pass through Casualty OPD (5114)
select 
	count(patient_id) 
from 
	opd_patient_queue_log 
where 
	opd_concept_id = 5114 
and 
	visit_status like 'New Patient' 
