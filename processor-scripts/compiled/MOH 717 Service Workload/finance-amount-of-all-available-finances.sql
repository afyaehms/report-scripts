--Total available financing
--substitute the dates with date placeholders

SELECT SUM(actual_payment) FROM accounting_payment
WHERE created_date BETWEEN :startOfPeriod AND :endOfPeriod;
