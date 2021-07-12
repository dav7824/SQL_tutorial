/* Database created in 06-CreateDatabase.sql needed */

-- Find all employees
SELECT *
FROM employee;

-- Find all clients
SELECT *
FROM client;

-- Find all employees ordered by salary
SELECT *
FROM employee
ORDER BY salary;  /* Default: In ascending order */
-- ORDER BY salary DESC;  /* Listed in descending order */

-- Find all employees ordered by sex then name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

-- Find the first 5 employees in the table
SELECT *
FROM employee
LIMIT 5;

-- Find the first & last names of the employees
SELECT first_name, last_name
FROM employee;

-- Find the forenames & surnames of the employees (rephrase the column)
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all the different genders
SELECT DISTINCT sex
FROM employee;


/* FUNCTIONS */

SELECT COUNT(emp_id)
FROM employee;  -- Return 9, # of non-null emp_id

SELECT COUNT(super_id)
FROM employee;  -- Return 8, # of non-null super_id

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1970-01-01';

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- Find the average of all male employee's salaries
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

SELECT COUNT(sex)
FROM employee;  -- Return 9, # of entries with non-null sex

SELECT COUNT(sex), sex
FROM employee;
/* Return:
    COUNT(sex)    sex
    9             M
*/

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;
/* Return:
    COUNT(sex)    sex
    3             F
    6             M
*/

-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- Find the total sales to each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;
