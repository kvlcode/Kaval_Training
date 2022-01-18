/*Day11 Aggregate functions */

CREATE TABLE employees_detail (
    emp_no      INT             NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,   
    salary 		 INT  			NOT NULL,
    PRIMARY KEY (emp_no)
);

INSERT INTO employees_detail
VALUES
(1,'John','Smith','M','25000'),
(2,'Krsna','Kaul','M','50000'),
(3,'Meena','Nair','M','25000'),
(4,'Rahul','Prajapati','M','60000'),
(5,'Rohan','Carriappa','M','40000'),
(6,'Reena','Patel','F','30000'),
(7,'Surya','Bhatt','M','70000'),
(8,'Preet','Kashyap','F','50000'),
(9,'Rishabh','Arora','M','50000'),
(10,'Smit','Patel','M','30000');

SELECT*FROM employees_detail;

/*Count() Applicable on numeric and non numeric data*/
SELECT COUNT(salary) FROM employees_detail;
SELECT COUNT(*) FROM employees_detail;    /*Returns all rows*/

/*SUM() */
SELECT SUM(salary) FROM employees_detail;

/*MAX() & MIN()*/
SELECT MAX(salary) FROM employees_detail;
SELECT MIN(salary) FROM employees_detail;

/*AVG()*/
SELECT AVG(salary) FROM employees_detail;

/*COUNT(), AVG(), MIN(), MAX() & SUM() frequently used together with a GROUP BY clause */

/*ROUND()*/
SELECT ROUND(AVG(salary)) FROM employees_detail;

/*ROUND(#,DECIMAL_PLACES)*/
SELECT ROUND(AVG(salary),2) FROM employees_detail;



