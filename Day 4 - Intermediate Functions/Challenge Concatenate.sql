/*
You need to create an anonymized version of the 
email address.
MARY.SMITH@sakilacustomer.org -> M***@sakilacustomer.org
It should be the first character followed by '***' and
the last part starting with '@'.
Note the email address always ends with '@sakilacustomer.org'
*/

SELECT 
LEFT(email,1) ||'***' || RIGHT(email,19) AS anonymized_email
FROM customer