-- Display all available tables in the Sakila database.

USE sakila;
SHOW tables;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name as language FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) as Number_of_stores FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) as Number_of_employees FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT(film_id)) as available_for_rent FROM inventory;
SELECT COUNT(DISTINCT(inventory_id)) as rented FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT(last_name)) FROM actor;

-- Retrieve the 10 longest films.
SELECT MAX(length) FROM film;
-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = "SCARLETT";
-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM film WHERE special_features LIKE '%Behind the Scenes%';