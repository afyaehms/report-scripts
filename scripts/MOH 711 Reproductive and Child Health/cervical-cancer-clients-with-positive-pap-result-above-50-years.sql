SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON p.person_id=o.person_id

WHERE concept_id=100126138
AND value_coded=2222
AND encounter_id IN (
    SELECT encounter_id
    FROM obs
    WHERE concept_id=100126139
    AND value_coded=782
    AND obs_datetime BETWEEN '2016-08-01' AND '2016-08-31'
    AND FLOOR(DATEDIFF(CURDATE(),p.birthdate) / 365) &gt;= 50
    AND gender = 'F'
)
