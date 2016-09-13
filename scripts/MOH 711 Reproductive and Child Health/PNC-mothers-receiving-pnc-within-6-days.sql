-- get count of PNC that were seen in PNC within 2-3 days
-- Assumption is that the guys is in PNC 3days after birth
-- encounter_type for PNC is 20
-- concept_id for date of confinement is 5599
-- substitute the dates with date placeholders
-- We are getting the Delivery Date and Date they got to Pnc and calculate the difference


SELECT COUNT(*)
FROM (
	SELECT person_id, obs_id, DATE(o.value_datetime)dod ,(
		SELECT DATE(date_enrolled)
		FROM patient_program pg
		WHERE pg.program_id=2
		AND o.person_id = pg.patient_id
		AND DATE(pg.date_enrolled) &gt;= DATE(o.obs_datetime)
		ORDER BY pg.date_enrolled DESC
		LIMIT 1
	) AS enrol

	FROM obs o
	INNER JOIN encounter en
	ON en.encounter_id = o.encounter_id
	AND en.encounter_type=20
	
	WHERE o.concept_id=5599
	AND DATE(obs_datetime) BETWEEN '2016-06-01' AND '2016-06-30'
) AS rcv
WHERE DATEDIFF(enrol, dod) BETWEEN 3 AND 6