/*
Return all customers' first names and last names that have made
a payment on '2020-01-25'
*/
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (SELECT customer_id
					  FROM payment
					  WHERE DATE(payment_date) = '2020-01-25')

/*
Return all customers' first_names and email addresses that have spent
a more than $30
*/

SELECT first_name, email
FROM customer
WHERE customer_id IN (SELECT customer_id
					  FROM payment
					  GROUP BY customer_id
					  HAVING SUM(amount) > 30)

/*
Return all the customers' first and last names that are from California
and have spent more than 100 in total
*/

SELECT first_name, email
FROM customer
WHERE customer_id IN (SELECT customer_id
					  FROM payment
					  GROUP BY customer_id
					  HAVING SUM(amount) > 100)

AND customer_id IN (SELECT customer_id
					FROM customer
					INNER JOIN address
					ON address.address_id = customer.address_id
					WHERE district = 'California'
