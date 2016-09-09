-- GET WEIGHT FOR AGE (concept_id: 1854)
-- Under Weight (concept_id: 123814)
-- Age 0-6mnths
-- Males Only
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime)<6
AND gender = 'M'

WHERE concept_id=1854
AND value_coded=123814
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';