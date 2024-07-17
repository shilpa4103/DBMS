use org;
select * from worker;
select * from bonus;

-- Q-31. Write an SQL query to show the current date and time.
-- DUAL
select current_timestamp();
select now();

-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
select * from worker order by salary desc LIMIT 5;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select * from worker order by salary desc LIMIT 4,1;

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
select salary from worker w1 WHERE 4 = (SELECT COUNT(DISTINCT (w2.salary)) from worker w2 where w2.salary >= w1.salary);

-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
select * from worker w1,worker w2 where w1.salary=w2.salary AND w1.WORKER_ID!=w2.WORKER_ID;
 
-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.
select max(salary) from worker where salary not in(select max(salary) from worker);


-- Q-37. Write an SQL query to show one row twice in results from a table. 
select * from worker UNION ALL select * from worker ORDER BY worker_id;

-- Q-38. Write an SQL query to list worker_id who does not get bonus.
select * from worker where worker_id not in(select worker_ref_id from bonus);

-- Q-39. Write an SQL query to fetch the first 50% records from a table.
select * from worker where worker_id<=(select count(worker_id)/2 from worker);

-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.
select department,count(worker_id) from worker group by department having count(worker_id)<4;
 

