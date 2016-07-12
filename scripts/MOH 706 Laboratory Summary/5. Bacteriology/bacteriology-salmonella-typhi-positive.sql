-- 	TEST FOR SALMONELLA TYPHI-	Infections are caused due to ingestion of contaminated food
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 5162
AND o.value_text = 'POSITIVE'
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'