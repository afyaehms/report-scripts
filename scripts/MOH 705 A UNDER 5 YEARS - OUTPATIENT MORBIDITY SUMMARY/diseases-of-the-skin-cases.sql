-- Get count of new skin disease cases
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
  (1155,1825,1828,1934,1138,4949,137293,150555,512,160161,137293,4058,4374,4499,100001513,1825,1437,1127,1856,3664,1144,1050,1339,1460,1515,1158,1130,1355,117543,117829,138706)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5

group by obs_date
) a;
