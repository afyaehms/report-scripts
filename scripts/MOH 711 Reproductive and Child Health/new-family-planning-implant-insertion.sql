-- Implant BTL
-- Substitute the dates with date placeholders

select count(*) from
(
#get implant insertions
select a.person_id, min(a.obs_date) min_obs_date
from
(
#get implants
select person_id, value_coded, date_format(obs_datetime, '%m-%d-%Y') obs_date from obs 
where concept_id = 374
and value_coded = 1472
) a
inner join
(
#get insertions
select person_id, value_coded, date_format(obs_datetime, '%m-%d-%Y') obs_date from obs 
where concept_id = 100126257
and value_coded = 100126255
) b on a.person_id = b.person_id and a.obs_date = a.obs_date
group by person_id
having min_obs_date between '2016-08-20' and '2016-08-23'
) c;
