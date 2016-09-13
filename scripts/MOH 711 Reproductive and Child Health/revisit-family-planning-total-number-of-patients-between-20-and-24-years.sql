#Total number of revisit fp patients between 10 and 14 years

select count(*)
from
(
select distinct person_id
from obs
where obs_datetime between '2016-08-30' and '2016-08-31'
and person_id in (
select o.person_id
from obs o
inner join person p on o.person_id = p.person_id
where concept_id = 374
and EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) between 20 and 24
group by o.person_id
having count(o.person_id) &gt; 1
)
) a;
