-- GET HEIGHT FOR AGE (concept_id: 100126186)
-- Total Weighed
-- Age BETWEEN 24 AND 59
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) BETWEEN 24 AND 59

WHERE concept_id=100126186
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';