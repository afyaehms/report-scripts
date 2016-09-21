#Count of eclampsia deaths
SELECT COUNT(*) FROM
obs 
WHERE concept_id = 144438
AND value_coded = 1411
AND encounter_id IN
(
  SELECT encounter_id FROM
  obs
  WHERE concept_id = 160085
  AND value_coded = 180
  AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
)
