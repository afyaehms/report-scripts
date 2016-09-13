--  Revisit emergency contraceptive pills
-- Substitute the dates with date placeholders

select count(*) from
(
select person_id from obs 
where concept_id = 374
and value_coded = 160570
and obs_datetime between '2016-08-24' and '2016-08-25'
and person_id in (
    select person_id from obs
    where concept_id = 374
    and value_coded = 160570
    and obs_datetime &lt; '2016-08-24'
    group by person_id
)
group by person_id
) a;
