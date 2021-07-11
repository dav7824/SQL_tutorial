/* Database created in 06-CreateDatabase.sql needed */

-- % = any number of characters, _ = one character

-- Find any cilent who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

-- Find any employees born in October
SELECT *
FROM employee
WHERE birth_data LIKE '____-10%';
