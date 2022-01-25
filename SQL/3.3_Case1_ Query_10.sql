/*Queries- 3.3 Case-1 */

/*Query 10*/

/* List out the menu items which are preferred by the customer at dinner time.*/

	select i.*
		  from item i
		  join order_item oi on i.id=oi.order_id
		  where time(created_at) between '19:00:00' AND '22:00:00';