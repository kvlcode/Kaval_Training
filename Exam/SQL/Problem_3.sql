/*Question 3*/

/*Write a SQL query for a report that provides the pairs (actor_id,
director_id) where the actor has cooperated with the director at least
three times.
*/

select actor_id, director_id
		from ActorDirector
        group by actor_id, director_id having count(*) >= 3;