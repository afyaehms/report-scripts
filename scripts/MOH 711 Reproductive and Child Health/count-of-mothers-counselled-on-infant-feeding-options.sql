-- get count of Mothers counselled on infant feeding options
-- substitute the dates with date placeholders
-- substitute the program_id with the appropriate program id(1=&gt;ANC, 2=>PNC)
SELECT COUNT(*) 
FROM obs
WHERE
concept_id = 100126197 OR 100126198
AND value_coded = 803
AND obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'
