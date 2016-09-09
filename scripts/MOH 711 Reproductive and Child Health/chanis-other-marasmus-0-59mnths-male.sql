-- MARASMUS (concept_id: 1765)
-- Males ONLY
-- Age 0-59mnths
-- replace date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON p.person_id=o.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) < 59
AND gender = 'M'

WHERE concept_id=100126196
AND value_coded=1765
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';