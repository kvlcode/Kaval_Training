/*SQL Problem 2.2 Case-2*/

create table logs(
	id  int(8),     
    num varchar(8),
	primary key(id)
);

/*Values inserted via GUI*/

select*from logs;

select l1.num as consecutive_nums 
from logs l1
		JOIN 
	 logs l2 ON  l1.num = l2.num
		JOIN
      logs l3 ON l2.num =l3.num  
where l2.id-l1.id = 1 AND l3.id-l2.id = 1;


/*SELECT num FROM Logs GROUP BY num HAVING COUNT(num) > 3 : WRONG */
				
