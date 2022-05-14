/*
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

Input Format

The Employee table containing employee data for a company is described as follows:

COLUMN:           TYPE:
EMPLOYEE_ID       INTEGER
NAME              STRING
MONTHS            INTEGER
SALARY            INTEGER
*/

select name 
from employee 
where salary > 2000 
and months < 10 
order by employee_id asc;
