/*Queries- 3.3 Case-2 */

/*Query 3*/
/*List out all the polls which are currently active.*/
	
    select id, 
	   title
       from poll where ends_at = NULL;