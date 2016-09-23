#Count of babies discharged alive

SELECT COUNT(*) FROM
obs
WHERE concept_id = 159926
AND value_coded = 160429
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
