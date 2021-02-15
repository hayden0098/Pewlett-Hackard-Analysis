-- Deliverable 1:
--retrieve emo_no,name,title,from_date,to_date from employee table and titles table who about to retire
select  emp.emp_no,
		emp.first_name,
		emp.last_name,
		titles.title,
		titles.from_date,
		titles.to_date
into retirement_titles
from employees as emp
inner join titles
on emp.emp_no = titles.emp_no
where emp.birth_date between '1952-01-01' and '1955-12-31'
order by emp.emp_no
;

--retrieve emp_no, name, and their most recent title who about to retire
select  distinct on (emp_no)
		emp_no,
		first_name,
		last_name,
		title
into unique_titles
from retirement_titles
order by emp_no, to_date desc
;

--query to retrieve number of employees by their most recent joib title who about to retire
select  title,
		count(title) as count_title
into retiring_titles
from unique_titles
group by title
order by count_title desc
;

-- Deliverable 2:
--query to create a Mentorship Eligibility table that holds the current employees who are eligible 
--to participate in a mentorship program. contain emp_no, name, birth_date,title, from_date and to_date
select  distinct on (emp_no)
		emp.emp_no,
		emp.first_name,
		emp.last_name,
		emp.birth_date,
		DE.from_date,
		DE.to_date,
		titles.title
into mentorship_eligibilty
from employees as emp
inner join dept_emp as DE
on emp.emp_no = DE.emp_no
inner join titles
on emp.emp_no = titles.emp_no
where (emp.birth_date between '1965-01-01' and '1965-12-31')
  and (DE.to_date = '9999-01-01')
order by emp_no, titles.to_date desc
;

-- Deliverable 3:
--unique_title table with employee's department name
select  distinct on (emp_no)
		emp.emp_no,
		emp.first_name,
		emp.last_name,
		dept.dept_name,
		titles.title,
		titles.from_date,
		titles.to_date
into dept_unique_titles
from employees as emp
inner join titles
on emp.emp_no = titles.emp_no
inner join dept_emp as DE
on emp.emp_no = DE.emp_no
inner join departments as dept
on DE.dept_no = dept.dept_no
where emp.birth_date between '1952-01-01' and '1955-12-31'
order by emp_no, titles.to_date desc
;

--retiring_titles table count title group by department name and title
select  dept_name,
		title,
		count(title) as count_title
into dept_retiring_titles
from dept_unique_titles
group by dept_name,title
order by count_title desc
;

--mentorship_eligibilty table with employee's department name
select  distinct on (emp_no)
		emp.emp_no,
		emp.first_name,
		emp.last_name,
		emp.birth_date,
		DE.from_date,
		DE.to_date,
		dept.dept_name,
		titles.title
into dept_mentorship_eligibilty
from employees as emp
inner join dept_emp as DE
on emp.emp_no = DE.emp_no
inner join departments as dept
on DE.dept_no = dept. dept_no
inner join titles
on emp.emp_no = titles.emp_no
where (emp.birth_date between '1965-01-01' and '1965-12-31')
  and (DE.to_date = '9999-01-01')
order by emp_no, titles.to_date desc
;

