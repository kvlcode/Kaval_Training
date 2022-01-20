/*DAY12*/
/*Queries*/

/*1.Get all the categories which are having at least one sub category*/
SELECT*FROM category WHERE category_id in (SELECT parent_id FROM category);

/*2.Get all the products which are having
 price between 50 to 100*/
SELECT*FROM product WHERE price BETWEEN 50 and 100;

/*3.Get all the products sorted based on created date
Get total sub total of all the orders*/
SELECT*FROM product ORDER BY  created_at;

/*4.Get total sub total of all the orders*/
SELECT SUM(sub_total) FROM user_order;

/*5.Get total discount applied in all the orders*/
SELECT SUM(discount) FROM user_order;

/*6.Get data of particular user that how many orders they are having*/
/*SELECT COUNT(*) FROM user_order WHERE user_id =2;*/

select  user_id,COUNT(id)
from order_details 
group by user_id;

/*7.Get orders list which is having promo applied in that order
select id from order*/
SELECT * FROM user_order WHERE promo IS NOT NULL;

/*8.Get current active carts details*/
SELECT*FROM cart WHERE cart_status = 1;


/*9. get the list of product ids which are having multiple categories*/
Select productId from product_category
group by productId
having count(categoryId)>1;

/* 10.Get all the product ids which is having more than 2 reviews */
	

/*11.Get all the products which are updated in last 2 hours*/


/*12.Get products which is having qty between 20 to 30*/
select title 
from product
where quantity between 20 AND 30; 

/*==============================JOIN QUERIES====================================*/

/* 1.List all the product names which are assigned to category ID 1*/
SELECT p.title
FROM product p
	INNER JOIN
    product_category c ON p.product_id = c.product_id
 WHERE  c.category_id =1; 
 
 
 /* 2.Get the active product count which is assigned to category ID 2.*/
SELECT COUNT(p.product_id)
FROM product p
	INNER JOIN
    product_category c ON p.product_id = c.product_id
 WHERE  c.category_id =2;
 
 
 /* 3.Show all category names which are assigned to Product ID 1.*/
SELECT c.title
FROM category c
	INNER JOIN
    product_category p ON p.category_id = c.category_id
 WHERE  p.product_id =1;
 
 
 
 /* 4.List out all the tag names which are assigned to Product ID 1.*/
SELECT t.title
FROM product_tag pt
	INNER JOIN
    tag t ON pt.tag_id = t.tag_id
 WHERE  pt.product_id =1;

/* 5.Show product reviews with product name if product is active*/
SELECT r.title
FROM product p
	INNER JOIN
    product_review r ON p.product_id = r.product_id ;


/* 6.List out product names and product ids which have at least one order available.*/
SELECT p.product_id, p.title
FROM product p
	INNER JOIN
    order_item o ON p.product_id = t.product_id
 WHERE  COUNT(p.product_id)>1;


/*7.Show the product names, ids and total qty purchased so far for each product.*/


/* 8.Show User ID and Order ID associated with that User.*/
SELECT u.user_id, o.order_id
FROM useer u
	INNER JOIN
    user_order o ON u.user_id = o.order_id
 WHERE  COUNT(p.product_id)>1;


/* 9.Show total subtotal of all the orders for user id 1*/
SELECT SUM(o.subtotal)
FROM user_order o
	INNER JOIN
	user_detail u ON u.user_id = o.user_id
WHERE o.user_id =1;	

/*10.Show all the orders which are created on 19th Jan.*/
SELECT 
		*
	FROM orders 
    WHERE 
		MONTH(created_at) =1 AND DAY(created_at) = 19;


/*11.Show product names and their product ids which are placed in order id 1.*/
SELECT p.title, p.product_id
FROM product p
	JOIN
    order_item o ON p.product_id = o.order_id
    WHERE o.order_id =1;


/*12.List out the order of user ID 1 which has a discount greater than 100.*/
SELECT*FROM user_order WHERE user_id =1 AND discount>100;
