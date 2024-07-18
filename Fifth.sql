use org;
select * from worker;
select * from bonus;
select * from title;

-- Q-41. Write an SQL query to show all departments along with the number of people in there.
select department, count(department) as depCount from worker group by department;

-- Q-42. Write an SQL query to show the last record from a table.
select * from worker where worker_id=(select max(worker_id) from worker);

-- Q-43. Write an SQL query to fetch the first row of a table.
select * from worker where worker_id=(select min(worker_id) from worker);

-- Q-44. Write an SQL query to fetch the last five records from a table.
(select * from worker order by worker_id desc LIMIT 5) order by worker_id;

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
select w1.first_name,w1.department,w1.salary from worker w1 join(select department,max(salary) as max_salary from worker group by department) w2 on w1.department=w2.department AND w1.salary=w2.max_salary;

-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery
select distinct salary from worker order by salary desc limit 3;

-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery
select distinct salary from worker order by salary limit 3;

-- Q-48. Write an SQL query to fetch nth max salaries from a table.
select distinct salary from worker w1
where n >= (select count(distinct salary) from worker w2 where w1.salary <= w2.salary) order by w1.salary desc;

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department , sum(salary) as depSal from worker group by department;

-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select first_name,salary from worker where salary=(select max(salary) from worker);




