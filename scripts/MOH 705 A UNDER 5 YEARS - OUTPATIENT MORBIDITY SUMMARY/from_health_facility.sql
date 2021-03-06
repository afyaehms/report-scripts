select count(*) from
(
    select o.person_id, date_format(o.obs_datetime, '%d-%m-%Y') obs_date from obs o
    inner join person p on p.person_id = o.person_id
    where o.concept_id = 5 
    and o.value_coded in (4008,4009,4010)
    and date(o.obs_datetime) between :startOfPeriod and :endOfPeriod
    and EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &lt;= 5
    group by o.person_id, obs_date
) from_health_facility
