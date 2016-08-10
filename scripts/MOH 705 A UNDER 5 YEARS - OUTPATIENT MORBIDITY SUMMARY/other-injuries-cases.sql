-- get count of other injuries cases
SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE p.voided = 0 AND o.voided = 0
AND o.concept_id=5109 
AND
	(o.concept_id=5109 )
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN (1043,1061,1077,1084,1265,1267,1452,1767,1770,2341,2343,3896,112561,125343,125379,158995,160175,1490,160186,160187,160188)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN (1043,1061,1077,1084,1265,1267,1452,1767,1770,2341,2343,3896,112561,125343,125379,158995,160175,1490,160186,160187,160188)
  AND DATE(obs_datetime) &lt; :startOfPeriod)