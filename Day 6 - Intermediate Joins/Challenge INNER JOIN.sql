/*
The airline company wants to understand in which category they sell most
tickets.
How many people choose seats in the category
-Business
-Economy or
-Comfort?
You need to work on the seats table and the boarding_passes table.
*/

-- SELECT 
-- seats.fare_conditions
-- FROM seats
-- INNER JOIN boarding_passes
-- ON seat.fare

SELECT 
fare_conditions,
COUNT(*)
FROM boarding_passes b
INNER JOIN seats s
ON s.seat_no = b.seat_no
GROUP BY fare_conditions