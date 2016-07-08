--VDRL - A flocculation test for syphilis employing cardiolipin in combination with lecithin and cholesterol positive
--Synonyms	:VDRL (QUALITATIVE),SYPHILIS TEST (VDRL)
--Substitute the dates with date placeholders
--Concept VDRL id: 2202
--Concept POSITIVE id: 782

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 2202
AND obs.value_coded = 782
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';