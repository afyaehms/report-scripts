#Count of infants given tetracycline at birth

SELECT COUNT(*) FROM
obs
WHERE concept_id = 100126261
AND value_coded = 1065
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
