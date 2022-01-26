/*Queries- 3.3 Case-2 */

/*Query 1*/

/*List out all questions with it’s answer which is having maximum vote*/
select q.content as Questions, 
	   a.content as Answer
		from poll_question q
		join poll_answer a 
		on q.id = a.question_id
		join poll_vote v 
		on v.question_id = a.question_id
		group by v.question_id;