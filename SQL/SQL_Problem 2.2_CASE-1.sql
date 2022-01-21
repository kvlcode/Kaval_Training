/*SQL Problem 2.2 Case-1*/

create table weather(
	id            int(8),     
    record_date    date,    
    temperature   int(8),
	primary key(id)
);
/*Values inserted via GUI*/

select*from weather;

select w1.id 
from weather w1, weather w2
where  w2.temperature < w1.temperature
		and 
	TO_DAYS(w1.record_date)-TO_DAYS(w2.record_date)=1;

 