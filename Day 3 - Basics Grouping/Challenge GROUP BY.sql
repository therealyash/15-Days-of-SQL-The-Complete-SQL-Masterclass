/*
Your manager wants to know which of the 2 employees(staff_id)
is responsible for more payments ?
Which of the two is responsible for a higher overall payment amount?
How does these amounts change if we don't consider amounts equal to 0?
*/
SELECT staff_id,
SUM(amount),
COUNT(staff_id)
FROM payment
GROUP BY staff_id
ORDER BY 2 ASC
LIMIT 2;

SELECT staff_id,
SUM(amount),
COUNT(staff_id)
FROM payment
WHERE amount > 0
GROUP BY staff_id
LIMIT 2;