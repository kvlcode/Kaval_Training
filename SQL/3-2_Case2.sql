/*3.2 Case 2*/

/*Write an SQL query to report all the classes that have at least five students.
 Return the result table in any order.*/
 
 create table courses(
	student varchar(8),
    class varchar(16),
	 constraint pk_courses primary key (student, class)
 );
 
 select*from courses;

 select 
		class 
	from 
        courses 
	group by class having count(class)>=5;