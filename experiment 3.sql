--RETRIEVING DATA – SET 2 (EMPLOYEE TABLE)
--Employees & jobs in Dept 30, ordered by salary (DESC)
SELECT ename, job, sal FROM employee
WHERE deptno = 30 ORDER BY sal DESC;

--Job & DeptNo of employees
SELECT job, deptno FROM employee
WHERE ename LIKE 'A___N';

--Names of employees starting with S
SELECT ename FROM employee
WHERE ename LIKE 'S%';

--Names of employees ending with S
SELECT ename FROM employee
WHERE ename LIKE '%S';

--Employees working in Dept 10 / 20 / 40
SELECT ename FROM employee
WHERE deptno IN (10,20,40) OR job IN ('CLERK','SALESMAN','ANALYST');

--Employee number & name of employees who earn commission
SELECT empno, ename FROM employee
WHERE comm IS NOT NULL AND comm > 0; --IS NOT NULL → commission exists

--Employee number & total salary for each employee
SELECT empno, (sal + IFNULL(comm,0)) AS total_salary
FROM employee; -- IFNULL(comm,0) avoids NULL issue.

-- Employee number & annual salary
SELECT empno, sal*12 AS annual_salary FROM employee;

--Employees who are clerks earning > 3000
SELECT ename FROM employee
WHERE job = 'CLERK' AND sal > 3000;

--Employees who are clerk / salesman / analyst and earning > 3000
SELECT ename FROM employee
WHERE job IN ('CLERK','SALESMAN','ANALYST') AND sal > 3000;