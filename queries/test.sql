use codeup_test_db;
select * from albums;


select * from albums where name = 'Appetite for Destruction' and artist= 'Guns N Roses';

DELETE FROM albums WHERE id in (1, 3);

-- selec
# select

use employees;
select * from employees where first_name like '%Ha%' limit 5000;
select * from titles;


select * from employees where first_name in ('Irena', 'Vidya', 'Maya') and gender = 'M' order by first_name, last_name;

select version();
