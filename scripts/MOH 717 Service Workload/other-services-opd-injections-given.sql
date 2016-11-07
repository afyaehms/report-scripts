-- concept_id:5321 holders all the concept_answer for injections
-- replace dateholders

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON o.person_id = p.person_id
INNER JOIN concept_answer ca 
ON ca.answer_concept = o.concept_id
AND ca.concept_id=5321

WHERE DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND TIMESTAMPDIFF(YEAR, p.birthdate, obs_datetime) &gt; 5;
