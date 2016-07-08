-- Get count of TRICHURIS TRICHIURA (concept_id: 5072) that are positive within a time period
-- Results are VALUE CODED, with POSITIVE (concept_id: 782) marking positive
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=5072
AND value_coded=782
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';