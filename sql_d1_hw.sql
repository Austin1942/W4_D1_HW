-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wah%';





-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;





-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY (count) DESC;





-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name LIKE 'Will%';



-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id) 
FROM rental
GROUP BY staff_id;




-- 6. How many different district names are there?
SELECT DISTINCT district
FROM address;




-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
HAVING COUNT(actor_id) > 12;




-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name, store_id
FROM customer
GROUP BY last_name, store_id
HAVING last_name LIKE '%es'
ORDER BY store_id;







-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, COUNT(customer_id)
FROM payment
GROUP BY customer_id
HAVING customer_id > 250 and customer_id < 430;






-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT rating, count(rating)
FROM film
GROUP BY rating;
