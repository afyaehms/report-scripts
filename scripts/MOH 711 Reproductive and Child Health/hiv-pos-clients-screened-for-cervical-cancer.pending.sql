-- get count of HIV positive clients screened cervical cancer


SELECT SUM(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod