/*Day13*/
/*SQL Problem 2.1 Case-1*/

CREATE TABLE person(
	id INT(8),
    email VARCHAR(32),
    PRIMARY KEY(id)
    
    );
    
 INSERT INTO person
 VALUES (1,'abc@gmail.com'),
		(2,'abcd@gmail.com'),
        (3,'abc@gmail.com'),
        (4,'lmn@gmail.com'),
        (5,'asd@gmail.com'),
        (6,'lmn@gmail.com');
INSERT INTO person
VALUES (7,'lmn@gmail.com'); 
INSERT INTO person
VALUES (8,'abcd@gmail.com');
 
 
SELECT 
		email, count(email) AS Repeatetion 
	FROM 
        person  
	GROUP BY email HAVING COUNT(email)>1;       