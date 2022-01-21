/*Day 14*/

/*Three type of variables local, session, global*/

/*Local variable: It is visible only in BEGIN-END block, can't be accessed outside block */
/*DECLARE is a keayword that can be used when creating local variables only*/


/*begin

DECLARE v_avg DECIMAL(10,2);


end*/



/*Session variables: a series of information exchange interactions, 
or a dialogue, between a computer and a user
-> A variable that exists only for the session in which you are operating*/

SET @s_var1 = 3;	 /*@ indicates that we are creating session variable*/
SELECT @s_var1;


/*global variables : global variables apply to all connections related to a specific server*/

SET GLOBAL var_name = 1000;
SET @@global.var_name = 200;

/*predefined global variables*/
.max_connections()
.max_join_size()

/*User-Defined vs System Variables*/
/*user-defined: variables that can be set by the user manually : local & session var.
  system: variables that are pre-defined on our system the MySQL server : session & global var		

*/






