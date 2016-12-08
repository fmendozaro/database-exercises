select distinct title from titles order by title;
select last_name from employees where last_name like 'E%E' group by last_name;
select first_name,last_name from employees where last_name like 'E%E' group by first_name,last_name;
Select distinct last_name from employees where last_name like '%q%' AND last_name not like '%qu%';