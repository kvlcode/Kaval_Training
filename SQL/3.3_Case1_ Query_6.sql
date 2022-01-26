/*Queries- 3.3 Case-1 */

/*Query 6*/

/*6. Make a list of each user and the highest-priced menu item he or she ordered.*/
	select u.*,
		   max(oi.price) as highest_priced_item
			from user u
				 join 
                 item i on u.id = i.user_id
				 join 
                 order_item oi on i.user_id = oi.item_id
				 group by u.id;