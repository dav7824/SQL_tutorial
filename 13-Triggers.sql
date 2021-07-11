/* Database created in 06-CreateDatabase.sql needed */

CREATE TABLE trigger_test (
    message VARCHAR(100)
);

/* Example 1 */
DELIMITER $$  -- Change the ending delimiter of the commands
CREATE  -- Define trigger
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('Added new employee');
    END$$
DELIMITER ;  -- Change the delimiter back to default

/* Example 2 */
DELIMITER $$
CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

/* Example 3 */
DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('Added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('Added female employee');
        ELSE
            INSERT INTO trigger_test VALUES('Added other employee');
    END$$
DELIMITER ;


/* Test the trigger */
INSERT INTO employee
VALUES( 109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3 );

SELECT * FROM trigger_test;


/* Drop trigger */
DROP TRIGGER my_trigger;
