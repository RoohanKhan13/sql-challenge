CREATE TABLE Departments (
dept_no varchar Primary key,
dept_name varchar);

CREATE TABLE dept_emp (
emp_no int ,
dept_no varchar);

CREATE TABLE dept_manager (
dept_no varchar,
emp_no int );

CREATE TABLE Employees (
emp_no serial primary key,
emp_title_id varchar,
birth_date date,
first_name varchar,
last_name varchar,
sex varchar,
hire_date date);

CREATE TABLE Salaries (
emp_no int,
Salary varchar);

CREATE TABLE Titles (
title_id varchar primary key,
title varchar);

DROP TABLE Departments
DROP TABLE dept_emp
drop table dept_manager
drop table employees
drop table salaries
drop table titles 

--1
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries s
on e.emp_no = s.emp_no;

select *
from salaries

--2
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01'
and hire_date <= '1986-12-31';

select *
from employees

--3
select de.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
from dept_manager de
join departments d on de.dept_no = d.dept_no
join employees e on de.emp_no = e.emp_no;

--4
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
join departments d on de.dept_no = d.dept_no
join employees e on de.emp_no = e.emp_no;

--5
select first_name, last_name, sex
from employees
where first_name = 'Hercules' AND last_name like 'B%';

--6
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
join departments d on de.dept_no = d.dept_no
join employees e on de.emp_no = e.emp_no
where dept_name = 'Sales';

--7
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
join departments d on de.dept_no = d.dept_no
join employees e on de.emp_no = e.emp_no
where dept_name = 'Sales' or dept_name = 'Development';

--8
select last_name, count(last_name) as "employee count"
from employees
group by last_name
order by "employee count" DESC;

Select * from titles
SELECT * from dept_emp