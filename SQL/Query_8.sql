/*Query 8*/
/*Write an SQL query to report the first name, last name, city, and state of each person 
in the Person table. If the address of a personId is not present in the Address table, 
report null instead. Return the result table in any order.*/

create table person_1(
	person_id int,
    last_name varchar(16),
    first_name varchar(16),
	primary key(person_id)

);

select * from person_1;

create table  address(
		address_id int,
        person_id int,
        city varchar(16),
        state varchar(16),
        primary key(address_id)
);

select * from address;

select 
	p1.first_name,
	p1.last_name, 
	a.city, 
	a.state
from person_1 p1
	 left join
     address a on p1.person_id = a.person_id;