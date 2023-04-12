Use saklia;

-- 1. Drop column picture from staff
ALTER TABLE staff
DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER WHERE first_name = 'Tammy';

SELECT * FROM staff;

SELECT * FROM staff WHERE first_name = 'Jon';

INSERT INTO staff (first_name, last_name, address_id, email, store_id, username, password)
VALUES ('TAMMY', 'SANDERS', 79, 'Tammy.Sanders@sakilastaff.com', 2, 'Tammy', 'password');

SELECT * FROM staff WHERE first_name = 'Tammy';

-- 3.Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. 

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER'; -- customer_id = 130

SELECT staff_id FROM sakila.staff
WHERE first_name = 'Mike' AND last_name = 'Hillyer'; -- staff_id= 1

SELECT film_id FROM film
WHERE title = 'Academy Dinosaur';  -- film_id = 1

SELECT i.inventory_id, f.title, s.store_id
FROM inventory i
JOIN store s ON i.store_id = s.store_id
JOIN film f ON i.film_id = f.film_id
WHERE s.store_id = 1 AND f.title = 'Academy Dinosaur';

SELECT * FROM rental;


INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, return_date)
VALUES (NOW(), 1, 130, 1, NULL);

SELECT * FROM rental WHERE customer_id = '130' AND staff_id = 1 AND inventory_id = 1;





