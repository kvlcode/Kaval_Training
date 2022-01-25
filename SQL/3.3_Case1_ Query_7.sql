/*Queries- 3.3 Case-1 */

/*Query 7*/

/* Retrieve the name of a chef who prepares more recipes than any other chef.*/
		select u.first_name
			   from user u
					inner join 
					item_chef c on u.id = c.chef_id
					group by c.chef_id
					order by count(*) desc limit 1;