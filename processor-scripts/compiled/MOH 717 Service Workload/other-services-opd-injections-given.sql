SELECT COUNT(*)
FROM obs o
INNER JOIN concept_answer ca
ON ca.answer_concept = o.concept_id
AND ca.concept_id=5321
