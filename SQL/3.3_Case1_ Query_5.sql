/*Queries- 3.3 Case-1 */

/*Query 5*/

/* List out total order placed by each User.*/
	select user_id,
		   count(*)
		    from 
				user_order 
				group by user_id;