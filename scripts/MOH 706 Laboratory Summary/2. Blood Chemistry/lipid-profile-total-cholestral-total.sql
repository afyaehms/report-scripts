--CHOLESTEROL (concept_id: 2224)
--Total Exams
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o

WHERE o.concept_id=2224
AND DATE(obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';