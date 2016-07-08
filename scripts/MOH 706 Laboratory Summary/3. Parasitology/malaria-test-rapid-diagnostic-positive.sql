-- Get count of MALARIA ANTIGEN RAPID TEST (concept_id: 2584) that are positive within a time period
-- POSITVE results are VALUE CODED (concept_id: 782)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2584
AND value_coded=782
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';