--Blood Sugar test are two: 
--Random Blood Sugar (concept_id: 2223) has a high of 7.8 and a low of 2.5
--Fasting Blood Sugar (concept_id: 2291) has a high of 6.1 and a low of 2.0
--I am combining both and testing using the different Levels
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs

WHERE obs.concept_id=2223  
AND value_numeric >= 7.8
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';