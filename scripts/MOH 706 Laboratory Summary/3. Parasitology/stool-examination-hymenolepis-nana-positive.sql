-- Get count of HYMENOLEPIS NANA (concept_id: 5679) that are positive within a time period
-- Results are VALUE CODED, with SEEN (concept_id: 5659) marking positive
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=5679
AND value_coded=5659
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';