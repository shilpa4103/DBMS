use org;
select * from worker;
select * from bonus;
select * from title;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(*) as Number_of_Employees from worker where department="Admin";

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
select CONCAT(FIRST_NAME,' ',LAST_NAME) as FULL_NAME,SALARY from worker where salary>=50000 AND salary<=100000;
-- or
select concat(first_name, ' ', last_name) from worker where salary between 50000 and 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select department,count(*) as NO_OF_EMPLOYEES from worker group by department order by NO_OF_EMPLOYEES desc;
-- or
select department, count(worker_id) AS no_of_worker from worker group by department ORDER BY no_of_worker desc;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select * from worker join title on worker.WORKER_ID=title.WORKER_REF_ID where title.worker_title="Manager";
-- or
select w.* from worker as w inner join title as t on w.worker_id = t.worker_ref_id where t.worker_title="Manager";

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
select WORKER_TITLE,count(WORKER_REF_ID) from title group by WORKER_TITLE having COUNT(WORKER_REF_ID)>1;
-- or
select worker_title, count(*) as count from title group by worker_title having count > 1;

-- Q-26. Write an SQL query to show only odd rows from a table.
select * from worker where MOD(WORKER_ID,2)!=0;
-- or
select * from worker where MOD(WORKER_ID,2)<>0;

-- Q-27. Write an SQL query to show only even rows from a table.
select * from worker where MOD(WORKER_ID,2)=0;

-- Q-28. Write an SQL query to clone a new table from another table.
CREATE TABLE worker_clone LIKE worker;
INSERT INTO worker_clone select * from worker;
select * from worker_clone;

-- Q-29. Write an SQL query to fetch intersecting records of two tables.
select worker.* from worker inner join worker_clone using(worker_id);
-- or
select * from worker inner join title on worker.WORKER_ID=title.WORKER_REF_ID ;

-- Q-30. Write an SQL query to show records from one table that another table does not have.
select * from worker left join worker_clone on worker.worker_id=worker_clone.worker_id WHERE worker_clone.worker_id is NULL;
-- or
SELECT worker_id FROM worker MINUS SELECT worker_id FROM worker_clone;
