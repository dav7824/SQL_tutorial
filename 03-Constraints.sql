/* Constraints */
-- Create table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');  -- Error! (null name)
INSERT INTO student VALUES(4, 'Jack', 'Biology');  -- Error! (duplicated major)
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;

DROP TABLE student;


/* Default value */
-- Create table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

INSERT INTO student(student_id, name) VALUES(1, 'Jack');

SELECT * FROM student;

DROP TABLE student;


/* Auto increment */
-- Create table
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');

SELECT * FROM student;
