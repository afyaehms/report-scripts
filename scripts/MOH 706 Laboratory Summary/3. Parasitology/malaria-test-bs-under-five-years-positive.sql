-- Get count of B/S MALARIA (concept_id: 2260)
-- POSITVE results are +, ++, +++, ++++ (694, 695, 696, 697)
-- Current Update allows Users to Provide Feedback as either Positive Negative
-- Substitute the dates with date placeholders

SELECT COUNT(*) FROM
obs o

INNER JOIN person p ON o.person_id=p.person_id
AND TIMESTAMPDIFF(YEAR, p.birthdate, o.obs_datetime)<5

LEFT OUTER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND ob.concept_id = 5655

WHERE o.concept_id=2260
AND (o.value_coded IN (694, 695, 696, 697) OR ob.value_coded=782)
AND o.obs_datetime BETWEEN '2016-08-01' AND '2016-09-30';