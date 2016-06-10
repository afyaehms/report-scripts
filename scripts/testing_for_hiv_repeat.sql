--get count, if this was a retest for HIV within the selected period
SELECT COUNT(*)
FROM obs o

LEFT OUTER JOIN 
(
SELECT MIN(date_created) AS createdon, MIN(obs_id) AS first_time_idnt, person_id
FROM obs ob
WHERE concept_id=2260
GROUP BY person_id
ORDER BY MIN(obs_id)
) AS ob ON ob.person_id=o.person_id

WHERE (concept_id=3110 OR concept_id=100126141)
AND date_created BETWEEN '2016-03-01' AND '2016-03-31'
AND ob.first_time_idnt<>o.obs_id