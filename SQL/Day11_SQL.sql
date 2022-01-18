/*DAY-11 INSERT, UPDATE, DELETE*/
USE database1;

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

/*INSERT STATEMENT*/
INSERT INTO employees 
(	
		emp_no, 
        birth_date,
        first_name,
        last_name,
        gender, 
        hire_date
)VALUES
(
		1,
        '1990-01-01',
        'John',
        'Smith',
        'M',
        '2010-01-01'
);       

/*INSERT in different order of values*/ 
/*MUST PUT THE VALUES IN EXACT ORDER WE HAVE LISTED THE COLUMN NAMES*/

INSERT INTO employees 
(	
        birth_date,
        emp_no,
        first_name,
        last_name,
        gender, 
        hire_date
)VALUES
(
		'1995-02-02',
		 2,
        'Ruby',
        'Smith',
        'F',
        '2005-05-05'
); 


INSERT INTO employees
VALUES
(
		3,
        '1980-08-01',
        'Bob',
        'Marlie',
        'M',
        '2001-05-04'
),
(
	4,
    '1989-03-29',
    'Krsna',
    'Kaul',
    'M',
    '2016-09-25'
),
(
	5,
    '1995-05-02',
    'Rahul',
    'Prajapati',
    'M',
    '2021-09-25'
);

SELECT * FROM employees;


/* Copy table1 values in table2 using Insert */

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL
);

INSERT INTO departments
VALUES
(
	'd001',
    'IT'
);

INSERT INTO departments
VALUES
(
	'd002',
    'CE'
),
(
	'd003',
    'Mech'
);

CREATE TABLE departments_dup (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL
);

INSERT INTO  departments_dup
(
		dept_no,
        dept_name
)
SELECT * FROM departments;

SELECT*FROM departments_dup;


/*Update Statement*/

/*Update values in employees table*/
UPDATE employees
SET 
	birth_date = '1990-12-03',
    first_name = 'Russ', 
    last_name = 'Parkinson'
WHERE 
	emp_no = 1;
   
/*Check updated value*/ 

SELECT 
    *
FROM						
    employees
WHERE
	emp_no = 1;   
    
/*rollback will have an effect on the last execution you have performed*/
    
/*Delete Statement*/

DELETE FROM employees 
WHERE
    emp_no = 3;

DELETE FROM employees;   /*This will delete  all rows */


/*ON DELETE CASCADE : if a specific value from parent table's primary key has been deleted,
all recordd from the child table referring to this value will be removed as well*/  

/*DROP vs TRUNCATE vs DELETE*/
/*DROP : DELETE whole structure*/
/*TRUNCATE: delete all record, not a Structure. Gives output much quicker than delete*/
/*DELETE : removes records row by row*/
