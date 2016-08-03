-- get count of cervical cancer clients with suspicious cancer lesions


SELECT COUNT(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod