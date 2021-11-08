-- Question 1
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3
SELECT film_id, COUNT (*) as total_films
FROM inventory
GROUP BY film_id
ORDER BY total_films DESC 
LIMIT 1;

-- Question 4
SELECT *
FROM customer
WHERE last_name = 'William';

-- Question 5
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id;

-- Question 6
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7
SELECT actor_id, COUNT() as num_films
FROM film_actor
GROUP BY actor_id
ORDER BY num_films DESC
LIMIT 1;

-- Question 8
SELECT COUNT(*)
FROM customer 
WHERE store_id = 1 AND last_name LIKE '%es';

-- Question 9
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;

-- Question 10
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC;