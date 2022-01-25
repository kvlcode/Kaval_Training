/*Queries- 3.3 Case-1 */

/*Query 1*/

/* Total income of Restaurant till now.*/
	
select 
		sum(grand_total)
	from
		user_order
	where
		status = 1;