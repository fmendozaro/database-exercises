Select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name ='Maya') and gender = 'M' order by first_name;

select * from employees where first_name in ('Irena', 'Vidya', 'Maya') and gender = 'M' order by first_name, last_name;

select * from employees where first_name in ('Irena', 'Vidya', 'Maya') and gender = 'M' order by last_name, first_name;

Select * from employees where last_name like 'E%' or last_name like '%E' order by emp_no;
Select * from employees where last_name like 'E%' and last_name like '%E' order by emp_no;

select * from employees where hire_date between '1990-01-01'and '1999-12-31' AND birth_date like '%-12-25' order by birth_date asc, hire_date desc;

