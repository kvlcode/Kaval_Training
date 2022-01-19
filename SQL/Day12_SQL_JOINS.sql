/*Day12 JOIN*/

USE database1;

CREATE TABLE department_1 (
    dept_no    CHAR(4),
    emp_no 		INT,
    from_date 	DATE,
    to_date 	DATE
);

CREATE TABLE department_2 (
    dept_no     CHAR(4),
    dept_name	VARCHAR(40)
);

CREATE TABLE department_3 (
    dept_name	VARCHAR(40),
    no_of_members INT(8)
);



INSERT INTO department_1
VALUES('d001', 100, '1990-01-01', '2012-02-02'),
	  ('d002', 202, '1980-01-05', '2002-05-02'),
      ('d003', 303, '1998-04-01', '2010-02-04'),
      ('d004', 404, '1997-03-01', '2020-01-02'),
      ('d005', 505, '1995-04-04', '2004-07-07');
      
INSERT INTO department_2
VALUES ('d002', 'ME'),  
		('d001', 'IT'),
        ('d005', 'AE'),
        ('d006', 'EE'),
        ('d007', 'CE');
        
INSERT INTO department_3
VALUES ('ME',50),  
		('IT',60),
        ('AE',33),
        ('EE',40),
        ('CE',10);
        
        
        
        /*INNER JOIN*/
 SELECT a.dept_no, a.emp_no, b.dept_name
 FROM department_1 a
 INNER JOIN
 department_2 b on a.dept_no = b.dept_no;
 
 /*a for department_1, b for department_2*/
 /*JOIN = INNER JOIN*/
 
 SELECT a.dept_no, a.emp_no, a.from_date, a.to_date, b.dept_name
 FROM department_1 a
 INNER JOIN
 department_2 b on a.dept_no = b.dept_no
 ORDER BY b.dept_no;
        
 /*ADD Duplicate Values */
 INSERT INTO department_1
 VALUES('d002', '203', '1988-02-06', '2020-01-05');
 
 INSERT INTO department_2
 VALUES('d007', 'EC');
 
 SELECT a.dept_no, a.emp_no, a.from_date, a.to_date, b.dept_name
 FROM department_1 a
 INNER JOIN
 department_2 b on a.dept_no = b.dept_no
 ORDER BY a.dept_no;
 
 
 
 /*LEFT JOIN = LEFT OUTER JOIN*/
SELECT a.dept_no, a.emp_no, a.from_date, a.to_date, b.dept_name
FROM department_1 a
LEFT JOIN
department_2 b on a.dept_no = b.dept_no
group by a.emp_no
ORDER BY a.dept_no;

/*Make department_2 left*/
SELECT b.dept_no, a.emp_no, a.from_date, a.to_date, b.dept_name
FROM department_2 b 
LEFT JOIN
department_1 a on a.dept_no = b.dept_no
ORDER BY a.dept_no;




/*RIGHT JOIN*/
SELECT a.dept_no, a.emp_no, b.dept_name
FROM department_1 a
RIGHT JOIN
department_2 b on a.dept_no = b.dept_no
ORDER BY a.dept_no; 




/*CROSS JOIN*/
/*CROSS JOIN produces a result set which is the number of rows in the 
first table multiplied by the number of rows in the second table if no WHERE clause*/

SELECT*FROM department_1;
SELECT*FROM department_2;

SELECT *
FROM department_1
	CROSS JOIN 
    department_2;


SELECT *
FROM department_1
	CROSS JOIN 
    department_2
    WHERE department_1.dept_no = department_2.dept_no;
    
  
  
  
/*JOIN more than two table*/
/*JOIN department_1, department_2, department_3*/ 

SELECT 
		d1.dept_no,
        d1.emp_no,
		d2.dept_name,
        d3.no_of_members
from       
		department_1 d1
			JOIN
        department_2 d2	ON d1.dept_no = d2.dept_no
			JOIN
        department_3 d3  ON d2.dept_name = d3.dept_name;  
    
    
    
/*UNION*/
    
/*The UNION operator is used to combine the result-set of two or more SELECT statements.
-> Every SELECT statement within UNION must have the same number of columns
-> The columns must also have similar data types
-> The columns in every SELECT statement must also be in the same order*/
    
SELECT dept_no FROM department_1
UNION
SELECT dept_no FROM department_2;


/*UNION ALL*/
/*The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL*/

SELECT dept_no FROM department_1
UNION ALL
SELECT dept_no FROM department_2;





        
        
        
        
		