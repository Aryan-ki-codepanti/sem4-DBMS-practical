-- '1981-04-22', : ERROR
-- 198 doesn't exist to currently null
-- INSERT INTO EMPLOYEE VALUES(
-- *
-- ERROR at line 2:
-- ORA-02291: integrity constraint (SYS.SYS_C008322) violated - parent key not
-- found
INSERT INTO EMPLOYEE VALUES (
    765,
    'Martin',
    'Sales_man',
    NULL,
    TO_DATE ('1981-04-22', 'YYYY-MM-DD'),
    30,
    1400,
    1250
);

-- 783 not there in emp
INSERT ALL INTO EMPLOYEE VALUES (
    756,
    'Jones',
    'Manager',
    NULL,
    TO_DATE ('1981-04-02', 'YYYY-MM-DD'),
    20,
    0,
    2300
) INTO EMPLOYEE VALUES (
    752,
    'Ward',
    'Sales_man',
    NULL,
    TO_DATE ('1981-02-22', 'YYYY-MM-DD'),
    30,
    500,
    1300
) INTO EMPLOYEE VALUES (
    749,
    'Allan',
    'Sales_man',
    NULL,
    TO_DATE ('1981-02-20', 'YYYY-MM-DD'),
    30,
    300,
    2000
) INTO EMPLOYEE VALUES (
    736,
    'Smith',
    'Clerk',
    NULL,
    TO_DATE ('1980-12-17', 'YYYY-MM-DD'),
    20,
    0,
    1000
) INTO EMPLOYEE VALUES (
    793,
    'Miller',
    'Clerk',
    NULL,
    TO_DATE ('1982-01-23', 'YYYY-MM-DD'),
    40,
    0,
    1300
) INTO EMPLOYEE VALUES (
    792,
    'Ford',
    'Analyst',
    NULL,
    TO_DATE ('1981-12-03', 'YYYY-MM-DD'),
    20,
    0,
    2600
) INTO EMPLOYEE VALUES (
    790,
    'James',
    'Clerk',
    NULL,
    TO_DATE ('1981-12-03', 'YYYY-MM-DD'),
    30,
    0,
    950
) INTO EMPLOYEE VALUES (
    787,
    'Adams',
    'Clerk',
    NULL,
    TO_DATE ('1983-01-12', 'YYYY-MM-DD'),
    20,
    0,
    1150
) INTO EMPLOYEE VALUES (
    784,
    'Turner',
    'Sales_man',
    NULL,
    TO_DATE ('1981-09-08', 'YYYY-MM-DD'),
    30,
    0,
    1450
) INTO EMPLOYEE VALUES (
    783,
    'King',
    'President',
    NULL,
    TO_DATE ('1981-11-17', 'YYYY-MM-DD'),
    10,
    0,
    2950
) INTO EMPLOYEE VALUES (
    788,
    'Scott',
    'Analyst',
    NULL,
    TO_DATE ('1982-12-09', 'YYYY-MM-DD'),
    20,
    0,
    2850
) INTO EMPLOYEE VALUES (
    778,
    'Clark',
    'Manager',
    NULL,
    TO_DATE ('1981-06-09', 'YYYY-MM-DD'),
    10,
    0,
    2900
) INTO EMPLOYEE VALUES (
    769,
    'Blake',
    'Manager',
    NULL,
    TO_DATE ('1981-05-01', 'YYYY-MM-DD'),
    30,
    0,
    2870
)
    SELECT
        1
    FROM
        DUAL;

--updating recursive relationship MGR <-> ENO
--- 198 not there so 756 used
UPDATE EMPLOYEE
SET
    MANAGER = 756
WHERE
    ENO = 765;

UPDATE EMPLOYEE
SET
    MANAGER = 783
WHERE
    ENO = 756;

UPDATE EMPLOYEE
SET
    MANAGER = 769
WHERE
    ENO = 752;

UPDATE EMPLOYEE
SET
    MANAGER = 769
WHERE
    ENO = 749;

UPDATE EMPLOYEE
SET
    MANAGER = 790
WHERE
    ENO = 736;

UPDATE EMPLOYEE
SET
    MANAGER = 788
WHERE
    ENO = 793;

UPDATE EMPLOYEE
SET
    MANAGER = 756
WHERE
    ENO = 792;

UPDATE EMPLOYEE
SET
    MANAGER = 769
WHERE
    ENO = 790;

UPDATE EMPLOYEE
SET
    MANAGER = 778
WHERE
    ENO = 787;

UPDATE EMPLOYEE
SET
    MANAGER = 769
WHERE
    ENO = 784;

UPDATE EMPLOYEE
SET
    MANAGER = 756
WHERE
    ENO = 788;

UPDATE EMPLOYEE
SET
    MANAGER = 783
WHERE
    ENO = 778;

UPDATE EMPLOYEE
SET
    MANAGER = 783
WHERE
    ENO = 769;

SELECT
    *
FROM
    EMPLOYEE;