SELECT *
FROM obs

WHERE concept_id=310012613
AND person_id IN (
    select obs.person_id 
    from obs
    inner join person p on p.person_id = obs.person_id 
    where concept_id = 2202 
    and value_coded = 782  
    AND FLOOR(DATEDIFF(CURDATE(),p.birthdate) / 365) &gt;= 50
    AND gender = 'F'
    group by obs.person_id
)
