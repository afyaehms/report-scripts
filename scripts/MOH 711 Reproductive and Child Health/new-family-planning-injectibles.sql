-- Injectibles
-- Substitute the dates with date placeholders

select count(*) from 
(
select person_id, min(obs_datetime) min_obs_datetime
from obs
where concept_id = 374
and value_coded = 5279
group by person_id
having min_obs_datetime between '2016-08-23' and '2016-08-23'
) a;
