--get count of new clients PUS Cells (concept_id: 1869) that are positive within a time period
--substitute the dates with date placeholders
--Pus Cells accepts values: Negative, One Plus, two Plus, Three Plus and Four Plus
--Therefore, any results that is not Negative (concept_id: 781) is assumed positive
--Obs joins Orders to fetch the Urinalysis Test (concept_id: 5141)

SELECT COUNT(*)

FROM obs
INNER JOIN orders o
ON obs.order_id=o.order_id AND o.concept_id=5141

WHERE obs.concept_id=1869 
AND obs.value_coded<>781
AND DATE(obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod;