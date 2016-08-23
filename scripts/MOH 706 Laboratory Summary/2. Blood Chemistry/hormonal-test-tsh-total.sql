--THYROID-STIMULATING HORMONE(concept_id: 2518)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2518
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';