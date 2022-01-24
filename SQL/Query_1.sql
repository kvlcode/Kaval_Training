/*Query 1*/
/* Create a database structure for employee leave application. 
It should include all the employee's information as well as their leave information.*/

create database employee_leave;

create table employee_details(
	id int,
    first_name varchar(16),
	middle_name varchar(16),
    last_name varchar(16),
    mobile int,
    email varchar(32),
    birth_date date,
    gender enum('M','F'),
    hire_date date,
	primary key(id)	
);

create table leave_info(
	id int,
    emp_id int,
    status tinyint(1),
    reason varchar(100),
    from_date date,
    to_date date,
    days int,
    paid_leaves int,
    aprproved_date date,
    approved_by varchar(16),
    primary key(id),
    foreign key(emp_id) references employee_details(id)
    
); 

create table leave_application(
	id int,
	emp_id int,
	reason varchar(100),
    from_date date,
    to_date date,
    days int,
    status tinyint(1),
    primary key(id),
    foreign key(emp_id) references employee_details(id)
    	
);