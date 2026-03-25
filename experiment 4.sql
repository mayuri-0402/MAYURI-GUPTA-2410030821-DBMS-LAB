-- RETRIEVING DATA – EMPLOYEE TABLE
--Employees who joined before 30-Jun-1980 OR after 31-Dec-1981
SELECT * FROM employee
WHERE hiredate < '1980-06-30' OR hiredate > '1981-12-31';

--Names of employees whose second alphabet is A
SELECT ename
FROM employee
WHERE ename LIKE '_A%';

--Names of employees whose name is exactly 5 characters
SELECT ename
FROM employee
WHERE LENGTH(ename) = 5;

--Names of employees whose second alphabet is A
SELECT ename FROM employee
WHERE ename LIKE '_A%';

--Employees NOT working as salesman, clerk or analyst
SELECT ename
FROM employee
WHERE job NOT IN ('SALESMAN','CLERK','ANALYST');

--Employee name & annual salary
SELECT ename, sal*12 AS annual_salary FROM employee
ORDER BY sal DESC;

--Name, sal, hra, pf, da, totalsal
SELECT
    ename,
    sal,
    sal*0.15 AS hra,
    sal*0.10 AS da,
    sal*0.05 AS pf,
    (sal + (sal*0.15) + (sal*0.10) - (sal*0.05)) AS totalsal
FROM employee
ORDER BY totalsal DESC;

--Update salary by 10% increment
UPDATE employee SET sal = sal + (sal * 0.10)
WHERE comm IS NULL OR comm = 0;

--Employees whose salary is > 3000 after 20% increment
SELECT ename FROM employee WHERE sal + (sal * 0.20) > 3000;

--Employees whose salary contains at least 3 digits
SELECT ename, sal FROM employee WHERE LENGTH(sal) >= 3;