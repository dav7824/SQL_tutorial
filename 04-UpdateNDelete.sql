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

-- Update entries
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided',
WHERE student_id = 1;

UPDATE student
SET major = 'undecided';  -- Applied to all entries


-- Delete entries
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

DELETE FROM student;  -- Delete all entries

/* Comparison operators:
= : equals
<> : not equals
> : greater than
< : less than
>= : greater than or equal
< : less than or equal
*/

SELECT * FROM student;
