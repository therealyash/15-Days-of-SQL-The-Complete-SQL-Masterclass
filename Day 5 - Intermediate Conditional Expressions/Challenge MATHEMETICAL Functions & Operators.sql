/*
Your manager is thinking about increasing the prices for films that
are more expensive to replace.
For that reason, you should create a list of the films including the
relation of the rental rate / replacement cost where the rental rate is
less than 4% of the replacement cost.
Create a list of that film_ids together with the percentage rounded to 
2 decimanl places. For ex - 3.54 = (3.54%)
*/

SELECT 
film_id,
ROUND((rental_rate / replacement_cost) * 100,2) AS increase_prices
FROM film
WHERE rental_rate < (replacement_cost * 0.04)
ORDER BY 2