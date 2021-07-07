-- Create table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, 'Claire', 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT *
FROM student;

SELECT name
FROM student;

SELECT name, major
FROM student;

SELECT student.name, student.major
FROM student;

SELECT student.name, student.major
FROM student
ORDER BY name;  -- Show in ascending order
/* ORDER BY name ASC; */  -- Equivalent

SELECT student.name, student.major
FROM student
ORDER BY name DESC;  -- Show in descending order

SELECT *
FROM student
ORDER BY major, student_id;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT name, major
FROM student
WHERE major  = 'Biology' OR name = 'Kate';

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

SELECT *
FROM student
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;
