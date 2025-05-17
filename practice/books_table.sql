DROP DATABASE my_learning_db;
CREATE DATABASE my_learning_db;
USE my_learning_db;

CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT ,
grade CHAR(1)
);

INSERT INTO students (id, name, age, grade) VALUES
(1, "John", 22, 'A'),
(2, "Mike", 21, 'B'),
(3, "Niko", 20, 'A'),
(4, "Moses", 29, 'C');

SELECT * FROM students;

USE my_learning_db;
CREATE TABLE books (
id INT PRIMARY KEY,
author VARCHAR(100),
title VARCHAR(100),
price FLOAT,
published_date DATE,
is_available BOOLEAN
);

INSERT INTO books(id, author, title, price, published_date, is_available) VALUES
(1, "OYEDEPO", "THE POWER OF WEALTH", 99.55, "2002-11-17", 1),
(2, "ENENCHE", "THE HUMAN MENTALITY", 77.49, "2009-02-20", 1);

SELECT * FROM books;
SHOW TABLES;
DESCRIBE books;
SELECT *
FROM books
WHERE price < 80
AND is_available = 1;

UPDATE books
SET is_available = 0
WHERE id = 2;
INSERT INTO books(id,author, title, price, published_date, is_available)VALUES
(3, "Chinua Achebe", "THINGS FALL APART", 40.00, "2015-02-23", 1);

SELECT *
FROM books
WHERE price != 0
AND is_available = 1;

DELETE FROM books
WHERE id = 1;

SELECT *
FROM books
WHERE title LIKE '%power%';

SELECT *
FROM students
WHERE age > 21;

SELECT *
FROM books
WHERE published_date > "2010--01-01";

SELECT name FROM students
WHERE grade = 'A';

SELECT title, author FROM books
WHERE is_available = 0;

SELECT grade, COUNT(*) AS num_student
FROM students
GROUP BY grade;

SELECT * FROM books
ORDER BY price DESC
LIMIT 1;

SELECT AVG(price) AS avg_price
FROM books;
INSERT INTO books(id,author, title, price, published_date, is_available)VALUES
(4, "Olamilekan", "Lovers", 96.99, "2013-05-26", 1 );

SELECT * FROM books
WHERE author LIKE 'o%';

SELECT title,
	CASE
		WHEN is_available = 1 THEN "AVAILABLE"
		ELSE "NOT AVAILABLE"
	END AS status
FROM books;

SELECT * FROM students
WHERE LENGTH(name) = 4;

SELECT * FROM books
WHERE price > 80
AND is_available = 1;

SELECT * FROM students
WHERE grade IN('B', 'C');

SELECT COUNT(*) AS num_books
FROM books
WHERE published_date < "2010-01-01";

SELECT * FROM students
ORDER BY age ASC
LIMIT 1;












