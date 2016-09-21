#Count of macerated still birth

SELECT COUNT(*) FROM
obs
WHERE concept_id = 159917
AND value_coded = 135436
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
