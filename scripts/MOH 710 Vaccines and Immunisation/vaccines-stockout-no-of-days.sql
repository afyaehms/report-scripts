-- RETURN NUMER OF DAYS VACCINE WAS OUT OF STOCK
-- Returns Vaccine Number of Days
-- Substitute the dates with date placeholders

SELECT GROUP_CONCAT(CONCAT(@row:=@row+1, '. ', DATEDIFF(LEAST(IFNULL(date_restocked, NOW()), '2016-09-30'), GREATEST(date_depleted, '2016-09-01')),'days')SEPARATOR '/') eq_type

FROM immunization_stockout
JOIN (SELECT @row := 0) r

WHERE date_depleted BETWEEN '2016-09-01' AND '2016-09-30' 
OR date_restocked BETWEEN '2016-09-01' AND '2016-09-30' 
OR date_restocked IS NULL;