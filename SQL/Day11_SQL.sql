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
    


