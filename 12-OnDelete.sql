/* Database created in 06-CreateDatabase.sql needed */

/* ON DELETE SET NULL */

DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;  /* Corresponding branch.mgr_id becomes NULL! */

SELECT * FROM employee;  /* Corresponding employee.super_id becomes NULL! */


/* ON DELETE CASCADE */

DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;  /* Corresponding branch_supplier entries are deleted! */

/* Comment:
   Motivation for using ON DELETE CASCADE in branch_supplier.branch_id foreign key is
   that branch_supplier.branch_id is also a part of primary key of branch_supplier table.
*/
