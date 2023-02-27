-- 21) Query to display the employees that earn a salary that is higher than the salary of any of the clerks.
SELECT
    ENAME,
    JOB_TYPE,
    SALARY
FROM
    EMPLOYEE
WHERE
    SALARY > (
        SELECT
            MAX (SALARY)
        FROM
            EMPLOYEE
        WHERE
            JOB_TYPE = 'Clerk'
    );

--SELF : MONTHS_BETWEEN
-- 22) Query to display Name and calculate the number of months between today and the date each employee was hired.
SELECT
    ENAME,
    HIRE_DATE,
    ROUND (MONTHS_BETWEEN (CURRENT_DATE,
    HIRE_DATE) ) AS "MONTHS PASSED SINCE HIRE"
FROM
    EMPLOYEE;

-- 23) Query to display the following for each employee:- <E-Name> earns < Salary> monthly but wants < 3 * Current Salary >. Label the Column as Dream Salary.

SELECT
    ENAME || ' earns ' || SALARY || ' monthly but wants ' || 3 * SALARY AS "DREAM SALARY"
FROM
    EMPLOYEE;

-- 24) Query to display Name and Salary for all employees. Format the salary to be 15 character long, left padded with $ sign.

SELECT
    ENAME,
    LPAD (SALARY,
    15,
    '$') AS "SALARY"
FROM
    EMPLOYEE;

-- 25) Query to display Name with the 1st letter capitalized and all other letter lower case & length of their name of all the employees whose name starts with ‘J’,’A’ and ‘M’.
-- SELF : LENGTH()
SELECT
    UPPER (SUBSTR (ENAME,
    1,
    1) ) || LOWER (SUBSTR (ENAME,
    2) ) AS "ENAME",
    LENGTH (ENAME)
FROM
    EMPLOYEE
WHERE
    SUBSTR (UPPER (ENAME),
    1,
    1) IN ('J',
    'A',
    'N');

-- 26) Query to display Name, Hire Date and Day of the week on which the employee started.
-- SELF:  IMPPPPPPPPPPPPP AF TO_CHAR (CURRENT_DATE,'DAY') -> gets day
SELECT
    ENAME,
    HIRE_DATE,
    TO_CHAR (HIRE_DATE,
    'DAY') AS "DAY OF THE WEEK"
FROM
    EMPLOYEE;

--  27) Query to display Name and Commission Amount. If the employee does not earn commission then use default value ‘No Commission’.


SELECT
    ENAME
FROM
    EMPLOYEE;

-- 28) Query to display Name, Department Name and Department No for all the employees.
SELECT
    ENAME,
    E.DNO AS DNO,
    DNAME
FROM
    EMPLOYEE   E,
    DEPARTMENT D
WHERE
    E.DNO = D.DNO;

-- 29) Query to display Unique Listing of all Jobs that are in Department # 30.
--  30) Query to display Name, Department Name and Location for all employees earning a commission