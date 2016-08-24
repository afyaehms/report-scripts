-- FOOD CULTURE (concept_id: 100126249)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs

WHERE concept_id=100126250
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';