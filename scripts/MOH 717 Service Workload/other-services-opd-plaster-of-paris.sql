SELECT COUNT(*)
FROM obs o 
INNER JOIN person p ON o.person_id = p.person_id
WHERE p.voided = 0 AND o.voided = 0
AND o.concept_id IN (2657,3152,3186,3160,4688) 

AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND TIMESTAMPDIFF(YEAR, p.birthdate, obs_datetime) &gt; 5;