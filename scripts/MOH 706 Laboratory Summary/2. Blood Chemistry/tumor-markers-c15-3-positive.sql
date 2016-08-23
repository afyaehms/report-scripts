--CA-15-3 BREAST CANCER MARKER(concept_id: 2939)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2939
AND o.value_numeric>0
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';