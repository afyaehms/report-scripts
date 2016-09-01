-- IUCD removals
-- Substitute the dates with date placeholders

select count(a.person_id)
from
(
select person_id, value_coded, date_format(obs_datetime, '%m-%d-%Y') obs_date from obs 
where concept_id = 374
and value_coded = 4626
and obs_datetime between '2016-08-20' and '2016-08-23'
and person_id not in
(
select person_id from obs
where concept_id = 374
and value_coded = 4626
and obs_datetime < '2016-08-20'
)
) a
inner join
(
select person_id, value_coded, date_format(obs_datetime, '%m-%d-%Y') obs_date from obs 
where concept_id = 100126257
and value_coded = 100126255
and obs_datetime between '2016-08-20' and '2016-08-23'
and person_id not in
(
select person_id from obs
where concept_id = 374
and value_coded = 4626
and obs_datetime < '2016-08-20'
)
) b on a.person_id = b.person_id and a.obs_date = a.obs_date
group by a.person_id;

