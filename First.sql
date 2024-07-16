use org;
select * from worker;
select * from bonus;
select * from title;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select FIRST_NAME as WORKER_NAME from worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select UPPER(FIRST_NAME) from worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct DEPARTMENT from worker;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(FIRST_NAME,1,3) from Worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
select INSTR(FIRST_NAME,'b') from worker where FIRST_NAME="Amitabh";

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select RTRIM(FIRST_NAME) from worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select LTRIM(first_name) from worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct DEPARTMENT,length(DEPARTMENT) from worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select REPLACE(FIRST_NAME,'a','A') from worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.
select CONCAT(FIRST_NAME,' ',LAST_NAME) as FULL_NAME from worker;