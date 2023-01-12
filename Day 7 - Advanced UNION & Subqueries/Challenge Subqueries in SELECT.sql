/*
Show all the payments together with how much 
the payment amount is below the maximum payment amount.
*/

SELECT *,
(SELECT MAX(amount) FROM payment)-amount AS difference
FROM payment