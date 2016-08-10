SELECT COUNT(DISTINCT p.person_id) AS 'Count'
FROM person p
INNER JOIN obs o ON o.person_id = p.person_id
WHERE 
p.voided = 0 
AND o.voided = 0
AND
  (o.concept_id=5109  OR o.concept_id = 2304)
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN 
  (572,1010,1163,1213,1245,1470,1525,1527,1707,1708,
    1752,2345,3860,4059,4060,4061,4148,4298,4316,4425,4592,152306,160156,4047,4542)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN 
    (572,1010,1163,1213,1245,1470,1525,1527,1707,1708,1752,
      2345,3860,4059,4060,4061,4148,4298,4316,4425,4592,152306,160156,4047,4542)
  AND DATE(obs_datetime) &lt; :startOfPeriod)
