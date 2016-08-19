-- Get count of YEAST CELLS (concept_id: 613) that are positive within a time period
-- POSITVE results are +, ++, +++, ++++ (694, 695, 696, 697)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs

WHERE obs.concept_id=613 
AND value_coded IN (694, 695, 696, 697)
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';