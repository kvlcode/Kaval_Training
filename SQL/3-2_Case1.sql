/*3.2 Case 1*/

/*Question 1: Write an SQL query to report the first login date for each player. 
Return the result table in any order.*/

create table activity(
	player_id int,
    device_id int,
    event_date date,
    games_played int,
    Constraint pk_activity Primary Key (player_id, event_date)
);

select*from activity;

select 
		player_id, 
        event_date as first_login 
        from activity  
			group by player_id;


/*Question 2: Write an SQL query to report the device that is first logged in for each player.
 Return the result table in any order.*/
 
 select 
		player_id, 
        device_id
        from activity  
			group by player_id;
        
	
 /*Question 3: Write an SQL query to report for each player and date, 
 how many games played so far by the player. 
 That is, the total number of games played by the player until that date. 
 Check the example for clarity. Return the result table in any order*/           
    
    /*STILL NOT COMPLETED*/
select a1.player_id,
	   a1.event_date,
       a1.games_played as games_played_so_far 
       from activity a1
			inner join 
			activity a2 on 
            where ;












