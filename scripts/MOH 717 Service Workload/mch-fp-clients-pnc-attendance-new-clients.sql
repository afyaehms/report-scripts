-- This bracket return all new subscriptions/enrollment to a program
-- Program 2 reps PNC


SELECT COUNT(*)
FROM patient_program
WHERE program_id= '2'
AND date_enrolled between '2016-01-01' and '2016-06-30';