-- The inventory manager asks you how many rentals have not been returned yet ?

SELECT 
COUNT(*)
FROM rental
WHERE return_date is null;

/*
The sales manager asks you for a list of all the payment_ids with an amount less 
than or equal to $2 Include payment_id and the amount
*/

SELECT payment_id, amount 
FROM payment
WHERE amount <= 2
ORDER BY amount DESC

