-- this will be handled when the family planning module has been introduced
-- for now we are pulling only from PNC
-- at that point is when it will be merged with those from PNC
-- substitute the dates with date placeholders
-- concepts 374 represent Method of family planning
-- This gets the first time they were reviewed, and count grouping per patient within the selected period
-- Substitute the dates with date placeholders


SELECT COUNT(*)
FROM (
	SELECT MIN(DATE(obs_datetime)) fp_regdate
	FROM obs o
	WHERE concept_id = 374
	GROUP BY person_id
	ORDER BY obs_datetime ASC
) AS fp
WHERE fp_regdate BETWEEN '2016-06-01' AND '2016-06-30';