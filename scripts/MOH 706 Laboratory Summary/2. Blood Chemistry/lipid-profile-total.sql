--Total Lipid Profile Tests
--Composes of CHOLESTEROL (concept_id: 2224), SERUM TRIGLYCERIDES (concept_id: 2227), LOW-DENSITY LIPOPROTEIN (concept_id: 2226)
--Total Exams
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id IN (2224, 2226, 2227)

AND DATE(obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';