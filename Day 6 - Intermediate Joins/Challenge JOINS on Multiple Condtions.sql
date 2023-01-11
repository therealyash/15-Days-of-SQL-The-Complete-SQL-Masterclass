--Get the average amount for the different seat no.

SELECT seat_no, ROUND(AVG(amount), 2) FROM boarding_passes b
LEFT JOIN ticket_flights t
ON b.ticket_no = t.ticket_no
AND b.flight_id = t.flight_id
GROUP BY seat_no
ORDER BY 2 DESC