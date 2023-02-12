--Q1 Query to display Employee Name, Job, Hire Date, Employee Number; for each employee with the Employee Number appearing first.

SELECT
    ENO,
    ENAME,
    JOB_TYPE,
    HIRE_DATE
FROM
    EMPLOYEE;

--Q2 Query to display Unique Jobs from the Employee Table.

SELECT
    DISTINCT JOB_TYPE
FROM
    EMPLOYEE;

--Q3 Query to display the Employee Name concatenated by a Job separated by a comma

SELECT
    ENAME || ', ' || JOB_TYPE
FROM
    EMPLOYEE;

--Q4 Query to display all the data from the Employee Table. Separate each Column by a comma and name the said column as THE_OUTPUT
-- (AS "THE OUTPUT") for spaced names

SELECT
    ENO || ', ' || ENAME || ', ' || JOB_TYPE || ', ' || MANAGER || ', ' || HIRE_DATE || ', ' || DNO || ', ' || COMMISSION || ', ' || SALARY AS THE_OUTPUT
FROM
    EMPLOYEE;

--Q5 Query to display the Employee Name & Salary of all the employees earning more than $2850. (earning = salary + commission)

SELECT
    ENAME,
    SALARY
FROM
    EMPLOYEE
WHERE
    SALARY + COMMISSION > 2850;

--Q6 Query to display Employee Name & Department Number for the Employee No= 790.

SELECT
    ENAME,
    DNO
FROM
    EMPLOYEE
WHERE
    ENO = '790';

--Q7 Query to display Employee Name & Salary for all employees whose salary is not in the range of $1500 and $2850.

SELECT
    ENAME,
    SALARY
FROM
    EMPLOYEE
WHERE
    SALARY NOT BETWEEN 1500
    AND 2850;

--Q8 Query to display Employee Name, Job, and Hire Date of all the employees hired between Feb 20, 1981 and May 1, 1981. Order the query in ascending order of Start Date.

SELECT
    ENAME,
    JOB_TYPE,
    HIRE_DATE
FROM
    EMPLOYEE
WHERE
    HIRE_DATE BETWEEN TO_DATE ('1981-02-20',
    'YYYY-MM-DD')
    AND TO_DATE ('1981-05-01',
    'YYYY-MM-DD')
ORDER BY
    HIRE_DATE;

-- Q9) Query to display Employee Name & Department No. of all the employees in Dept 10 and Dept 30 in the alphabetical order by name.

SELECT
    ENAME,
    DNO
FROM
    EMPLOYEE
WHERE
    DNO IN (10,
    30)
ORDER BY
    ENAME;

--Q10) ) Query to display Employee Name & Salary of employees who earned more than $1500 and are in Department 10 or 30.
SELECT
    ENAME,
    SALARY
FROM
    EMPLOYEE
WHERE
    SALARY > 1500
    AND DNO IN (10,
    30);

--Q11) Query to display Name & Hire Date of every Employee who was hired in 1981.

SELECT
    ENAME,
    HIRE_DATE
FROM
    EMPLOYEE
WHERE
    HIRE_DATE BETWEEN TO_DATE ('1981-01-01',
    'YYYY-MM-DD')
    AND TO_DATE ('1981-12-31',
    'YYYY-MM-DD');

--Q12)  Query to display Name & Job of all employees who don’t have a current Manager.

SELECT
    ENAME,
    JOB_TYPE
FROM
    EMPLOYEE
WHERE
    MANAGER IS NULL;

--Q13) Query to display the Name, Salary & Commission for all the employees who earn commission. Sort the data in descending order of Salary and Commission.

SELECT
    ENAME,
    SALARY,
    COMMISSION
FROM
    EMPLOYEE
WHERE
    COMMISSION > 0
ORDER BY
    SALARY DESC,
    COMMISSION DESC;

-- Q14) Query to display Name of all the employees where the third letter of their name is ‘A’. .

SELECT
    ENAME
FROM
    EMPLOYEE
WHERE
    ENAME LIKE '__a%';

-- Q15) Query to display Name of all employees either have two ‘R’s or have two ‘A’s in their name & are either in Dept No = 30 or their Manger’s Employee No = 778.
SELECT
    ENAME
FROM
    EMPLOYEE
WHERE
    LOWER (ENAME) LIKE '%a%a%'
    OR LOWER (ENAME) LIKE '%r%r%'
    OR DNO = 30
    OR MANAGER = 788;

--Q16) Query to display Name, Job and Salary of all employees whose Job is Clerical or Analyst & their salaries are not equal to 1000, 3000, or 5000

SELECT
    ENAME,
    JOB_TYPE,
    SALARY
FROM
    EMPLOYEE
WHERE
    JOB_TYPE IN ('Clerk',
    'Analyst')
    OR SALARY NOT IN (1000,
    3000,
    5000);

--Q17) Query to display Name, Salary and Commission for all employees whose Commission Amount is greater than their Salary increased by 5 %.

SELECT
    ENAME,
    SALARY,
    COMMISSION
FROM
    EMPLOYEE
WHERE
    COMMISSION > (SALARY * 1.05);

--Q18) Query to display the Current Date.
SELECT
    CURRENT_DATE
FROM
    DUAL;

--Q19) Query to display Employee No., Name, Salary and the Salary increased by 15 % expressed as a absolute whole number

SELECT
    ENO,
    ENAME,
    SALARY,
    ROUND (SALARY * 1.15)
FROM
    EMPLOYEE;

--Q20) Query to display Name, Hire Date and Salary Review Date which is the 1st Monday after six months of employment.
-- date + 3 -> adds 3 days

SELECT
    ENAME,
    HIRE_DATE,
    HIRE_DATE + INTERVAL '6' MONTH AS REVIEW_DATE
FROM
    EMPLOYEE;

--Renaming column
ALTER TABLE EMPLOYEE RENAME COLUMN COMMISION TO COMMISSION;

--SELECTing everything
SELECT
    *
FROM
    EMPLOYEE;