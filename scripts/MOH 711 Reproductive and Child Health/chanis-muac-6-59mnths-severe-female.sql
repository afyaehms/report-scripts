-- MUAC FOR AGE (concept_id: 5712)
-- Severe (Red)
-- Age 6-59mnths
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) BETWEEN 6 AND 59
AND gender = 'F'

WHERE concept_id=5712
AND value_numeric < 11.5
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';