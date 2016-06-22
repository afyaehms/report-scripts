-- get count of PNC that breast examinations
-- encounter_type for PNC is 20
-- concept_id for breast examination is 5538
-- substitute the dates with date placeholders


SELECT COUNT(*)
FROM obs

INNER JOIN encounter en
ON en.encounter_id = obs.encounter_id
AND encounter_type=20

WHERE obs.concept_id=5538
AND obs_datetime BETWEEN '2016-06-01' AND '2016-06-30';