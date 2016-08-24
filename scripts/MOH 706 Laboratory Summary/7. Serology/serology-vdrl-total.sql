--VDRL - A flocculation test for syphilis employing cardiolipin in combination with lecithin and cholesterol
--Synonyms	:VDRL (QUALITATIVE),SYPHILIS TEST (VDRL)
--Substitute the dates with date placeholders
--Concept id: 2202

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 2202
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';