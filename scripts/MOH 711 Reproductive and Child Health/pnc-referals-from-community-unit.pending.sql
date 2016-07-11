-- get count of PNC that were referred from other facilities
-- encounter_type for PNC is 20
-- concept_id for external referal is 3004
-- value_coded 100126128 for level1 (community unit)
-- substitute the dates with date placeholders


SELECT 0 FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod