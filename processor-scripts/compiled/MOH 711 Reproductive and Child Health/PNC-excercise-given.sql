-- get count of PNC that excercise was given
-- encounter_type for PNC is 20
-- concept IDs for excercise given is 100126140
-- value_coded 803 is YES value for excercise given
-- substitute the dates with date placeholders


SELECT COUNT(*)
FROM obs

INNER JOIN encounter en
ON en.encounter_id = obs.encounter_id
AND encounter_type=20

WHERE obs.concept_id=100126140
AND value_coded = 803
AND obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod;