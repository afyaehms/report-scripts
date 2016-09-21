#Count of live births

SELECT COUNT(*) FROM
obs
WHERE concept_id = 159917
AND value_coded = 159916
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
