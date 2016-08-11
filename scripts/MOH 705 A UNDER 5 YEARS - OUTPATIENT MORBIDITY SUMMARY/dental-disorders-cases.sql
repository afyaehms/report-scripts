-- Get count of new dental disorder cases
select count(person_id)
from
(
select o.person_id, date_format(obs_datetime, '%d-%m-%Y') obs_date
from obs o
inner join person p on p.person_id = o.person_id
WHERE o.voided = 0
AND
  (o.concept_id=5109 )
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN 
  (1048,1531,1533,1599,1610,1620,2755,3113,4362,4451,119558)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5 
-- get only new cases
AND p.person_id NOT IN (
  SELECT person_id FROM obs 
  WHERE concept_id = 5109 
  AND value_coded IN
    (1048,1531,1533,1599,1610,1620,2755,3113,4362,4451,119558)
  AND DATE(obs_datetime) &lt; :startOfPeriod)

group by obs_date
) a;
