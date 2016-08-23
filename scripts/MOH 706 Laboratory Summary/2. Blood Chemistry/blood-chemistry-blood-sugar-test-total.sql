--Blood Sugar test are two: 
--Random Blood Sugar (concept_id: 2223)
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs

WHERE concept_id=2223
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';