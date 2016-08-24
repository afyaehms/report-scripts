--BRUCELLIN TEST - Test for brucellosis.
--Substitute the dates with date placeholders
--Concept id: 4992

SELECT COUNT(*)
FROM obs
WHERE concept_id = 4992
AND value_coded = 782
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';