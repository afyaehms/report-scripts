-- Get count of B/S MALARIA (concept_id: 2260) that are positive within a time period
-- B/S MALARIA uses the TEST RESULT VALUE (concept_id: 5655) to perform the postive/negative test
-- POSITVE results are VALUE CODED (concept_id: 782)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2260
AND ob.concept_id = 5655
AND ob.value_coded = 782

INNER JOIN person p ON o.person_id=p.person_id
AND (DATEDIFF(CURDATE(),birthdate) / 365) >= 5

WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';