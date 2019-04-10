Table - person

Create Table person(
  id SERIAL primary key,
  name VARCHAR(255), 
  age INT, 
  height INT, 
  city VARCHAR(255), 
  favorite_color VARCHAR(255)
  );

  INSERT INTO person (name, age, height, city, favorite_color)
  VALUES ('Sam', 3, 70, 'Grapevine', 'yellow'),
  ('Elisabeth', 32, 120, 'Rainbowcity', 'gold'),
  ('Unicorn Bill', 99, 800, 'Poundtown',    'dirt brown'),
  ('Harry', 40, 59, 'Dallas', 'blue'),
  ('cat', 0, 10, 'Meowtown', 'blood red');

  SELECT * FROM person ORDER BY height DESC;

  SELECT * FROM person ORDER BY height ASC;

  SELECT * FROM person ORDER BY age DESC;

  SELECT * FROM person WHERE age >20;

  SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'red';

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person WHERE favorite_color = 'orange' AND favorite_color != 'green';

SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');



Table - orders

CREATE TABLE orders (
  ID SERIAL primary key,
  person_id INT, 
  product_name VARCHAR(255), 
  product_price FLOAT, 
  quantity INT
  )

INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
(25, 'cat food', 12.48, 2),
(14, 'sushi', 19.99, 5),
(12, 'special soap', 99.23, 80),
(25, 'pickles', 3.40, 1),
(12, 'special salt', 102.00, 4)

SELECT * FROM orders

SELECT sum(quantity) FROM orders

SELECT sum(product_price) * sum(quantity) FROM orders

SELECT sum(product_price) * sum(quantity) FROM orders WHERE person_id = 12



Table - artist

INSERT INTO artist(name)
VALUES ('Korn'),('Middle School Choir'), ('Parry Grip'), ('Kids Bop'), ('Birdschirping')

SELECT * FROM artist ORDER BY name DESC LIMIT 10

SELECT * FROM artist ORDER BY name ASC LIMIT 5

SELECT * FROM artist WHERE name ILIKE 'black%'

SELECT * FROM artist WHERE name ILIKE '%black%'



Table - employee

SELECT first_name, last_name FROM employee WHERE city = 'Calgary'

SELECT max(birth_date) FROM employee

SELECT min(birth_date) FROM employee

SELECT * FROM employee WHERE reports_to = 2

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge'



Table - invoice

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'

SELECT MAX(total) FROM invoice

SELECT MIN(total) FROM invoice

SELECT * FROM invoice WHERE total > 5

SELECT COUNT(*) FROM invoice WHERE total < 5

SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ')

SELECT AVG(total) FROM invoice

SELECT SUM(total) FROM invoice