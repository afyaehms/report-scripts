--ASO is a blood test used to assist in the diagnosis of a streptococcal infection or indicate a past exposure to streptococci
--Synonyms	:ASO (QUALITATIVE),ASO TEST,ASO,ANTI-STREPTOLYSIN O
--Substitute the dates with date placeholders
--Concept id: 2243
--Concept POSITIVE id: 782

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 2243
AND obs.value_coded = 782
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';