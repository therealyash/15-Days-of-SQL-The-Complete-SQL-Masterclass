/*
You need to sum and group in the following formats:
Fri,24/01/2020
May, 2020
Thu, 02:44
*/

SELECT 
SUM(amount),
TO_CHAR(payment_date,'Dy,DD/MM/YYYY') AS date
FROM payment
GROUP BY date;

SELECT 
SUM(amount),
TO_CHAR(payment_date,'Month, YYYY') AS date
FROM payment
GROUP BY date;

SELECT 
SUM(amount),
TO_CHAR(payment_date,'Dy, HH:MM') AS date
FROM payment
GROUP BY date;
