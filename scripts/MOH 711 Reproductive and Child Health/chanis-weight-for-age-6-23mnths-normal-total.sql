-- GET WEIGHT FOR AGE (concept_id: 1854)
-- Normal Weight (concept_id: 831)
-- Age 6-23mnths
-- substitute the dates with date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) BETWEEN 6 AND 23

WHERE concept_id=1854
AND value_coded=831
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';