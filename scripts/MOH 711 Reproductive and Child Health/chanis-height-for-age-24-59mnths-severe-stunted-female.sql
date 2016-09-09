-- GET HEIGHT FOR AGE (concept_id: 100126186)
-- Severly Stunted (concept_id: 100126131)
-- Age BETWEEN 24 AND 59
-- Females Only
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) BETWEEN 24 AND 59
AND gender = 'F'

WHERE concept_id=100126186
AND value_coded=100126131
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';