#Total number of revisit fp patients

select count(*)
from
(
select distinct person_id
from obs
where obs_datetime between '2016-08-30' and '2016-08-31'
and person_id in (
select person_id
from obs
where concept_id = 374
group by person_id
having count(person_id) &gt; 1
)
) a;
