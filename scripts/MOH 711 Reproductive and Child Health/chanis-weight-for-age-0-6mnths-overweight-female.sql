-- GET WEIGHT FOR AGE (concept_id: 1854)
-- Overweight (concept_id: 114413)
-- Age 0-6mnths
-- Females Only
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime)<6
AND gender = 'F'

WHERE concept_id=1854
AND value_coded=114413
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';