--Total Renal urea Function Tests
--Composes of Urea (concept_id: 2221), Sodium (concept_id: 2505), Potassium (concept_id: 2504), Creatinine (concept_id: 2215) & Chlorides (concept_id: 2501)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs
WHERE concept_id IN (2215, 2221, 2505, 2504, 2501)

AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';