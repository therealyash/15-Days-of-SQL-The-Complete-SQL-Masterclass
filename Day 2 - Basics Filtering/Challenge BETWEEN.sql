/*
There have been some faulty payments and you need to
found out how many payments have been affected.

How many payments have been made on January 26th and 27th 20202
with an amount between 1.99 and 3.99
*/

SELECT COUNT(*)
FROM payment
WHERE payment_date BETWEEN '2020-01-26' AND '2020-01-27 23:59'
AND amount BETWEEN 1.99 AND 3.99
