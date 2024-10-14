--Window Functions
select EmployeeID,Salary,Department,sum(salary) over(partition by Department order by salary) from employee;