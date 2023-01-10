/*
You need to find out how many tickets you have sold in the 
following categories:
Low price ticket: total_amount < 2000
Mid Price ticket: total_amount between 20000 & 150000
High Price ticket: total_amount >= 150000

How many high price tickets have you sold?
*/

SELECT 
COUNT(*) as flights,
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
WHEN EXTRACT (month from scheduled_departure) <= 5 THEN 'Spring'
WHEN EXTRACT (month from scheduled_departure) <= 8 THEN 'Summer'
ELSE 'Fall' 
END as season
FROM flights
GROUP BY season;


/*
You need to find out how many  flights have departed in 
the following season:
Winter: December, January, February
Spring: March, April, May
Summer: June, July, August
Fall: September, October, November
*/

SELECT
COUNT(*) AS tickets,
CASE 
WHEN total_amount < 20000 THEN 'low price ticket'
WHEN total_amount < 150000 THEN 'mid price ticket'
ELSE 'high price ticket'
END as ticket_price
FROM bookings;

/*
You want to create a tier list in the following way:
1. Rating is 'PG' or 'PG-13' or length is more than 210 min:
	'Great Rating (tier 1)'
2. Description contains 'Drama' & length is more tha 90 min:
	'Long Drama (tier 2)'
3. Description contains 'Drama' & length is not more than 90 min:
	'Short Drama (tier 3)'
4. Rental_rate less than $1:
	'Very Cheap (tier 4)'
If 1 movie can be in multiple categories it gets the higher tier assigned.
*/

SELECT
title,
CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END as tier_list
FROM film
WHERE 
CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END is not null
