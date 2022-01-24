/*Query 4*/
/*Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Return the result table in any order.*/

create table person(
	id int,
    email varchar(32),
    primary key(id)

);

delete t1
		from person t1,
			 person t2
		where t1.id > t2.id 
				and 
			 t1.email = t2.email; 
             
             
select * from person;
          
            
             