/*Queries- 3.3 Case-1 */

/*Query 2*/

/* Customer who visited the restaurant more than twice.*/

select  u.id,
		u.first_name
	from user u
			join
		 user_order o on u.id = o.user_id
		  group by o.user_id having count(o.user_id)>2;