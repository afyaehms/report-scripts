SELECT 
	COUNT(patient_id)
FROM 
	opd_patient_queue_log
WHERE
	visit_status LIKE 'Revisit'
AND 
	patient_id IN (
		SELECT
			patient_id
		FROM
			person
		WHERE
			birth_date IS NOT NULL AND FLOOR(DATEDIFF(CURDATE(),birthdate) / 365) <5
		AND 	
			gender = 'f');