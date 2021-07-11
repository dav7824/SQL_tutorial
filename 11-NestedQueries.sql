/* Database created in 06-CreateDatabase.sql needed */

/* Start from inner queries to outer */

-- Find names of all employees who have sold over 30,000 to
-- a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);

-- Find all clients who are handled by the branch that Michael
-- Scott manages (assume you know Michael's ID)
SELECT client.client_name
FROM client
WHERE client.branch_id = (  -- "=" only accepts 1 value
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1  -- Ensure only 1 value returned
);
