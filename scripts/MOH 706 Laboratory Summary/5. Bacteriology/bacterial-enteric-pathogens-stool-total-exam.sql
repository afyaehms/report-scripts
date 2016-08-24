-- STOOL CULTURE (concept_id: 3125)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs

WHERE concept_id=3125
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';