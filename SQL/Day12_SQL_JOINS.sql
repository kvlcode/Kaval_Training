/*Day12 JOIN*/

USE database1;

CREATE TABLE department_1 (
    dept_no     CHAR(4),
    emp_no 		INT,
    from_date 	DATE,
    to_date 	DATE
);

CREATE TABLE department_2 (
    dept_no     CHAR(4),
    dept_name	VARCHAR(40)
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
        
        /*INNER JOIN*/
 SELECT a.dept_no, a.emp_no, b.dept_name
 FROM department_1 a
 INNER JOIN
 department_2 b on a.dept_no = b.dept_no;
 
 /*a for department_1, b for department_2*/
 
 
 SELECT a.dept_no, a.emp_no, b.dept_name
 FROM department_1 a
 INNER JOIN
 department_2 b on a.dept_no = b.dept_no
 ORDER BY b.dept_no;
        
        
        
        
		