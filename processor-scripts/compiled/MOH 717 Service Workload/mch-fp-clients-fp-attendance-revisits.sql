-- this will be handled when the family planning module has been introduced
-- for now we are pulling only from PNC
-- at that point is when it will be merged with those from PNC
-- substitute the dates with date placeholders
-- concepts 374 represent Method of family planning
-- This gets the times that they were reviewed thats not the first time.
-- Substitute the dates with date placeholders


SELECT COUNT(*)
FROM (
	SELECT person_id, DATE(obs_datetime) obs_date
	FROM obs o
	WHERE concept_id = 374
	AND CONCAT(DATE(obs_datetime),'-',person_id) NOT IN (
		SELECT CONCAT(MIN(DATE(obs_datetime)),'-',person_id) fp_regdate
		FROM obs o
		WHERE concept_id = 374
		GROUP BY person_id
		ORDER BY obs_datetime ASC
	)
	GROUP BY person_id, DATE(obs_datetime)
) AS z1
WHERE obs_date BETWEEN :startOfPeriod AND :endOfPeriod