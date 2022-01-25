/*Queries- 3.3 Case-2 */

/*Query 5*/

/*List out all the users whose email provider is not google.*/
		select 	*
				from user 
                where email not like '%gmail.com';