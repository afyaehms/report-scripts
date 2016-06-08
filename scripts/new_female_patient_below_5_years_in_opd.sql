SELECT 
	COUNT(patient_id) 
FROM 
	opd_patient_queue_log 
WHERE 
	opd_concept_id = 5113 
AND 
	visit_status LIKE 'New Patient' 
AND 
	patient_id IN (
		SELECT 
			person_id 
		FROM 
			person 
		WHERE 
			birthdate IS NOT NULL AND FLOOR(DATEDIFF(CURDATE(),birthdate) / 365) < 5 
		AND 
			gender = 'F'
	);