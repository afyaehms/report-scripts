select count(*) from
(
    select o.person_id, date_format(o.obs_datetime, '%d-%m-%Y') obs_date from obs o
    inner join person p on p.person_id = o.person_id
    where o.concept_id = 3004
    and o.value_coded = 100126128
    and encounter_id in
    (
      select encounter_id from
      encounter
      where encounter_type = 27
      and date(encounter_datetime) between '2016-09-01' and '2016-09-31'
    )
    group by o.person_id, obs_date
) to_community_units
