/*
1. How many movies are there that contain 'Saga' in the description
and where the title starts either with 'A' or ends with 'R'?
*/

SELECT COUNT(*)  
FROM film AS no_of_movies
WHERE description LIKE '%Saga%'
AND (title LIKE 'A%' OR title LIKE '%R');

/*
2. Create a list of all customers where the first name contains 'ER' and
has an 'A' as the second letter. Order the results by last_name descendingly.
*/

SELECT * 
FROM customer
WHERE first_name LIKE '_A%ER%'
ORDER BY last_name DESC;

/*
3. How many payments are there where the amount is either 0 or is between 3.99
and 7.99 and in the same time has happened on 202-05-01?
*/

SELECT COUNT(*) 
FROM payment
WHERE (amount = 0
OR amount BETWEEN 3.99 AND 7.99)
AND payment_date BETWEEN '2020-05-01' AND '2020-05-02 23:59';




