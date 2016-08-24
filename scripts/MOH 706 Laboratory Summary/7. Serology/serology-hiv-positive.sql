--HIV Positive results
--Substitute the dates with date placeholders
--HIV concept ids: 3110,100126141
--Concept POSITIVE id: 782

SELECT COUNT(*)
FROM obs
WHERE (concept_id = 3110 OR concept_id = 100126141)
AND value_coded = 782
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';