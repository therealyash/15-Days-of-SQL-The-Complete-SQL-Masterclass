/*
How many customers are there with a first name
that is 3 letters long and either an 'X' or 'Y'
as the last letter in the last name ?
*/

SELECT COUNT(*)
FROM customer
WHERE (last_name LIKE '%X' OR last_name LIKE '%Y')
AND first_name LIKE '___';

/* 
You need to help the inventory manager to find out
How many movies are there that contain the 'Documentary'
in the description ?
*/

SELECT COUNT(*) 
FROM film
WHERE description LIKE '%Documentary%'




