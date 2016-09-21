#Count of infants initiated on breastfeeding with 1 hour after birth

SELECT COUNT(*) FROM
obs
WHERE concept_id = 161543
AND value_coded = 1065
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
