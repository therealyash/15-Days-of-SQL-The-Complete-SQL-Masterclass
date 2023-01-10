-- Replace value of null - COALSCE & CAST

SELECT 
rental_date,
COALESCE(CAST(return_date AS VARCHAR), 'not returned')
FROM rental
ORDER BY rental_date DESC