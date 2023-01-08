/*
There are 2 competitions between 2 employees.
Which employee had the highest sales amounts in a single day?
Which employee had the most sales in the single day(not counting paymens with amount = 0)
*/

SELECT 
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC;

SELECT 
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY COUNT(*) DESC;



