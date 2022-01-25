/*Queries- 3.3 Case-1 */

/*Query 5*/

/* List out total order placed by each User.*/
	select u.id,
		   sum(o.user_id)
		    from user u
				 join
				user_order o on u.id = o.user_order
				group by o.user_id;