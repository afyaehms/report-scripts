-- GET HEIGHT FOR AGE (concept_id: 100126186)
-- Total Weighed
-- Age 0-6mnths
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime)<6

WHERE concept_id=100126186
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';