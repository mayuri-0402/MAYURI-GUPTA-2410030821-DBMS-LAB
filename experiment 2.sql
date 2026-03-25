--RETRIEVING DATA USING EMPLOYEE TABLE
-- List all distinct jobs in Employee table
SELECT DISTINCT job FROM Employee;

--List all information about employees in Department 30
SELECT * FROM Employee WHERE deptno = 30;

--Find all department numbers with department names greater than 20
SELECT deptno FROM department WHERE deptno > 20;

--Find all information about managers and clerks in department 30
SELECT * FROM employee
WHERE deptno = 30 AND job IN ('MANAGER','CLERK');

--List Employee name, Employee number, Department of all clerks
SELECT empno, ename, deptno FROM employee
WHERE job = 'CLERK';

--Find all managers NOT in department 30
SELECT * FROM employee
WHERE job = 'MANAGER' AND deptno <> 30;

--List all employees in department 10 who are not managers or clerks
SELECT * FROM employee
WHERE deptno = 10 AND job NOT IN ('MANAGER','CLERK');

--Find employees and jobs earning between 1200 and 1400
SELECT ename, job, sal FROM employee
WHERE sal BETWEEN 1200 AND 1400;

--List Name and Department Number of employees who are
SELECT ename, deptno FROM employee
WHERE job IN ('CLERK','ANALYST','SALESMAN');

--List Name and Department Number of employees whose names begin with M
SELECT ename, deptno FROM employee
WHERE ename LIKE 'M%';