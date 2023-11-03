CREATE DATABASE clg;

CREATE TABLE student2(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student2 (rollno, name, marks, grade, city) 
VALUES
(101, 'ANIL', 78, 'C', 'PUNE'),
(102, 'BHUMIKA', 93, 'A', 'MUMBAI'),
(103, 'CHETAN', 85, 'B', 'MUMBAI'),
(104, 'DHRUN', 93, 'A', 'DELHI'),
(105, 'EMANUAL', 12, 'F', 'DELHI'),
(106, 'FARAH', 82, 'B', 'DELHI');

SELECT MAX(marks) FROM student2;
SELECT MIN(grade) FROM student2;
SELECT COUNT(city) FROM student2;

SELECT city
FROM student2 
GROUP BY city;

SELECT city, count(marks)
FROM student2 
GROUP BY city;