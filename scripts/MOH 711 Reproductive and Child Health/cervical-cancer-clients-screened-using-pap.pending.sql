-- get count of patients screened for cervical cancer using PAP Smear method 


SELECT COUNT(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod