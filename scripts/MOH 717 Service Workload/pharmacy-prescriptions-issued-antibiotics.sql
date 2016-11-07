-- Antibiotics are drugs of Category 4
-- Check OPD drug Order and union Inventory_Drug to get the drugs of that category_id
-- Substitute dateplace holders

SELECT COUNT(*)
FROM opd_drug_order odo
INNER JOIN person p ON odo.patient_id = p.person_id
INNER JOIN inventory_drug d ON d.id=odo.inventory_drug_id
AND d.category_id=4

WHERE DATE(odo.created_on) BETWEEN :startOfPeriod AND :endOfPeriod
AND TIMESTAMPDIFF(YEAR, p.birthdate, odo.created_on) &gt; 5;