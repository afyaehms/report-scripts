-- Get count of KETONES (concept_id: 5656) that are positive within a time period
-- URINE KETONE BODIES (concept_id: 2276) is gotten straight from Urine Analysis
-- POSITVE results are +, ++, +++, ++++ (694, 695, 696, 697)
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs
WHERE (concept_id = 5656 OR concept_id = 2276)
AND value_coded IN (694, 695, 696, 697)
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'