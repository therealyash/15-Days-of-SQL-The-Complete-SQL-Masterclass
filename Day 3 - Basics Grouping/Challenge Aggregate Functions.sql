/*
Your manager wants to get a better understanding of the films.
That's why you're asked to write a query to see:
MINIMUM
MAXIMUM
AVERAGE(ROUNDED with 2 Decimals)
SUM
of the replacement cost of the films
*/

SELECT
MIN(replacement_cost),
MAX(replacement_cost),
ROUND(AVG(replacement_cost),2) AS average,
SUM(replacement_cost)
FROM film