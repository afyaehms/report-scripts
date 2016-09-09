-- EXCLUSIVE BREASTFEEDING (concept_id: 2647)
-- Females ONLY
-- Age 0-59mnths
-- replace date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON p.person_id=o.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) < 59

WHERE concept_id=2647
AND value_text = '4536f271-5430-4345-b5f7-37ca4cfe1553'
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';