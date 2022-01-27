
/*Question 5*/

/*Write a SQL query to find the highest grade with its corresponding course
for each student. In case of a tie, you should find the course with the
smallest course_id.
Return the result table ordered by student_id in ascending order.*/

select student_id,
	   course_id,
	   grade
	   from Enrollments 
       where (student_id, grade) 
				in (select  
						student_id,
						max(grade)
						from Enrollments
						group by student_id)
       group by student_id                     
       order by student_id asc;
	