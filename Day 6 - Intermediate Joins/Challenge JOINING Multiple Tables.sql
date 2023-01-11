/*
The company wants customize their campaigns to customers depending on
the country they are from.
Which customers are from Brazil?
Write a query to get first_name, last_name, email and the country from all
customers from Brazil.
*/

SELECT first_name, last_name, email, co.country
FROM customer cu
LEFT JOIN address ad
ON cu.address_id = ad.address_id
LEFT JOIN city ci
ON ci.city_id = ad.city_id
LEFT JOIN country co
ON co.country_id = ci.country_id
WHERE country = 'Brazil'