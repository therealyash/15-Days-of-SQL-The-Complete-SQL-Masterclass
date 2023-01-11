/*
More Challenges

Question 1:
Which passenger (passenger_name) has spent most amount in their bookings (total_amount)?
Answer: ALEKSANDR IVANOV with 80964000.

Question 2:
Which fare_condition has ALEKSANDR IVANOV used the most?
Answer: Economy 2131 times.

Question 3:
Which title has GEORGE LINTON rented the most often?
Answer: CADDYSHACK JEDI - 3 times.
*/

SELECT passenger_name,SUM(total_amount) FROM tickets t
INNER JOIN bookings b
ON t.book_ref=b.book_ref
GROUP BY passenger_name
ORDER BY SUM(total_amount) DESC;

SELECT passenger_name, fare_conditions, COUNT(*) FROM tickets t
INNER JOIN bookings b
ON t.book_ref=b.book_ref
INNER JOIN ticket_flights tf
ON t.ticket_no=tf.ticket_no
WHERE passenger_name = 'ALEKSANDR IVANOV'
GROUP BY fare_conditions, passenger_name;

SELECT first_name, last_name, title, COUNT(*)
FROM customer cu
INNER JOIN rental re
ON cu.customer_id = re.customer_id
INNER JOIN inventory inv
ON inv.inventory_id=re.inventory_id
INNER JOIN film fi
ON fi.film_id = inv.film_id
WHERE first_name='GEORGE' and last_name='LINTON'
GROUP BY title, first_name, last_name
ORDER BY 4 DESC