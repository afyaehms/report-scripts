-- Measles received within the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(receipt_quantity),0)
FROM drug dr
INNER JOIN inventory_store_drug isd ON isd.drug_id = dr.drug_id
WHERE concept_id=1020 
AND created_on BETWEEN '2016-06-01' AND '2016-06-30';
