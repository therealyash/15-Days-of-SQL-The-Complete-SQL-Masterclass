/*
In this challenge you have only the email address
and the last name of the customers.
You need to extract the first name from the email address
and concatenate it with the last name. It should be in the form:
"Last Name, First Name"
*/

SELECT 
last_name || ', ' || LEFT(email,POSITION('.' IN email)-1) AS name
FROM customer


