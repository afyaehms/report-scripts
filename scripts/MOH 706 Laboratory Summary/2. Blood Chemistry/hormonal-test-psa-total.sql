--PROSTATE SPECIFIC ANTIGEN(concept_id: 2570)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2570
AND DATE(obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';