/*Query 3*/
/* Write an SQL query to swap all 'f' and 'm' values 
(i.e., change all 'f' values to 'm' and vice versa) with a single update statement and 
no intermediate temporary tables.Note that you must write a single update statement, 
do not write any select statement for this problem.*/

create table salary(
	id int,
    name varchar(8),
	sex enum('m','f'),
    salary int, 
    primary key(id)
);

update salary
set sex = case 
		  when sex= 'm' then 'f' 
          else 'm'
          end ;
          
          
select *from salary;          