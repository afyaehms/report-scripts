select count(*) from (
select o.person_id, min(obs_datetime) min_obs_datetime
from obs o
inner join person p on o.person_id = p.person_id
where concept_id = 374
and EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) between 15 and 19
group by o.person_id
having min_obs_datetime between '2016-08-26' and '2016-09-02') a;
