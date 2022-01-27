/*Question 7*/

/*Write an SQL query to find the team size of each of the employees.
Return result table in any order.*/

		select
			e1.employee_id, 
			COUNT(e1.team_id) as team_size
		from employee e1
			  inner join
			 employee e2 on e1.team_id = e2.team_id
			 group by e1.employee_id
			 order by e1.employee_id;
