/*
There have been 6 complaints of customers about their payments
customer_id: 12,24,67,93,124,234
The concerned payments are all the payments of these customers
with amounts 4.99,7.99 and 9.99 in January 2020
*/


SELECT *
FROM payment
WHERE customer_id IN (12,25,67,93,124,234)
AND amount IN (4.99,7.99,9.99)
AND payment_date BETWEEN '2020-01-01 00:00' AND '2020-01-31 23:59'

