/*
The company wants to run a phone call campaing on all customers in
Texas (=district).
What are the customers (first_name, last_name, phone number and their
district) from Texas?
Are there any (old) addresses that are not related to any customer?
*/

SELECT first_name, last_name, phone, district FROM customer c
LEFT JOIN address a
ON c.address_id = a.address_id
WHERE district = 'Texas';

SELECT * FROM address a
LEFT JOIN customer c
ON c.address_id = a.address_id
WHERE c.customer_id IS null;