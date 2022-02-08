-- Create Database  Queries 
CREATE DATABASE employee;
USE employee;
-- Create Table Queries
CREATE TABLE hobby(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  NAME VARCHAR(250)
);
CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  first_name VARCHAR(250), 
  last_name VARCHAR(250), 
  age TINYINT(3), 
  mobile_number VARCHAR(17), 
  address VARCHAR(250)
);
CREATE TABLE employee_salary(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  salary DECIMAL(7, 2), 
  salary_date DATE, 
  fk_employee_id INT, 
  FOREIGN KEY (fk_employee_id) REFERENCES employee(id)
);
CREATE TABLE employee_hobby(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  fk_employee_id INT, 
  fk_hobby_id INT, 
  FOREIGN KEY (fk_employee_id) REFERENCES employee(id), 
  FOREIGN KEY (fk_hobby_id) REFERENCES hobby(id)
);
-- Insert Data Queries
INSERT INTO hobby (NAME) 
VALUES 
  ('Bike Riding');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Singing');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Reading');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Walking');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Travelling');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Playing Indoor Games');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Playing Outdoor Games');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Watching Movies');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Listening Music');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Coding');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Car Driving');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Shooping');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Friends gathering');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Playing Games In PC');
  
INSERT INTO hobby (NAME) 
VALUES 
  ('Playing Games In Mobile');
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Tom', 'Tom', 18, 999999994, 'Naroda'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Jerry', 'Ederson', 18, 949956999, 
    'Nigam'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Sam', 'Cruis', 18, 994995999, 'Maninagar'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Harry', 'Sam', 18, 999994959, 'Bapunagar'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'David', 'Gutta', 18, 999995399, 'Vasna'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'John', 'Mathew', 18, 999999994, 'Naroda'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Jim', 'Parker', 18, 949956999, 'Nigam'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Sophia', 'Ran', 18, 994995999, 'Maninagar'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Wendi', 'Blake', 18, 999994959, 'Bapunagar'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Stephan', 'Lai', 18, 999995399, 'Vasna'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Fay', 'Van Damme', 18, 999999994, 
    'Naroda'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Brevin', 'Dice', 18, 949956999, 'Nigam'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Regina', 'Oleveria', 18, 994995999, 
    'Maninagar'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Susan', 'Evers', 18, 999994959, 'Bapunagar'
  );
  
INSERT INTO employee (
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Patty', 'Wonder', 18, 999995399, 'Vasna'
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '1'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '2'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '3'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '4'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '5'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '6'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '7'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '8'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '9'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '10'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '11'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '12'
    )
  );
  
INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '13'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '14'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-11-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '15'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '1'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '2'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '3'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '4'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '5'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '6'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '7'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '8'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '9'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '10'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '11'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '12'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '13'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '14'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2008-12-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '15'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '1'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '2'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '3'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '4'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '5'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '6'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '7'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '8'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '9'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '10'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '11'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '12'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    10000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '13'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '14'
    )
  );

INSERT INTO employee_salary (
  salary, salary_date, fk_employee_id
) 
VALUES 
  (
    15000, 
    '2009-01-11', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '15'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '1'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '14'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '2'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '15'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '3'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '11'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '4'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '13'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '5'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '12'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '6'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '10'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '7'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '3'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '8'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '9'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '9'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '4'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '10'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '7'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '11'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '8'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '12'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '2'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '13'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '1'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '14'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '9'
    )
  );

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '15'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '3'
    )
  );
-- Update Data Queries
UPDATE 
  hobby 
SET 
  NAME = 'Coding' 
WHERE 
  NAME = 'riding';

UPDATE 
  employee 
SET 
  last_name = 'Addy' 
WHERE 
  address = 'Bapunagar';

UPDATE 
  employee_salary 
SET 
  salary = 15000, 
  salary_date = '2008-12-11' 
WHERE 
  id = 2;

UPDATE 
  employee_hobby 
SET 
  id =(
    SELECT 
      id 
    FROM 
      hobby 
    WHERE 
      NAME = 'Coding'
  ) 
WHERE 
  id = 1;
-- Delete Data Queries
DELETE FROM 
  employee 
LIMIT 
  2;

DELETE FROM 
  employee_salary 
LIMIT 
  2;

DELETE FROM 
  employee_hobby 
LIMIT 
  2;

DELETE FROM 
  hobby 
LIMIT 
  2;
-- Truncate Table Queries
TRUNCATE TABLE hobby;
TRUNCATE TABLE employee_salary;
TRUNCATE TABLE employee_hobby;
TRUNCATE TABLE employee;
-- Select All Data Queries
SELECT 
  * 
FROM 
  hobby;

SELECT 
  * 
FROM 
  employee;

SELECT 
  * 
FROM 
  employee_hobby;

SELECT 
  * 
FROM 
  employee_salary;
-- Create a select query to get  employee name, his/her employee_salary 
SELECT 
  DISTINCT e.first_name AS NAME, 
  es.salary AS salary 
FROM 
  employee AS e, 
  employee_salary AS es 
WHERE 
  e.id = es.fk_employee_id;
-- select single query to get all employee name, all hobby_name in single column 
SELECT 
  e.first_name AS NAME 
FROM 
  employee AS e 
UNION ALL 
SELECT 
  h.NAME AS hobby 
FROM 
  hobby AS h;
-- Get employee name, total salary of employee, hobby name(comma-separated - you need to use subquery for hobby name)
SELECT 
  CONCAT(
    eout.first_name, ' ', eout.last_name
  ) AS emp_Name, 
  SUM(es.salary) AS salary, 
  (
    SELECT 
      GROUP_CONCAT(NAME SEPARATOR ' , ') 
    FROM 
      employee_hobby eh 
      LEFT JOIN hobby h ON h.id = eh.fk_hobby_id 
    WHERE 
      eout.id = eh.fk_employee_id
  ) AS hobby 
FROM 
  employee eout 
  LEFT JOIN employee_salary es ON eout.id = es.fk_employee_id 
GROUP BY 
  eout.id;
