select count(*) from (
select person_id, min(obs_datetime) min_obs_datetime
from obs o
inner join person p on o.person_id = p.person_id
where concept_id = 374
and EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) between 20 and 24
group by person_id
having min_obs_datetime between '2016-08-26' and '2016-09-02') a;
