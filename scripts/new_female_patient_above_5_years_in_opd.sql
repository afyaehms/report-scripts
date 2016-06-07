-- Gets count of new female patients above 5 years who have visited the OPD ward
-- Uses the opd_queue_log table since this holds data of all queued patient
-- referred to other departments in the hospital
-- Assumptions:
-- 1) Uses the concept id 5113 'General OPD' for filtering OPD patients
-- 2) All patients pass through the queue
-- 3) Uses the visit status to determine if New or Revisit

select 
	count(patient_id) 
from 
	opd_patient_queue_log 
where 
	opd_concept_id = 5113 
and 
	visit_status like 'New Patient' 
and 
	patient_id in (
		select 
			person_id 
		from 
			person 
		where 
			birthdate is not null and floor(datediff(curdate(),birthdate) / 365) > 5 
		and 
			gender = 'F'
	);
