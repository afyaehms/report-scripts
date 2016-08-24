-- SPUTUM SMEARS (concept_id: 3324)
-- Get Followups. This isn't the first time someone is doing a TB Test
-- Replace date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id = 3324 
AND CONCAT(person_id, '-', obs_id) NOT IN (
	SELECT CONCAT(person_id, '-', MIN(obs_id)) first_encounter
	FROM obs o

	WHERE o.concept_id = 3324
	GROUP BY person_id
)
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';