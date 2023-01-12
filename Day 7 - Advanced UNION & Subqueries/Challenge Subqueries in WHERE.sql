-- Select all the films where length is longer than the average of all films.
SELECT *
FROM film
WHERE length > (SELECT AVG(length) FROM film)

-- Return all the films that are available in the inventory in store 2 more than 3 times.
SELECT * FROM film
WHERE film_id IN
(SELECT film_id FROM inventory
WHERE store_id = 2
GROUP BY film_id
HAVING COUNT(*) > 3)