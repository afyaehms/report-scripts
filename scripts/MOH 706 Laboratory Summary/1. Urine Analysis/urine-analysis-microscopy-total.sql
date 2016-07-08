-- Get count of total Urine Chemistry Exams
-- Urine Chemistry Composes PUS CELLS (1869), S. HAEMATOBIUM (5247), T. VAGINALIS (5248), YEAST CELLS (613), BACTERIA (623)
-- Concept 5655 ensures only the positive negative test is retrieved on Union back to the obs
-- Substitute the dates with date placeholders


SELECT COUNT(*) 
FROM obs o
LEFT OUTER JOIN obs ob ON o.obs_id=ob.obs_group_id AND ob.concept_id=5655

WHERE o.concept_id IN (1869, 5247, 5248, 613, 623)
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';