-- Get count of new ear infection condition cases
SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE
p.voided = 0
AND o.voided = 0
AND o.concept_id=5109
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN 
  (1137,1345,1493,1820,1822,1823,2116,4113,4115,4119,4122,4152,
    4154,4155,4156,4157,4160,4266,4295,4320,4343,4345,4402,4563,
    4917,4918,4919,4920,4563,119240)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN 
    (1137,1345,1493,1820,1822,1823,2116,4113,4115,4119,4122,4152,
      4154,4155,4156,4157,4160,4266,4295,4320,4343,4345,4402,4563,
      4917,4918,4919,4920,4563,119240)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
