select
	*
from
	employee;

select
	dept_name,
	max(salary) as max_salary
from
	employee e
group by
	e.dept_name;

select
	e.*,
	max(salary) over (partition by dept_name) as max_salary
from
	employee e;

-- row_number, rank(1,2,2,4), dense_rank(1,2,2,3), lead, lag

select e.*, row_number() over (partition by dept_name) as rn 
from employee e;

-- fetch the first 2 employess from each department
select * from (
	select e.*, row_number() over (partition by dept_name order by emp_id) as rn 
	from employee e) as x
where x.rn < 3;

-- fetch top 3 employees in each depart earning the max salary
select
	*
from
	(
	select
		e.*,
		rank() over (partition by dept_name
	order by
		salary desc) as rnk
	from
		employee e) as x
where
	x.rnk < 4;

-- fetch to display if the salary of an employee is higher, lower or equal to ther previous employee
select
	e.*,
	lag(salary, 1, 0) over (partition by dept_name
order by
	emp_id) as prev_emp_salary,
	lead(salary, 1, 0) over(partition by dept_name
order by
	emp_id) as next_emp_salary
from
	employee e;

-- case
select
	e.*,
	lag(salary, 1, 0) over (partition by dept_name
order by
	emp_id) as prev_emp_salary,
	case
		when e.salary > lag(salary, 1, 0) over (partition by dept_name
	order by
		emp_id) then 'Higher than previuos employee'
		when e.salary < lag(salary, 1, 0) over (partition by dept_name
	order by
		emp_id) then 'Lower than previuos employee'
		when e.salary = lag(salary, 1, 0) over (partition by dept_name
	order by
		emp_id) then 'Same as previuos employee'
	end sal_range
from
	employee e;
