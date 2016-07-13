-- Vitamin A Supplemental Lactating Mothers (200,000IU
-- The Vitamin A given to lactating mothers has concept_id: 325 since it's a question
-- The query ensures that the encounter originated from PNC (encounter_type: 20)
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN encounter e
ON e.encounter_id = o.encounter_id
AND e.encounter_type= 20
WHERE concept_id = 325
AND DATE(obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
