/*
You need to create a list for the support team of
all rental durations of customer_id 35.

Also you need to find out for the support team
which customer had the longest average rental duration?
*/

SELECT
customer_id,
AVG(return_date - rental_date) AS rental_duration
FROM rental
GROUP BY customer_id
ORDER BY rental_duration DESC

