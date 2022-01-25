/*Queries- 3.3 Case-2 */

/*Query 6*/

/*List out all the polls which are published in 2021.*/
	select 	id, 
			title
			from poll where YEAR(published_at) = 2021;