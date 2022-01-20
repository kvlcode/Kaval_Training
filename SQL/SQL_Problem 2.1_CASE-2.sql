/*DAY 13*/
/*SQL Problem 2.1 Case-2*/

CREATE TABLE employee(
	id INT,
    name VARCHAR(32),
    salary INT,
    department_id INT,
    PRIMARY KEY(id)
    
);
    
ALTER TABLE employee
ADD foreign key(department_id) references department(id);
    
    CREATE TABLE department(
	id INT,
    name VARCHAR(32),
    PRIMARY KEY(id)
    
    );
    /*Insert data using GUI in both tables*/
    
    SELECT*FROM department;
    SELECT*FROM employee;
    
  
SELECT  d.name AS Department,
		e1.name AS Employee,
	    e1.salary AS Salary
FROM employee e1
		INNER JOIN
        department d ON e1.department_id = d.id
		WHERE(
				SELECT COUNT(DISTINCT salary)
				FROM employee e2
				WHERE e2.salary > e1.salary
							AND 
						e1.department_id = e2.department_id) < 3;              
    
    
    