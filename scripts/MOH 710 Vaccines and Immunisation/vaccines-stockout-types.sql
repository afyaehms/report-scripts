-- RETURN TYPE OF EQUIPMENTS AVAILABLE
-- Separe Items By /
-- Substitute the dates with date placeholders

SELECT GROUP_CONCAT(CONCAT(@row:=@row+1, '.', id.name)SEPARATOR '/') AS vaccines_type

FROM immunization_stockout iso
INNER JOIN inventory_drug id ON id.id=iso.drug_id

JOIN (SELECT @row := 0) r

WHERE date_depleted BETWEEN '2016-09-01' AND '2016-09-30' 
OR date_restocked BETWEEN '2016-09-01' AND '2016-09-30' 
OR date_restocked IS NULL;