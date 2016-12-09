select concat('Teaching people to code for ' , (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')), ' seconds');
select concat('Teaching people to code for ' , (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 60, ' minutes');
select concat('Teaching people to code for ' , (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 360, ' hours');

SELECT COUNT(
    DISTINCT first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

show tables;
describe salaries;
select * from salaries;

SELECT (unix_timestamp() - unix_timestamp(hire_date)) / (60 * 60 * 24 * 365)
FROM employees;

select count(*) from employees where gender = 'M';
select count(*) from employees where gender = 'F';

SELECT COUNT(first_name), first_name, last_name
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name, last_name
order by count(first_name) DESC ;

SELECT COUNT( DISTINCT first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

select DISTINCT first_name from employees WHERE first_name NOT LIKE '%a%';

select * from employees where first_name = 'Yonghong' and last_name = 'Codenie';

show tables;

DESCRIBE salaries;

select * from salaries;

select AVG(from_date) from salaries ;

show tables;


select concat(
    (SELECT DATEDIFF(curdate(),'2016-11-08')+1)
       , ' ', 'Days');

SELECT DATEDIFF(curdate(),'2016-11-08') as Days;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;


select e.emp_no AS 'id from employees' , s.emp_no AS 'Emp_no from salaries'
from employees AS e, salaries AS s
where e.first_name
      like '%qu%' limit 1000;


select emp_no AS 'id from employees' , emp_no AS 'Emp_no from salaries'
from employees AS e, salaries AS s
where e.first_name
      like '%qu%';

select employees.*, salaries.*
from employees, salaries
where employees.emp_no = 10010 limit 100

select count(*) from salaries;

select employees.emp_no from employees;

describe employees;
DESCRIBE  salaries;


select * from dept_emp where emp_no = '10010';
select * from dept_manager;


use codeup_test_db;

CREATE TABLE quotes (
       id INT NOT NULL AUTO_INCREMENT,
       author VARCHAR(50) NOT NULL,
       content VARCHAR(240) NOT NULL,
       PRIMARY KEY (id)
);

show tables;
use codeup_test_db;

describe quotes;

alter table quotes ADD UNIQUE(content);

CREATE TABLE authors (
       id INT NOT NULL AUTO_INCREMENT,
       first_name VARCHAR(100) NOT NULL,
       last_name VARCHAR(100) NOT NULL,
       PRIMARY KEY (id),
       UNIQUE (first_name, last_name)
);

describe authors;

describe albums;

ALTER TABLE albums ADD UNIQUE (name, artist);

insert into albums (artist, name, release_date, sales, genre) values ('Fer', 'My Second Album', 2016, 0, 'Folk');

#how can i get the last inserted record?







-- select * from albums order by id desc limit 1;


