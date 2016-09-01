-- Implant BTL
-- Substitute the dates with date placeholders

select count(*) from
(
#get iucd removals
select a.person_id, min(a.obs_date) min_obs_date
from
(
#get iucd
select person_id, value_coded, date_format(obs_datetime, '%m-%d-%Y') obs_date from obs 
where concept_id = 374
and value_coded = 136452
) a
inner join
(
#get removals
select person_id, value_coded, date_format(obs_datetime, '%m-%d-%Y') obs_date from obs 
where concept_id = 100126257
and value_coded = 100126256
) b on a.person_id = b.person_id and a.obs_date = a.obs_date
group by person_id
having min_obs_date between '2016-08-20' and '2016-08-23'
) c;
