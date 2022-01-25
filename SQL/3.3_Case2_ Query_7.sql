/*Queries- 3.3 Case-2 */

/*Query 7*/

/* List out all the users who did not answer any poll yet.*/
	select  u.id, 
			u.first_name
           from user u
				left join 
                poll_vote pv on u.id = pv.user_id
                where u.id not in (pv.user_id);