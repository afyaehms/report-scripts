#Count of cesarean section

SELECT COUNT(*) FROM
obs
WHERE concept_id = 100126134
AND value_coded = 1516
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
