-- Get count of new cases of other types of meningitis
SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE 
p.voided = 0
AND o.voided = 0
AND o.concept_id=5109
AND
DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN (1019,1167,1179,1723,3670,5233,5499,115835)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN (1019,1167,1179,1723,3670,5233,5499,115835)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
