#Count of newborns with low APGAR Score (below 2 being low)

SELECT COUNT(*) FROM
obs
WHERE concept_id = 1504
AND value_numeric <= 2
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
