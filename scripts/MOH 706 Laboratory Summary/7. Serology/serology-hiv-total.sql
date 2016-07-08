--Test for HIVE, initial and retest
--Substitute the dates with date placeholders
--Concept ids: 3110,100126141

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 3110 OR obs.concept_id = 100126141
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';