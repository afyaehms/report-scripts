-- Get count of patients who have had ultrasound performed on them
-- NOTE:
-- 1) discontinued means results have been captured
-- 2) 2393 is container of all ultrasound tests

select * from orders 
where 
	discontinued = 1 
and 
	concept_id in 
		(select answer_concept from concept_answer where concept_id = 2393);
