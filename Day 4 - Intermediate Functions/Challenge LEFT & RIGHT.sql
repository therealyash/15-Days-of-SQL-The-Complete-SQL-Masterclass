/*
Extract the last 5 characters of the email address first.
The email address always ends with '.org'
How can you extract just the dot '.' from the email address?
*/

SELECT 
RIGHT(email,4)
FROM customer;

SELECT
email
FROM customer
WHERE email LIKE '%.org';

SELECT
LEFT(RIGHT(email,4),1)
FROM customer