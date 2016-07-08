-- Get count of MALARIA ANTIGEN RAPID TEST (concept_id: 2584) within a time period
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2584
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';