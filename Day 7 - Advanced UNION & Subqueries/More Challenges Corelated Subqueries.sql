/*
Show all the payments plus the total amount for every customer as well as the
number of payments of each customer.
*/

SELECT 
payment_id,
customer_id,
staff_id, amount,
(SELECT SUM(amount) AS sum_amount
FROM payment p2
WHERE p1.customer_id = p2.customer_id),
(SELECT COUNT(amount) AS count_payments
FROM payment p2
WHERE p1.customer_id = p2.customer_id)
FROM payment p1
ORDER BY customer_id, amount DESC

/*
Show only those films with the highest replacement costs in their rating
category plus show the average replacement cost in their rating category.
*/

SELECT title, replacement_cost, rating,
(SELECT AVG(replacement_cost) FROM film f2
	WHERE f1.rating = f2.rating)
FROM film f1
WHERE replacement_cost = 
(SELECT MAX(replacement_cost) FROM film f3
WHERE f1.rating = f3.rating)	
							

/*
Show only those payments with the highest payment for each customer's first
name including the payment_id of that payment.
How would you solve it if you would not need to see the payment_id?
*/

SELECT first_name, amount, payment_id
FROM payment p1
INNER JOIN customer category
ON p1.customer_id = c.customer_id
WHERE amount = 
(SELECT MAX(amount) FROM payment p2
WHERE p1.customer_id = p2.customer_id)


