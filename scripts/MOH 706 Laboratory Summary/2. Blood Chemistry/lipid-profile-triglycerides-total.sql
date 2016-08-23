--SERUM TRIGLYCERIDES (concept_id: 2227)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2227
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';