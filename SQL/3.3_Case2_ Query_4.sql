/*Queries- 3.3 Case-2 */

/*Query 4*/

/* List out all the users who is not logged in since last week.*/
	select  id, first_name
           from user where WEEK(current_date()) - WEEK(last_login) =1;