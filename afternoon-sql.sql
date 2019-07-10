-- #1
CREATE TABLE person(
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  age INTEGER,
  height INTEGER,
  city VARCHAR(200),
  favorite_color VARCHAR(200)
)

-- #2
INSERT INTO person(name, age, height, city, favorite_color)
values
('Splinter', '69', '120', 'New York City', 'Green'),
('Leonardo', '17', '95', 'Sewer City', 'Blue'),
('Donatello', '16', '90', 'Soho', 'Purple'),
('Rafael', '15', '100', 'Ooze City', 'Red'),
('Michelangelo', '14', '93', 'Pizza City', 'Orange');

-- #3

select * from person
ORDER BY height DESC;

-- #4

SELECT * FROM person
ORDER BY height ASC;

-- #5

SELECT * FROM person
ORDER BY age DESC;

-- #6

SELECT * FROM person
WHERE age > 20;

-- #7

SELECT * FROM person
WHERE age = 18;

-- #8

SELECT * FROM person
WHERE age < 20 OR >30;

-- #9

SELECT * FROM person
WHERE age != 27;

-- #10

SELECT * FROM person 
WHERE favorite_color != 'red';

-- #11

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- #12

SELECT * FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- #13

SELECT * FROM person 
WHERE favorite_color IN ( 'orange', 'green', 'blue' );

-- #14

SELECT * FROM person 
WHERE favorite_color IN ( 'yellow', 'purple' );

-- Table - orders
-- #1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);

-- #2
INSERT INTO orders(person_id, product_name, product_price, quantity) 
VALUES 
('1', 'potato', '1.99', '200'),
('2', 'cauliflower', '5.99', '2')
('2', 'onion', '2.99', '6')
('1', 'broccoli', '3.00', '3')
('3', 'pizza', '0.99', '4')

-- #3
SELECT * FROM orders;

-- #4
SELECT SUM(product_price * quantity) FROM orders;

-- #5
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

-- Table - artist
-- #1
INSERT INTO artist(name)
VALUES
('Kate McKinnon'),
('Meryl Streep'),
('Keanu Reeves');

-- #2
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

-- #3
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

-- #4
SELECT * FROM artist 
WHERE name LIKE 'Black%';

-- #5
SELECT * FROM artist 
WHERE name LIKE '%Black%';

-- Table - employee
-- #1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- #2
SELECT MAX(birth_date) from employee;

-- #3
SELECT MIN(birth_date) from employee; 

-- #4
SELECT * FROM employee 
WHERE reports_to = 2;

-- #5
SELECT COUNT(*) FROM employee 
WHERE city = 'Lethbridge';

-- Table - invoice
-- #1
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

-- #2
SELECT MAX(total) FROM invoice;

-- #3
SELECT MIN(total) FROM invoice;

-- #4
SELECT * FROM invoice 
WHERE total > 5;

-- #5
SELECT COUNT(*) FROM invoice 
WHERE total < 5;

-- #6
SELECT COUNT(*) FROM invoice 
WHERE billing_state in ('CA', 'TX', 'AZ');

-- #7
SELECT AVG(total) FROM invoice;

-- #8
SELECT SUM(total) FROM invoice;
