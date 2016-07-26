-- Get count of new cases of other eye conditions
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
  (1038,1421,1425,2471,4049,4125,4139,4457,4528,4872,4910,112198,
    119222,160172)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &gt; 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN 
    (1038,1421,1425,2471,4049,4125,4139,4457,4528,4872,4910,112198,
      119222,160172)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
