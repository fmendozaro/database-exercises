-- Find all the employees with the same hire date as employee 101010 using a sub-query
select * from employees e where e.hire_date = (select hire_date from employees where emp_no = 101010);

-- Find all the titles held by all employees with the first name Aamod.
select * from titles where emp_no in (select emp_no from employees where first_name = 'Aamod');

-- Find all the department managers that are female.
select first_name, last_name from employees where emp_no in 
(select emp_no from  dept_manager where emp_no in 
(select emp_no from employees where gender = 'm'));

-- BONUS Find all the department names that have female managers.
select * 
from departments 
where dept_no in (
	select dept_no from  dept_manager where emp_no in (
		select emp_no from employees where gender = 'F')
	);

