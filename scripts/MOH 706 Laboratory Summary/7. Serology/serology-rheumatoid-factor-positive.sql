-- Get count of RHEUMATOID FACTOR VALUE(concept_id: 5140) within a time period
-- It uses RHEUMATOID FACTOR VALUE (concept_id:2248) to store the result
-- Positive Value is concept_id: 782
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE concept_id = 2248
AND value_coded = 782
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';