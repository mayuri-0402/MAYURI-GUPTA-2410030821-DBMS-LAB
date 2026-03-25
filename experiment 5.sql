--AGGREGATE & STRING FUNCTIONS (EMPLOYEE TABLE)
--Total number of employees working in the company
SELECT COUNT(*) AS total_employees FROM employee;

--Total salary being paid to all employees
SELECT SUM(sal) AS total_salary FROM employee;

--Maximum salary from employee table
SELECT MAX(sal) AS max_salary FROM employee;

--Minimum salary from employee table
SELECT MIN(sal) AS min_salary FROM employee;

--Average salary from employee table
SELECT AVG(sal) AS avg_salary FROM employee;

--Maximum salary being paid to clerks
SELECT MAX(sal) AS max_clerk_salary FROM employee
WHERE job = 'CLERK';

--Maximum salary being paid in department no 20
SELECT MAX(sal) AS max_dept20_salary FROM employee
WHERE deptno = 20;

--Minimum salary paid to any salesman
SELECT MIN(sal) AS min_salesman_salary FROM employee
WHERE job = 'SALESMAN';

--Average salary drawn by managers
SELECT AVG(sal) AS avg_manager_salary FROM employee
WHERE job = 'MANAGER';

--Total salary drawn by analyst working in dept 40
SELECT SUM(sal) AS total_analyst_salary FROM employee
WHERE job = 'ANALYST' AND deptno = 40;

-- STRING FUNCTIONS
--Display employee names in UPPERCASE
SELECT UPPER(ename)
FROM employee;

--Display employee names in LOWERCASE
SELECT LOWER(ename) FROM employee;

--Display employee names in Proper Case
--SELECT CONCAT(
       UPPER(LEFT(ename,1)),
       LOWER(SUBSTRING(ename,2))
) AS Proper_Name FROM employee;

--Display the length of your name
SELECT LENGTH('MOHAMMAD TASIN') AS name_length;

--Display the length of all employee names
SELECT ename, LENGTH(ename) AS name_length FROM employee;