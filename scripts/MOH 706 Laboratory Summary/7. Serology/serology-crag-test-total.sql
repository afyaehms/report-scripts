-- Crag Test - 	The test is done for the diagnosis of cryptococcal disease.
-- 5187 - Crag Test
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs
WHERE concept_id = 5187
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';