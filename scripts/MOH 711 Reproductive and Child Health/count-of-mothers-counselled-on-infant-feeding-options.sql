-- get count of Mothers counselled on infant feeding options
-- substitute the dates with date placeholders
-- substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC)
SELECT COUNT(*) 
FROM obs
WHERE obs_datetime BETWEEN '2016-07-01' AND '2016-07-01'