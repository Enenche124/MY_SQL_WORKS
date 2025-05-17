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
(1, "OYEDEPO", "THE POWER OF WEALTH", 99.55, "2002-11-17", 3),
(2, "ENENCHE", "THE HUMAN MENTALITY", 77.49, "2009-02-20", 2);

SELECT * FROM books;