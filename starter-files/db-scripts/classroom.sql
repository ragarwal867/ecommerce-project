
# create database commands
CREATE DATABASE IF NOT EXISTS college;
USE college;

SET SQL_SAFE_UPDATES = 0;

#create table command
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);


INSERT INTO student
 (rollno, name, marks, grade, city)
VALUES
 (114, "Rumika", 56, "E", "Dehradun"); 
 

SELECT * 
FROM student
ORDER BY city ASC
LIMIT 4;

SELECT AVG(marks)
FROM student;

SELECT city, name, COUNT(name)
FROM student
GROUP BY city, name
ORDER BY city ASC;

SELECT city, AVG(marks)
FROM student
GROUP BY city;


SELECT grade, COUNT(rollno)
FROM student
GROUP BY grade;

SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING max(marks) > 90;

UPDATE student
SET grade = "O"
WHERE grade = "A";


UPDATE student
SET grade = "D"
WHERE marks BETWEEN 60 AND 70;

DELETE FROM student
WHERE city = "Kurnool";


ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;   

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);  

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student
CHANGE name first_name VARCHAR(30);

ALTER TABLE student
DROP COLUMN stu_age;

DELETE FROM student
WHERE marks < 70;

    
SELECT * FROM student;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(30),
    manager_id INT
);

INSERT INTO employee 
(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);

SELECT * FROM employee;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
WHERE a.id = b.manager_id;



SELECT first_name, marks
FROM student
ORDER BY marks DESC
LIMIT 3;

CREATE VIEW view1 AS
SELECT first_name, marks FROM student;






