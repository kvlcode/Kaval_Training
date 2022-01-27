/* Question 1*/

/*Write an SQL query to report the respective department name and number of
students majoring in each department for all departments in the
Department table (even ones with no current students).*/

		select d.dept_name,
			   count(s.dept_id) as student_number
               from  Student s
					 right join 
                     Department d on s.dept_id = d.dept_id
                     group by d.dept_name
                     order by student_number desc, d.dept_name asc;
