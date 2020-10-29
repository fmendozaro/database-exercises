use codeup_test_db;
-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

INSERT INTO users (name, email, role_id) VALUES
('fer', 'fer@codeup.com', 2),
('douglas', 'douglas@codeup.com', 1),
('hannah', 'hannah@codeup.com', 4),
('daniel', 'daniel@codeup.com', null);

-- test inner join
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

-- left join

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

-- right join

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

-- Employees DB exercises

USE employees;

-- 2. Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate()
ORDER BY d.dept_name;


# 3. Find the name of all departments currently managed by women.
SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate() AND e.gender = 'F'
ORDER BY d.dept_name;

# SKIP UNTIL WE COVER group by
# 4. Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title as Title, count(titles.emp_no) as Count
FROM titles
         JOIN dept_emp de ON titles.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
WHERE
        titles.to_date > curdate() AND
        d.dept_name = 'Customer Service' AND
        de.to_date > curdate()
GROUP BY titles.title;


-- 5. Find the current salary of all current managers.
SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
    s.salary as Salary
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE dm.to_date > curdate() AND
        s.to_date > curdate()
ORDER BY d.dept_name;