/*Queries- 3.3 Case-1 */

/*Query 9*/

/* List out user along with the average amount spend at the restaurant.*/
	select 	u.*,
            avg(o.grand_total)
            from user u
				 join
                 user_order o on u.id = o.user_id
                 group by o.user_id;