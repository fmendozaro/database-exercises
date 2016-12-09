SELECT
  count(*) AS 'Count',
  gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT concat(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

SELECT
  *,
  datediff(curdate(), hire_date) AS 'DaysWorking'
FROM employees
WHERE birth_date LIKE '%-12-25'
      AND hire_date LIKE '199%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name;

SELECT
  count(*) AS 'repeats',
  first_name,
  last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY repeats DESC, first_name ASC, last_name DESC ;

#select * from employees where first_name = 'Trygve' and last_name = 'Chleq'