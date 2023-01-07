/*
The support manager asks you about a list of all payments of
the customer 322, 346 and 354 where the amount is either less
than $2 or greater than $10
*/

SELECT * 
FROM payment
WHERE (customer_id = 322 OR customer_id = 346 OR customer_id = 354)
AND (amount < 2 OR amount > 10)
ORDER BY customer_id, amount DESC



