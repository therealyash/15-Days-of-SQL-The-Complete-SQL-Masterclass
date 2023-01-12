/*
Show only those movie titles, their associated
film_id and replacement_cost with the lowest replacement_costs 
for in each rating category also show the
rating.
*/

SELECT title, film_id, replacement_cost, rating
FROM film f1
WHERE replacement_cost =
(SELECT MIN(replacement_cost) FROM film f2
WHERE f1.rating = f2.rating)

/*
Show only those movie titles, their associated film_id 
and the length that have the highest length in each 
rating category also show the rating.
*/


SELECT title, film_id, length, rating
FROM film f1
WHERE replacement_cost =
(SELECT MAX(length) FROM film f2
WHERE f1.rating = f2.rating)
