-- Get count of new cases of aneamia
SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE p.voided = 0 AND o.voided = 0
AND o.concept_id=5109
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN (996,997,998,1175,998,4545,121629)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN (996,997,998,1175,998,4545,121629)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
