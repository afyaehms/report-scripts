--CSF PROTEIN(concept_id: 5125)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=5125
AND DATE(obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';