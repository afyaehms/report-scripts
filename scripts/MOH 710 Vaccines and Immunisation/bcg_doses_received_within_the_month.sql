-- BCG received within the month
-- Substitute the dates with date placeholders

SELECT SUM(receipt_quantity)
FROM drug dr
INNER JOIN inventory_store_drug isd ON isd.drug_id = dr.drug_id
WHERE concept_id=193 AND (created_on BETWEEN '2016-06-01' AND '2016-06-30');
