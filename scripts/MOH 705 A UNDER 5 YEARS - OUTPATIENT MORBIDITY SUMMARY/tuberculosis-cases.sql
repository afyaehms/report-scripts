select count(person_id)
from
(
select o.person_id, date_format(obs_datetime, '%d-%m-%Y') obs_date
from obs o
inner join person p on p.person_id = o.person_id
WHERE o.voided = 0
AND
  (o.concept_id=5109  )
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded IN 
  (572,1010,1163,1213,1245,1470,1525,1527,1707,1708,
    1752,2345,3860,4059,4060,4061,4148,4298,4316,4425,4592,152306,160156,4047,4542)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5

  group by obs_date
) a;
