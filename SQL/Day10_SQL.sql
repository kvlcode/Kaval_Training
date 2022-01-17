/*Select Statement*/ 

SELECT 
    *
FROM
    employees;

SELECT 
    first_name, last_name
FROM
    employees;

/*USING WHERE condition*/
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';
    
  /*AND operator*/  

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';

/*OR operator*/
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis'
        OR first_name = 'Elvis';


SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND gender = 'M'
        OR gender = 'F';

/*Precedence: AND > OR */

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');

/*IN , NOT-IN operator*/
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');

/*Like Operator*/
/*MySQL is case insensitive*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');    /* % is sequence of characters*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');       /*_ use to match single character */
    

/*BETWEEN.. AND..     help us desinate the interval to which a given value belongs*/    
 SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01' ;
    
    
   /*NOT BETWEEN    */ 
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01' ;    /*Gives values excluding given range*/
    
/*IS NULL*/
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;


/*IS NOT NULL*/

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
    

   

    
    
    
    

