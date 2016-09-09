-- GET WEIGHT FOR AGE (concept_id: 1854)
-- Obesity (concept_id: 115115)
-- Age BETWEEN 24 AND 59
-- Males Only
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) BETWEEN 24 AND 59
AND gender = 'M'

WHERE concept_id=1854
AND value_coded=115115
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';