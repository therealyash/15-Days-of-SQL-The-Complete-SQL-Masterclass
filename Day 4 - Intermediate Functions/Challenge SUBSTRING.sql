/*
You need to create an anonymized form of all email
addresses in the following way:
M***.S***@saikilacustomer.org

In the second query create  an anonymized form of
the email addresses in the following way:
***Y.S***@saikilacustomer.org
*/

SELECT
email,
LEFT(email,1) 
|| '***' 
|| SUBSTRING(email from POSITION('.' IN email) for 2) 
|| '***' 
|| SUBSTRING(email from POSITION('@' IN email))
FROM customer;

SELECT
'***'
|| SUBSTRING(email from POSITION('.' IN email) -1 for 3)
|| '***'
|| SUBSTRING(email from POSITION('@' IN email))
FROM customer;


