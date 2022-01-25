/*Queries- 3.3 Case-2 */

/*Query 2*/

/* List out all the categories which is having multiple poll questions under it.*/
		select 
				c.* 
			from category c 
				 join 
                 poll_category pc on c.id = pc.category_id
                 join
                 poll p on pc.poll_id = p.id
                 join
                 poll_question pq on p.id = pq.poll_id
                 group by pq.poll_id having count(pq.poll_id) > 2;