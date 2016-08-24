--Test for HIVE, initial and retest
--Substitute the dates with date placeholders
--Concept ids: 3110,100126141

SELECT COUNT(*)
FROM obs
WHERE (concept_id = 3110 OR concept_id = 100126141)
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';