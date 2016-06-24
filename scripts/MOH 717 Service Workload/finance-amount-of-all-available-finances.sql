--Total available financing
--substitute the dates with date placeholders

SELECT SUM(actual_payment) FROM accounting_payment
WHERE created_date BETWEEN '2016-06-01' AND '2016-06-30';
