-- Get count of total Urine Chemistry Exams Done
-- Urine Chemistry Composes Glucose (concept_id: 5244), Ketones(concept_id: 2276 & 5656) and Proteins (concept_id: 2987 & 5243)
-- Substitute the dates with date placeholders


SELECT COUNT(*) 
FROM obs o

WHERE concept_id IN (5244, 2276, 5656, 2987, 5243)
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';