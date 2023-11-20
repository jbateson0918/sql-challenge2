select dept_emp.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from dept_emp
inner join employees on 
employees.emp_no=dept_emp.emp_no
inner join salaries on
employees.emp_no=salaries.emp_no;

select employees.last_name, employees.first_name, employees.hire_date
from employees
Where hire_date = 1986;

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager on 
departments.dept_no=dept_manager.dept_no
inner join employees on
dept_manager.emp_no=employees.emp_no
order by "dept_no" asc;

select departments.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_emp on
departments.dept_no=dept_emp.dept_no
inner join employees on
dept_emp.emp_no=employees.emp_no
order by "emp_no" desc;

select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules' and last_name = 'B%';

select departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_emp on 
departments.dept_no=dept_emp.dept_no
inner join employees on
dept_emp.emp_no=employees.emp_no
where dept_name = 'Sales';

select departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_emp on 
departments.dept_no=dept_emp.dept_no
inner join employees on
dept_emp.emp_no=employees.emp_no
where dept_name in ('Sales', 'Development')
order by dept_name desc;

select last_name, count(last_name) as "employee last name"
from employees
group by last_name
order by "employee last name" desc;