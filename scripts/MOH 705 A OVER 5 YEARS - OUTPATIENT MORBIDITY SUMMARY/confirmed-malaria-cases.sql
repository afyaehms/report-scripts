-- Get count of new confirmed malaria cases
SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE
p.voided = 0
AND o.voided = 0
AND
  (o.concept_id=5109 OR o.concept_id = 2304)
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN
  (160154,160155,160152,160150,160148,116128,4516,4515,4492,4055,
    4314,4293,4290,4267,705,4055,4054,4041,4027,2088,1041,708)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &gt; 5
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN
    (160154,160155,160152,160150,160148,116128,4516,4515,4492,4055,4314,
      4293,4290,4267,705,4055,4054,4041,4027,2088,1041,708)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
