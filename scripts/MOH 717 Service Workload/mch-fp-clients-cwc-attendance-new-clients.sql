-- This bracket return all new subscriptions/enrollment to a program
-- Program 1 reps ANC


SELECT COUNT(*)
FROM patient_program
WHERE program_id= '3'
AND date_enrolled BETWEEN '2016-01-01' AND '2016-06-30';