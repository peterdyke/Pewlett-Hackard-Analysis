# Pewlett-Hackard-Analysis
## Analysis Overview

As an HR Analyst a large corporation with thousands of employees, Pewlett Hackard, we were tasked with building a database of employee data, consolidating company data from six CSV files, and performing analysis on this data. We determined the number of employees in each department, the number of retirement eligible employees, and which employees are eligible for a mentorship program. We did all of this analysis using PostgreSQL and pgAdmin, creating tables and exporting tailored lists with the desired data. Specifically we built a table of the number of employees by title who are close to retiring, and a table of employees eligible for a company mentorship program.

## Resources
Software Used: PostgreSQL 11.x, pgAdmin

Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv

## Results
* For the first part of our analysis we created a table with all retirement eligible employees. To do this we queried data from the employee table, and from the titles table. We joined these tables, and filtered each employee by their birthday to fit the retirement age requirement. Below is a copy of that code. 

<img src = Resources/retirement_table_code.png>

* This retirement_titles table and csv had one problem. If employees were promoted during their tenure and held more than one title, those employees were counted as many times as titles they held at the company. To rectify tihs so that each employee was only counted once, we used the DISTINCT ON statement so that only the most recent title for each employee was counted.

<img src = Resources/unique_code.png>

*  We then determined how many employees of each title were ready for retirement. That table is below.

<img src = Resources/retirement_title_count.png>

* We also determined all employees who were eligible for the mentorship program, using the employees birthday as criteria for that program. 
<img src = Resources/mentorship.png>

## Summary
We can see through our analysis that the upcoming "Silver Tsunami" of retiring employees is going to be quite the change for Pewlett Hackard. In our retiring_titles table we see that there are over 29k Senior engineers and over 28k senior staff members who are of retiring age. There are 2 department managers as well of retiring age. Overall over 90k employees are soon to retire.

After our mentorship eligibility program, we found there were just over 1500 employees of the right age for that program. This 1500 group would help mentor the incoming group of hirees that will be replacing the 90k plus employees that are on their way out. This comes out to roughly 60 new employees for each mentor, which is a a lot to put on any one mentor. I would suggets doubling or even tripling the pool of eligible mentors to accomodate the large number of new hires needed. 

To learn more about the upcoming wave of retirements, I would also suggest we run a query to determine which departments are going to be hit hardest by the outgoing employees, and which will retain the most employees. 

I would also determine which departments the eligible mentors fall in, so we can make sure that they are allocated efficiently with the outgoing employees. That is to say that there will be more eligible mentors in the departments where there will be more retiring employees, to usher in the new hirees in that department.