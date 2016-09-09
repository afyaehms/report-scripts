-- New Visits in CWC
-- Females ONLY
-- Age 0-59mnths
-- replace date placeholders

SELECT *

FROM obs o
INNER JOIN person p ON p.person_id=o.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) < 59
AND gender = 'M'

WHERE CONCAT(o.person_id,'-',obs_id) IN (
	SELECT CONCAT(person_id,'-',MIN(obs_id))obs_idnt
	FROM obs o
	INNER JOIN encounter e ON e.encounter_id=o.encounter_id
	WHERE encounter_type=21 OR encounter_type=24
	GROUP BY person_id
)

AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-09-30';