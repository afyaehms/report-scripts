-- get count of PNC that were referred to other facilities
-- encounter_type for PNC is 20
-- concept_id for external referal is 3004
-- value_coded 100126128 for level1 (community unit)
-- substitute the dates with date placeholders


SELECT COUNT(*)
FROM obs

INNER JOIN encounter en
ON en.encounter_id = obs.encounter_id
AND encounter_type=20

WHERE obs.concept_id=3004
AND value_coded=100126128
AND obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod;