--TEST FOR HELICOBACTER PYLORI - It may lead to the development of duodenal ulcers and stomach cancer.
--Substitute the dates with date placeholders
--Concept id: 5670

SELECT COUNT(*)
FROM obs
WHERE concept_id = 5670
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';