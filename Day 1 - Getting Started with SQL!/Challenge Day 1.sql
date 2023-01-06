
--1. Create a list of distinct district customers are from.

/*
SELECT DISTINCT
district
FROM address
*/


--2. What is the latest rental date?

/*
SELECT 
rental_date
FROM rental
ORDER BY rental_date DESC
LIMIT 1
*/

--3. How many films does the company have?

/*
SELECT 
COUNT(*)
FROM film
*/

--4. How many distinct last names of the customer are there?

/*
SELECT
COUNT(DISTINCT last_name)
FROM customer
*/



