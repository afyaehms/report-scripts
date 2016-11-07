-- Dressing is contained in Concept 4197
-- Look for all it's answers in the Obs Table
-- Substitute Date Placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON o.person_id = p.person_id
INNER JOIN concept_answer ca 
ON ca.answer_concept = o.concept_id
AND ca.concept_id=4197

WHERE DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND TIMESTAMPDIFF(YEAR, p.birthdate, obs_datetime) &gt; 5;