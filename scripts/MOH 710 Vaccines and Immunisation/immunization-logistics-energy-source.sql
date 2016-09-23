-- RETURN TYPE OF EQUIPMENTS AVAILABLE
-- Separe Items By /
-- Substitute the dates with date placeholders

SELECT GROUP_CONCAT(CONCAT(@row\\:=@row+1, '.', energy_source) SEPARATOR '/') eq_type
FROM immunization_equipment
JOIN (SELECT @row \\:= 0) r

WHERE created_on < :startOfPeriod;
OR created_on < :endOfPeriod;

