/*Queries- 3.3 Case-1 */

/*Query 8*/

/* Retrieve the amount of subtotal for all day on 9th November 2021. (It does not include the total, formula: item price * ordered qty).*/
		
        select (price * quantity) as subtotal
				from order_item
				 where date(created_at) = '2021-11-09';