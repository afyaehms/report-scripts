-- Get count of total Urine Chemistry Exams
-- Urine Chemistry Composes Glucose (concept_id: 5244), Ketones(concept_id: 2276) and Proteins (concept_id: 5243)
-- Obs JOINS the orders table to fetch the Urine Analysis Test (concept_id: 5141)
-- Concept 5655 ensures only the positive negative test is retrieved on Union back to the obs
-- Substitute the dates with date placeholders


SELECT COUNT(*) 
FROM obs o
LEFT OUTER JOIN obs ob ON o.obs_id=ob.obs_group_id AND ob.concept_id=5655

WHERE o.concept_id IN (5244, 2276, 5243)
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';