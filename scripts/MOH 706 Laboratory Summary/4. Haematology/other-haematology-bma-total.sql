-- Get count of BONE MARROW TREPHINE AND ASPIRATION (concept_id: 2573) TESTS done
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o

WHERE o.concept_id = 2573
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'