--get count of new clients registered to a program (ANC/PNC/CWC)
--substitute the dates with date placeholders
--concepts 5704 and 5123 represent MCH Triage and MCH Clinic respectively


--this bracket return all new subscriptions/enrollment to a program
--program 3 reps cwc
SELECT COUNT(*)
FROM patient_program
WHERE program_id= '3'
AND date_enrolled between '2016-01-01' and '2016-06-30';



--This gets the program visit per the programme they enrolled in
--return a count of those that arent new enrollment (revisit)
--use 001, 002 and 003 to get the program id
SELECT COUNT(*)
FROM(
	SELECT v.patient_id, v.visit_date, (
		SELECT CONCAT(LPAD(program_id, 3, '0'), '-', patient_program_id)
		FROM patient_program pa
		WHERE v.patient_id=pa.patient_id AND v.visit_date>=DATE(date_enrolled)
		ORDER BY date_enrolled DESC
		LIMIT 1
	) AS program_idnt

	FROM (
		SELECT patient_id, DATE(created_on) visit_date
		FROM opd_patient_queue_log
		WHERE opd_concept_id=5704

		UNION ALL

		SELECT patient_id, DATE(created_on)
		FROM triage_patient_queue_log
		WHERE triage_concept_id=5123
	) AS v

	GROUP BY v.patient_id, v.visit_date
) AS pv

WHERE SUBSTRING(program_idnt, 1, 3) = '003'
AND program_idnt NOT IN (
	SELECT CONCAT(LPAD(program_id, 3, '0'), '-', patient_program_id)
	FROM patient_program
)
AND pv.visit_date BETWEEN '2016-01-01' AND '2016-06-30';




--JOINS
--Grouped both queries to offer solution in one line
SELECT SUM(first_time) first_timers, SUM(revisit) revisits
FROM (
	SELECT COUNT(*) first_time, 0 revisit
	FROM patient_program
	WHERE program_id= '3'
	AND date_enrolled BETWEEN '2016-01-01' AND '2016-06-30'

	UNION ALL

	SELECT COUNT(*)
	FROM(
		SELECT v.patient_id, v.visit_date, (
			SELECT CONCAT(LPAD(program_id, 3, '0'), '-', patient_program_id)
			FROM patient_program pa
			WHERE v.patient_id=pa.patient_id AND v.visit_date>=DATE(date_enrolled)
			ORDER BY date_enrolled DESC
			LIMIT 1
		) AS program_idnt

		FROM (
			SELECT patient_id, DATE(created_on) visit_date
			FROM opd_patient_queue_log
			WHERE opd_concept_id=5704

			UNION ALL

			SELECT patient_id, DATE(created_on)
			FROM triage_patient_queue_log
			WHERE triage_concept_id=5123
		) AS v

		GROUP BY v.patient_id, v.visit_date
	) AS pv

	WHERE SUBSTRING(program_idnt, 1, 3) = '003'
	AND program_idnt NOT IN (
		SELECT CONCAT(LPAD(program_id, 3, '0'), '-', patient_program_id)
		FROM patient_program
	)
	AND pv.visit_date BETWEEN '2016-01-01' AND '2016-06-30';
) unions;
