use org;
select * from worker;
select * from bonus;
select * from title;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by FIRST_NAME;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by FIRST_NAME,DEPARTMENT DESC;
-- First_name will be in ascending order and the corresponding values of department is assigned.

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where FIRST_NAME="Vipul" OR FIRST_NAME="Satish";
-- or
select * from worker where FIRST_NAME IN("Vipul","Satish");

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where FIRST_NAME!="Vipul" AND FIRST_NAME!="Satish";
-- or
select * from worker where FIRST_NAME NOT IN("Vipul","Satish");

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
select * from worker where DEPARTMENT="Admin";

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker where FIRST_NAME LIKE '%a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker where FIRST_NAME LIKE '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker where FIRST_NAME LIKE '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where SALARY BETWEEN 100000 AND 500000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where JOINING_DATE LIKE '2014-02%';
-- or
select * from worker where YEAR(joining_date) = 2014 AND MONTH(joining_date) = 02;

 

