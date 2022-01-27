/*Question 4*/

/*Write an SQL query to report the customer ids from the Customer table
that bought all the Products in the Product table. Return the result
table in any order.*/


	   select
			 customer_id
		from Customer
		group by customer_id 
			having count(product_key) = (select count(*) from Product);
	
        