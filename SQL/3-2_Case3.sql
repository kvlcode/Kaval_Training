/*3.2 Case 3*/
/*Write an SQL query to report the name, population, and area of the big countries.*/

create table world(
	name varchar(24),
    continent varchar(24),
    area int,
    population int,
    gdp bigint,
    primary key(name)
);

select* from world;

select name,
	   population, 
	   area 
       from world 
       where area >=3000000 OR population >= 25000000;
      
       



