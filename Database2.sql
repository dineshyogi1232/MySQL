-- Create Database
CREATE DATABASE qdev;
USE qdev;

-- Create Table Queries
CREATE TABLE job(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(250),
  min_salary DECIMAL(7, 2),
  max_salary DECIMAL(7, 2)
) AUTO_INCREMENT = 101;

CREATE TABLE country(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(250)
);

CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(250),
  fk_country_id INT,
  FOREIGN KEY (fk_country_id) REFERENCES country(id)
);

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstname VARCHAR(250),
  lastname VARCHAR(250),
  email VARCHAR(250),
  salary DECIMAL(7, 2),
  fk_department_id INT,
  fk_job_id INT,
  FOREIGN KEY (fk_department_id) REFERENCES department(id),
  FOREIGN KEY (fk_job_id) REFERENCES job(id)
) AUTO_INCREMENT = 101;

-- Insert job table Queries
INSERT INTO
  job (NAME, min_salary, max_salary)
VALUES
  ('Developer', 10000, 100000);

INSERT INTO
  job (NAME, min_salary, max_salary)
VALUES
  ('TL', 12000, 50000);

INSERT INTO
  job (NAME, min_salary, max_salary)
VALUES
  ('DBA', 15000, 70000);

INSERT INTO
  job (NAME, min_salary, max_salary)
VALUES
  ('QA', 10000, 50000);

INSERT INTO
  job (NAME, min_salary, max_salary)
VALUES
  ('Mentor', 20000, 100000);

INSERT INTO
  job (NAME, min_salary, max_salary)
VALUES
  ('Network Engineer', 20000, 100000);
  
-- Insert country table Queries
INSERT INTO
  country(NAME)
VALUES
  ("India");

INSERT INTO
  country(NAME)
VALUES
  ("Albania");

INSERT INTO
  country(NAME)
VALUES
  ("Algeria");

INSERT INTO
  country(NAME)
VALUES
  ("Andorra");

INSERT INTO
  country(NAME)
VALUES
  ("Bahamas");

-- Insert department table Queries
INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Desktop Support", 1);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Systems Engineering", 2);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Network Engineering", 3);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Project Management", 4);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Development", 5);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Desktop Support", 4);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Systems Engineering", 4);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Network Engineering", 5);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Project Management", 1);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Development", 2);

INSERT INTO
  department(NAME, fk_country_id)
VALUES
  ("Development", 3);
  
-- Insert employee table Queries
INSERT INTO
  employee(
    firstname,
    lastname,
    email,
    salary,
    fk_department_id,
    fk_job_id
  )
VALUES
  (
    "John",
    "Mathew",
    "John.Mathew@xyz.com",
    10000,
    2,
    106
  );

INSERT INTO
  employee(
    firstname,
    lastname,
    email,
    salary,
    fk_department_id,
    fk_job_id
  )
VALUES
  (
    "Jim",
    "Parker",
    "Jim.Parker@xyz.com",
    15000,
    3,
    104
  );

INSERT INTO
  employee(
    firstname,
    lastname,
    email,
    salary,
    fk_department_id,
    fk_job_id
  )
VALUES
  (
    "Sophia",
    "Ran",
    "Sophia.Ran@xyz.com",
    8000,
    5,
    106
  );

INSERT INTO
  employee(
    firstname,
    lastname,
    email,
    salary,
    fk_department_id,
    fk_job_id
  )
VALUES
  (
    "Wendi",
    "Blake",
    "Wendi.Blake@xyz.com",
    12500,
    1,
    102
  );

INSERT INTO
  employee(
    firstname,
    lastname,
    email,
    salary,
    fk_department_id,
    fk_job_id
  )
VALUES
  (
    "Stephan",
    "Lai",
    "Stephan.Lai@xyz.com",
    10500,
    4,
    101
  );
  
-- 1. get name (firstname + lastname) with department name, country name, job name
SELECT
  emp.id AS employeeid,
  CONCAT(emp.firstname, " ", emp.lastname) AS emp_name,
  dept.name AS dept_name,
  j.name AS designation,
  c.name AS country_name
FROM
  employee AS emp
  LEFT JOIN job AS j ON emp.fk_job_id = j.id
  LEFT JOIN department AS dept ON dept.id = emp.fk_department_id
  LEFT JOIN country AS c ON dept.fk_country_id = c.id
GROUP BY
  emp.id;
  
-- 2. Get 2nd highest salary of the employee
SELECT
  MAX(salary)
FROM
  employee
WHERE
  salary NOT IN (
    SELECT
      MAX(salary)
    FROM
      employee
    WHERE
      salary
  );
  
-- 3. Get all job name and department name in single query
SELECT
  NAME AS job
FROM
  job
UNION ALL
SELECT
  NAME AS department
FROM
  department;
