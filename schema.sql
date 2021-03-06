-- Creating Tables for PH_EmployeeDB
Create Table departments(
	dept_no varchar(4) not null,
	dept_name varchar(40) not null,
	Primary Key (dept_no),
	Unique (dept_name)
);

CREATE TABLE employees(
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT Null,
	dept_no VARCHAR(4) NOT Null,
	from_date DATE NOT Null,
	to_date DATE NOT Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
	emp_no INT NOT Null,
	title VARCHAR NOT Null,
	from_date DATE NOT Null,
	to_date DATE NOT Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)	
);

-- Drop TABLE departments cascade;
-- drop table employees cascade;
-- drop table dept_emp cascade;
-- drop table dept_manager cascade;
-- drop table salaries cascade;
-- drop table titles cascade;

select * from titles;