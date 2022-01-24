/*Query 2*/

/*Write an SQL query to report the movies with an odd-numbered ID and 
a description that is not "boring". Return the result table ordered by rating in descending order.*/

create table cinema(
	id int,
    movie varchar(32),
    description varchar(32),
    rating float(8,1),
    primary key(id)
);

select id, movie, description, rating
from cinema
where id%2 <> 0 AND description <> 'boring';
