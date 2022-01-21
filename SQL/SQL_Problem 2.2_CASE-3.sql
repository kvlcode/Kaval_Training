/*SQL Problem 2.2 Case-3*/

create table employee_info(
	id int,
    salary int,
    primary key(id)
);


select*from employee_info;

/*For n=4th */

Select 
		Salary as nth_highest_salary 
        from employee_info order by Salary DESC limit 3,1;     /*limit n-1,1 for nth*/


