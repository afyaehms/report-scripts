SELECT *
FROM obs
INNER JOIN person p ON p.person_id=o.person_id

WHERE concept_id=310012613
AND value_coded=2222
AND encounter_id IN (
    SELECT encounter_id
    FROM obs
    WHERE concept_id=<cancer-screening-result>
    AND value_coded=782
    AND obs_datetime BETWEEN '2016-08-01' AND '2016-08-31'
    AND FLOOR(DATEDIFF(CURDATE(),p.birthdate) / 365) BETWEEN 25 AND 49
    AND gender = 'F'
)
