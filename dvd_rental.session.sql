-- this is a COMMENT
-- Slecet all records from actor TABLE

--SELECT *
--FROM actor 
--LIMIT 25 OFFSET 5;

-- LIMIT says how many records to get

-- Querry for first name and last name
--SELECT first_name, last_name
--FROM actor;

-- Querry for the first name == nick
--SELECT first_name, last_name
--FROM actor
--WHERE first_name = 'Nick';---Nick is a value of string needs to be caps sens, strings must be in '' not ""

-- where name is nick but useing like
--SELECT first_name, last_name
--FROM actor
--WHERE first_name LIKE 'Nick';

--%is wild card
--SELECT first_name, last_name
--FROM actor
--WHERE first_name LIKE '%y%';

-- good search exsample
--SELECT first_name. last_name
--FROM actor
--WHERE first_name LIKE 'K__';--__ is equil to any 2 letters after K

-- for all first names that start with K and end with THE
--SELECT first_name,last_name
--FROM actor
--WHERE first_name LIKE 'K__%th';

-- comarison operators:
-->, <, >=, <>-[no equals]
-- the payment tables payments who paid in greater then 2$

--SELECT *
--FROM payment

--SELECT customer_id,amount
--FROM payment
--WHERE amount > 2.00;

-- less then 7.99$
--SELECT customer_id, amount
--FROM payment
--WHERE amount < 7.99;

--less then or = to 7.99$
--SELECT customer_id, amount
--FROM payment
--WHERE amount <= 7.99;-- >= is greater or equal to

----------------------order by amout
--SELECT customer_id, amount
--FROM payment
--WHERE amount >= 2.00;
--ORDER BY amount;
-- --------------------DESC starts with highest number


--SELECT customer_id, amount
--FROM payment
--WHERE amount BETWEEN 2.00 AND 7.99;

--SELECT customer_id, amount
--FROM payment
--WHERE amount <> 0.00
--ORDER BY amount DESC;


------------------SQL aggregations SUM, AVG, COUNT, MIN, MAX

------------------Quarry to display sum, min, count, avg of the amounts paid that are greater than 5.99

--SELECT SUM(amount)
--FROM payment
--WHERE amount > 5.99;

--SELECT AVG(amount)
--FROM payment
--WHERE amount > 5.99;

--SELECT COUNT(amount)
--FROM payment
--WHERE amount > 5.99;

--SELECT SUM(DISTINCT amount)
--FROM payment
--WHERE amount > 5.99;

--SELECT MIN(amount) AS Min_num_payments
--FROM payment
--WHERE amount > 5.99;

--SELECT MAX(amount)
--FROM payment
--WHERE amount > 5.99;

--------------------- Group by FUNCTION-----
--SELECT amount, COUNT(amount)
--FROM payment
--GROUP BY amount
--ORDER BY amount;

--SELECT customer_id, SUM(amount)
--FROM payment
--GROUP BY customer_id
--ORDER BY customer_id

--SELECT customer_id, amount
--FROM payment
--GROUP BY amount, customer_id
--ORDER BY customer_id DESC;


--DQL Kitchen sink
--SELECT COUNT(customer_id), email
--FROM customer
--WHERE email LIKE 'j__.w%'
--GROUP BY email
--HAVING COUNT(customer_id) > 0
--ORDER BY email
--LIMIT 10 OFFSET 2;