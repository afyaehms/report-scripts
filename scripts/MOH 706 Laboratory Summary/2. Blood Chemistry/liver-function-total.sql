--Total Liver Function Tests
--Composes of ALANINE AMINOTRANSFERASE (concept_id: 2209), SERUM ALBUMIN (concept_id: 2217), ASPARTATE AMINOTRANSFERASE (concept_id: 2208), DIRECT BILIRUBIN (concept_id: 2232), SERUM PROTEIN (concept_id: 2212), ALKALINE PHOSPHATASE (concept_id: 2214) & TOTAL BILIRUBIN (concept_id: 2210)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id IN (2208, 2209, 2210, 2212, 2214, 2217, 2232)

AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';