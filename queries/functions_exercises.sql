Select count(*) AS Count, gender from employees where first_name in ('Irena', 'Vidya','Maya') group by gender;
select concat(first_name, ' ',last_name) AS 'Full Name' from employees where last_name like 'E%E' group by last_name;
select *, datediff(curdate(), hire_date) AS 'DaysWorking' from employees where birth_date like '%-12-25' ANd hire_date like '199%';
Select *, count(*) AS 'repeats' from employees where last_name like '%q%' AND last_name not like '%qu%' group by last_name,first_name order by repeats desc;