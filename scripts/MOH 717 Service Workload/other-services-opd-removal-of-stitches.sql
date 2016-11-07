-- concept_id that match Stitch Removal include (3460,3140,4618)
-- Substitute Date Placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON o.person_id = p.person_id
WHERE o.concept_id IN (3460,3140,4618)

AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND TIMESTAMPDIFF(YEAR, p.birthdate, obs_datetime) &gt; 5;