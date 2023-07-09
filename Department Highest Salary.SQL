Create table If Not Exists Employee (id int, name varchar(255), salary int, departmentId int)
Create table If Not Exists Department (id int, name varchar(255))
Truncate table Employee
insert into Employee (id, name, salary, departmentId) values ('1', 'Joe', '70000', '1')
insert into Employee (id, name, salary, departmentId) values ('2', 'Jim', '90000', '1')
insert into Employee (id, name, salary, departmentId) values ('3', 'Henry', '80000', '2')
insert into Employee (id, name, salary, departmentId) values ('4', 'Sam', '60000', '2')
insert into Employee (id, name, salary, departmentId) values ('5', 'Max', '90000', '1')
Truncate table Department
insert into Department (id, name) values ('1', 'IT')
insert into Department (id, name) values ('2', 'Sales')
o/p:
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
| IT         | Max      | 90000  |
+------------+----------+--------+
Explanation: Max and Jim both have the highest salary in the IT department and Henry has the highest salary in the Sales department.
my-sql
select d.Name as Department, e.Name as Employee, e.salary as salary
from Employee e , Department d
where
e.DepartmentId = d.Id
and
(e.DepartmentId, e.Salary) in
(select e.DepartmentId, max(e.Salary) from Employee e group by e.DepartmentId);

t-sql
select c.Department, c.Employee, c.Salary
from
(select d.Name as 'Department', e.Name as 'Employee', e.Salary as 'Salary', rank() over(PARTITION by d.Name order by Salary desc) as 'rank'
from Employee e join Department d on e.DepartmentId=d.Id) as c
where rank=1
