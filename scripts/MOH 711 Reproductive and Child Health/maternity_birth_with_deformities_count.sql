#Count of live births

SELECT COUNT(*) FROM
obs
WHERE concept_id = 100126262
AND value_coded = 1065
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
