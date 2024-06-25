CREATE DATABASE student;
USE student;
CREATE TABLE info
(
id INT PRIMARY KEY,
name VARCHAR(30),
city VARCHAR(30),
marks INT
);
INSERT INTO info VALUES
(110,"aayush","DELHI",77),
(108,"aman","MUMBAI",67),
(111,"abhishek","PUNE",55),
(112,"anuj","PUNE",77);
SELECT * FROM info WHERE marks > 70;
SELECT city FROM info GROUP BY city;
SELECT city, max(marks) FROM info GROUP BY city;
SELECT avg(marks) FROM info;
ALTER TABLE info 
ADD COLUMN grade VARCHAR(2);

UPDATE info
SET grade = "O"
WHERE marks >= 80;

UPDATE info 
SET grade = "A"
WHERE marks >=70 AND marks < 80;

UPDATE info
SET grade = "B"
WHERE marks >=60 AND marks <70;

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM info;
