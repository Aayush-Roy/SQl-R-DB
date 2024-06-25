CREATE DATABASE college;
USE college;
CREATE TABLE teacher
(
id INT PRIMARY KEY,
name VARCHAR(30),
subject VARCHAR(30),
salary INT
);
INSERT INTO teacher
(id,name,subject,salary)
VALUES
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);
SELECT name , salary FROM teacher where salary >= 55000;
ALTER TABLE teacher CHANGE COLUMN salary  ctc INT;
SELECT * FROM teacher
WHERE ctc >55000;
UPDATE teacher SET ctc = ctc + ctc * 0.25;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE teacher ADD COLUMN city VARCHAR(30) DEFAULT "GURGAON";
SELECT * FROM teacher;
ALTER TABLE teacher DROP COLUMN ctc;
