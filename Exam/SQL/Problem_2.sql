/*Question 2*/

/*Write an SQL query to find the customer_number for the customer who has
placed the largest number of orders.*/

select  customer_number
		from  ( select customer_number, count(order_number)
				 from orders
				 group by customer_number)  o1 
	    order by  customer_number desc;

