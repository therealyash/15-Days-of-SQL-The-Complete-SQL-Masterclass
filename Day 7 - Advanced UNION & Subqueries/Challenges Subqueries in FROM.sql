-- What is the average total amount spent per day (average daily revenue)

SELECT
AVG(amount_per_day)
FROM
(SELECT
SUM(amount) AS amount_per_day,
DATE(payment_date)
FROM payment
GROUP BY DATE(payment_date))