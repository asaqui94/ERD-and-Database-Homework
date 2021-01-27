CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age INTEGER 
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	rating VARCHAR(5),
	showing VARCHAR(50)
);

CREATE TABLE concession(
	item_id SERIAL PRIMARY KEY,
	item_type VARCHAR(100),
	item_name VARCHAR(100),
	amount NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_type VARCHAR(50),
	movie_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);



INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age
) VALUES (
	1,
	'Arpi',
	'Saqui',
	26
);
DELETE FROM customer
WHERE customer_id = 1;

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age
) VALUES (
	1,
	'Arpi',
	'Saqui',
	26
),
(
	2,
	'Jen',
	'Sierra',
	32
),
(
	3,
	'Katherine',
	'Sierra',
	28
),
(
	4,
	'Surena',
	'Arvash',
	26
),
(
	5,
	'Nas',
	'Raq',
	25
);

ALTER TABLE movie
ADD movie_name VARCHAR(150);

INSERT INTO movie(
	movie_id,
	rating,
	showing,
	movie_name
) VALUES (
	1,
	'R',
	'Evening',
	'Scream'
),
( 
	2,
	'PG-13',
	'Evening',
	'The Conjuring'
),
(
	3,
	'PG',
	'Morning',
	'Wall-E'
),
(
	4,
	'PG-13',
	'Afternoon',
	'Omar'
),
(
	5,
	'PG'
	'Morning',
	'Coco'
),
(
	6,
	'PG-13',
	'Afternoon',
	'Mean Girls'
);

INSERT INTO concession(
	item_id,
	item_type,
	item_name,
	price,
	customer_id
) VALUES (
	1,
	'Drink',
	'Soda',
	3.00,
	3
),
(
	2,
	'Food',
	'Popcorn',
	5.00,
	3
),
(
	3,
	'Food',
	'Candy',
	4.00,
	2
),
(
	4,
	'Drink',
	'Water',
	1.00,
	4
);

INSERT INTO ticket(
	ticket_id,
	ticket_type,
	movie_id,
	customer_id
) VALUES (
	001,
	'Adult',
	3,
	2
),
(
	002,
	'Adult',
	3,
	3
),
(
	003,
	'Child',
	3,
	5
);
