--TEST FOR HELICOBACTER PYLORI - It may lead to the development of duodenal ulcers and stomach cancer.
--Substitute the dates with date placeholders
--Concept id: 5670
--returns total positive results

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 5670
AND obs.value_coded - 782
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';