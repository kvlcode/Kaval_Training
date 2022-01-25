/*Queries- 3.3 Case-1 */

/*Query 3*/

/*3. List of all menus with its menu items.*/

select 	m.*,
		mi.*
		from  menu m
				join
			   menu_items mi on m.id = mi.menu_id
				 join 
			    item i on mi.item_id = i.id;