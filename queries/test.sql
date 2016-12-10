SELECT concat('Teaching people to code for ', (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')), ' seconds');
SELECT concat('Teaching people to code for ', (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 60, ' minutes');
SELECT concat('Teaching people to code for ', (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 360, ' hours');

SELECT COUNT(
    DISTINCT first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SHOW TABLES;
DESCRIBE salaries;
SELECT *
FROM salaries;

SELECT (unix_timestamp() - unix_timestamp(hire_date)) / (60 * 60 * 24 * 365)
FROM employees;

SELECT count(*)
FROM employees
WHERE gender = 'M';
SELECT count(*)
FROM employees
WHERE gender = 'F';

SELECT
  COUNT(first_name),
  first_name,
  last_name
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name, last_name
ORDER BY count(first_name) DESC;

SELECT COUNT(DISTINCT first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT DISTINCT first_name
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT *
FROM employees
WHERE first_name = 'Yonghong' AND last_name = 'Codenie';

SHOW TABLES;

DESCRIBE salaries;

SELECT *
FROM salaries;

SELECT AVG(from_date)
FROM salaries;

SHOW TABLES;


SELECT concat(
    (SELECT DATEDIFF(curdate(), '2016-11-08') + 1)
    , ' ', 'Days');

SELECT DATEDIFF(curdate(), '2016-11-08') AS Days;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;


SELECT
  e.emp_no AS 'id from employees',
  s.emp_no AS 'Emp_no from salaries'
FROM employees AS e, salaries AS s
WHERE e.first_name
      LIKE '%qu%'
LIMIT 1000;


SELECT
  emp_no AS 'id from employees',
  emp_no AS 'Emp_no from salaries'
FROM employees AS e, salaries AS s
WHERE e.first_name
      LIKE '%qu%';

SELECT
  employees.*,
  salaries.*
FROM employees, salaries
WHERE employees.emp_no = 10010
LIMIT 100

SELECT count(*)
FROM salaries;

SELECT employees.emp_no
FROM employees;

DESCRIBE employees;
DESCRIBE salaries;


SELECT *
FROM dept_emp
WHERE emp_no = '10010';
SELECT *
FROM dept_manager;


USE codeup_test_db;

CREATE TABLE quotes (
  id      INT          NOT NULL AUTO_INCREMENT,
  author  VARCHAR(50)  NOT NULL,
  content VARCHAR(240) NOT NULL,
  PRIMARY KEY (id)
);

SHOW TABLES;
USE codeup_test_db;

DESCRIBE quotes;

ALTER TABLE quotes
  ADD UNIQUE (content);

CREATE TABLE authors (
  id         INT          NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name  VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (first_name, last_name)
);

DESCRIBE authors;

DESCRIBE albums;

ALTER TABLE albums
  ADD UNIQUE (name, artist);

INSERT INTO albums (artist, name, release_date, sales, genre) VALUES ('Fer', 'My Second Album', 2016, 0, 'Folk');

#how can i get the last inserted record?

USE join_test_db;

SELECT *
FROM users u
  JOIN roles r ON u.role_id = r.id
SELECT *
FROM users;
SELECT *
FROM roles;

DESCRIBE users;
DESCRIBE roles;


SELECT
  u.name,
  r.name
FROM users u
  JOIN roles r ON r.id = u.role_id;

-- select * from albums order by id desc limit 1;


SELECT
  first_name,
  last_name,
  birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
);

SELECT
  first_name,
  last_name,
  birth_date
FROM employees e
  JOIN dept_manager dm ON dm.emp_no = e.emp_no;
