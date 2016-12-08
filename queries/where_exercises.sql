Select * from employees where first_name in ('Irena', 'Vidya','Maya');
Select * from employees where last_name like 'E%';
select * from employees where hire_date between '1990-01-01'and '1999-12-31';
select * from employees where birth_date like '%-12-25';
Select * from employees where last_name like '%q%';
-- Ands and ors
Select * from employees where first_name = 'Irena' or first_name = 'Vidya' or first_name ='Maya';
Select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name ='Maya') and gender = 'm';
Select * from employees where last_name like 'E%' or last_name like '%E';
Select * from employees where last_name like 'E%' and last_name like '%E';
select * from employees where hire_date between '1990-01-01'and '1999-12-31' AND birth_date like '%-12-25';
Select * from employees where last_name like '%q%' AND last_name not like '%qu%';