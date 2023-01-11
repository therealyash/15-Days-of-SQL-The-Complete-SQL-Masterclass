/*
The flight company is trying to find out what their most popular
seats are.
Try to find out which seat has been chosen most frequently.
Make sure all seats are included even if they have never been
booked.
Are there seats that have never been booked?
*/

SELECT 
RIGHT(s.seat_no,1),
COUNT(*)
FROM seats s
LEFT JOIN boarding_passes b
ON s.seat_no = b.seat_no
GROUP BY RIGHT(s.seat_no,1)
ORDER BY COUNT(*) DESC