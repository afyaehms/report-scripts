# Total number of new fp clients

select count(*) from (
select person_id, min(obs_datetime) min_obs_datetime
from obs
where concept_id = 374
group by person_id
having min_obs_datetime between '2016-08-26' and '2016-09-02') a;
