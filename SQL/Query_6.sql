/*Query 6*/
/*Write an SQL query to create index on the email column*/

create table index_demo(
	id int,
    email varchar(24)
);

create 	index 
		email_index
		on index_demo(email);