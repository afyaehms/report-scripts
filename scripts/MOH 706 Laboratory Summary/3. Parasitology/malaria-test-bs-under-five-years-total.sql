-- Get count of B/S MALARIA (concept_id: 2260)
-- POSITVE results are +, ++, +++, ++++ (694, 695, 696, 697)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

INNER JOIN person p ON o.person_id=p.person_id
AND (DATEDIFF(CURDATE(),birthdate) / 365) < 5

WHERE concept_id = 2260
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';