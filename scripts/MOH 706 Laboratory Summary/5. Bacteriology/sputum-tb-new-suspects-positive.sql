-- SPUTUM SMEARS (concept_id: 3324)
-- THE RESULT IS STORED IN CONCEPT 2259
-- Get New Suspects. This is the first time someone is doing a TB Test
-- Return Positive
-- Replace date placeholders

SELECT COUNT(*)
FROM obs o
WHERE concept_id=2259
AND value_coded IN (694, 695, 696, 697)
AND CONCAT(person_id, '-', obs_id) IN (
	SELECT CONCAT(person_id, '-', MIN(obs_id)) first_encounter
	FROM obs o

	WHERE o.concept_id = 3324
	GROUP BY person_id
)
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-09-31';