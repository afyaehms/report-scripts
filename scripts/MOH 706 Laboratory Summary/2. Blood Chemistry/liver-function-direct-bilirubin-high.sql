--DIRECT BILIRUBIN (concept_id: 2232)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN concept_numeric cn ON cn.concept_id=o.concept_id
AND o.concept_id=2232


WHERE o.value_numeric >= cn.hi_normal
AND DATE(obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';