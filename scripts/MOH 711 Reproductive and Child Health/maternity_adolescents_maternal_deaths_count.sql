#Count of adolescents maternal deaths
SELECT COUNT(*) FROM
obs o
INNER JOIN person p ON p.person_id = o.person_id
WHERE concept_id = 160085
AND value_coded = 180
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30'
AND TIMESTAMPDIFF(YEAR, p.birthdate, :startOfPeriod) BETWEEN 10 AND 19;
