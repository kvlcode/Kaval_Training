/*Query 7*/

/*Create a database schema for student grade system.
It contains student data and their grade of each subject based on the different semester.*/

create database student_grade_system;
use student_grade_system;

create table branch(
	id int,
    branch_name varchar(24),
    primary key(id) 
);


create table student(
	id int,
    branch_id int,
    branch_name varchar(24),
    first_name varchar(16),
    middle_name varchar(16),
    last_name varchar(16),
    mobile int(10), 
    email varchar(24),
    address varchar(100),
    current_semester tinyint(1),
    primary key(id),
    foreign key(branch_id) references branch(id)

);


create table subject(
	id int,
    name varchar(16),
    credit tinyint(1),
	subject_code int(6),
    description varchar(32),
    primary key(id)

);

create table student_grade(
	id int,
    student_id int,
    subject_id int,
    subject_name varchar(24),
	grade char(2),
    examination_year smallint(4),
    foreign key(student_id) references student(id),
    foreign key(subject_id) references subject(id)
	
);
