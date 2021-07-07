-- Create table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student;

-- Delete table
DROP TABLE student;

-- Create table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

-- Add new column
ALTER TABLE student ADD gpa DECIMAL(3, 2);

-- Delete column
ALTER TABLE student DROP COLUMN gpa;
