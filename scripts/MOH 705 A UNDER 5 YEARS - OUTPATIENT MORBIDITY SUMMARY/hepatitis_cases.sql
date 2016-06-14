-- Get count of new cases of hepatitis
SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE 
p.voided = 0 
AND o.voided = 0
AND o.concept_id=5109 
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN 
  (1005,1006,1007,1008,1505,1506,1746,1747,1748,2524,2525,
    2526,2527,2528,2587,2590,2604,2617,4436,145131,160143)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN 
    (1005,1006,1007,1008,1505,1506,1746,1747,1748,2524,2525,2526,
      2527,2528,2587,2590,2604,2617,4436,145131,160143)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
