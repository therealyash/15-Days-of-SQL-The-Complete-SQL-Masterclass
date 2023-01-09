/*
You need to analyze the payments and analyze
the following:
What's the month with the highest total payment amount?
What's the day of the week with the highest total payment amount?
(0 is Sunday)
What's the highest amount one customer has spent in a week?
*/

SELECT 
EXTRACT(month from payment_date) AS _month,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY _month
ORDER BY total_payment_amount DESC;


SELECT 
EXTRACT(dow from payment_date) AS day_of_week,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY day_of_week
ORDER BY total_payment_amount DESC;


SELECT 
customer_id,
EXTRACT(week from payment_date) AS week,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY week, customer_id
ORDER BY total_payment_amount DESC;
