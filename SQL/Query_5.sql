/*Query_5*/

/*Write an SQL query to report all customers who never order anything. Return the result table in any order.*/
  create table customers(
	id int,
    name varchar(24),
    primary key(id)
);


create table orders
(
	id int,
    customer_id int,
    primary key(id),
    foreign key(customer_id) references customers(id)
);

select c.name as Customers
from customers c
	 left join
     orders o on c.id = o.customer_id
	 where  o.customer_id is null;	