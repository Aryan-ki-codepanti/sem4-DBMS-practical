--Department table

INSERT INTO DEPARTMENT VALUES(
    10,
    'Accounting',
    'New York'
);

INSERT ALL INTO DEPARTMENT VALUES(
    20,
    'Research',
    'Dallas'
) INTO DEPARTMENT VALUES(
    30,
    'Sales',
    'Chicago'
) INTO DEPARTMENT VALUES(
    40,
    'Operation',
    'Boston'
) INTO DEPARTMENT(
    DNO,
    DNAME
) VALUES(
    50,
    'Marketing'
)
    SELECT
        1
    FROM
        DUAL;

-- To check if insertion was done rightfully
SELECT
    *
FROM
    DEPARTMENT;