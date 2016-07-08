--get count of new clients registered to a program (ANC/PNC/CWC)
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC, 3=>CWC
SELECT count(*)
FROM patient_program
WHERE program_id= '1'
AND date_enrolled between '2016-06-02' and '2016-06-13'