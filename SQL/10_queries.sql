/*Queries*/

/*Newsletter Database*/

/*1.Get all the users who created in the last 15 days.*/

select u.first_name,u.last_name
from user u
	 join 
     address a on u.id=a.user_id
	 where a.created_at > NOW()- interval 15 day;

/*select * from user where PERIOD_DIFF(created_at, now()) <= 15;*/


/*2.Get all the users with their addresses who are active subscribers.*/
select u.first_name, a.line1, a.line2, a.city
from user u
	 inner join
     address a on u.id = a.user_id
     inner join
	subscriber s on a.user_id = s.user_id 
    where s.active = 1;


/*3.Get all the users who subscribed in the last 30 days and are active currently.*/
select u.first_name
from user u
	inner join 
    subscriber s on u.id = s.user_id
    where  s.created_at  >= now() -interval 30 day AND s.active =1;
    

/*4.Get all the users email who are currently in the active mailing list.*/
select s.email
from subscriber s 
     inner join
     mailinglist m on s.id = m.subscriber_id
     where m.active =1;

/*5.Get all the users email and newsletter title for which newsletter triggered today.*/
          
SELECT 
    u.email, n.title
FROM
    user u
        JOIN
    news_letter n ON u.id = n.user_id
WHERE
    n.published_at > CURRENT_DATE();


/*Employee Database*/

/* 1.  Get the users which are having permission id assigned as 2.*/

select u.id, u.first_name
from user u
	 inner join 
     role r on u.role_id = r.id
     inner join
     role_permission rp on r.id = rp.role_id
     where rp.permission_id = 2;


/*2.Get a list of users who are working in organization id 1 along with organization title..*/
	
    select u.id, u.first_name,o.title
    from user u
		 inner join 
         employee e on u.id = e.user_id
         inner join 
         organization o on e.organization_id = o.id
         where  o.id =1;
	


/*3.Get all the employee emails who are created in the last two dates and have permission id 1.*/
		select u.email
        from user u 
				join 
             employee e on u.id = e.user_id
                join 
             role r on r.id = e.role_id
				join
			 role_permission rp on r.id = rp.role_id
         where e.created_at >= now() - interval 2 day  AND  rp.permission_id=1;   

/*4.Get the active count of employees working in organization id 1.*/
	select count(e.id) as  Employee_count
    from employee e
		inner join 
        organization o on e.organization_id = o.id
        where o.id =1 AND e.status =1;


/*5.Get all the employee emails who were working last year.*/
select u.email
from user u
	 inner join 
     employee e on u.id = e. user_id
     where  YEAR(current_date()) - YEAR(e.ends_at) = 1;
