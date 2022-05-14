/*
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

COLUMN:           TYPE:
EMPLOYEE_ID       INTEGER
NAME              STRING
MONTHS            INTEGER
SALARY            INTEGER
*/

select name from employee order by name;
