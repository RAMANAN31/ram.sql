SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

--This query first selects the maximum salary from the Employee table and then selects the second maximum salary from the Employee 
table where the salary is less than the maximum salary.
If there is no second highest salary, the query will return null.

The inner query SELECT MAX(Salary) FROM Employee selects the maximum salary from the Employee table.

The outer query SELECT MAX(Salary) AS SecondHighestSalary FROM Employee WHERE Salary < (...) selects the maximum salary 
from the Employee table where the salary is less than the maximum salary returned by the inner query.

If there is no second highest salary (i.e., all employees have the same salary), 
then the outer query will return null because there are no rows in the Employee table where the salary is less than the maximum salary.

--for Nth highest 
SELECT Salary AS NthHighestSalary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET N-1;
