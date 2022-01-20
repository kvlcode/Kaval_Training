/*DAY12*/
/*Queries*/

SELECT*FROM category WHERE category_id in (SELECT parent_id FROM category);

/*Get all the products which are having
 price between 50 to 100*/
SELECT*FROM product WHERE price BETWEEN 50 and 100;

/*Get all the products sorted based on created date
Get total sub total of all the orders*/
SELECT*FROM product ORDER BY  created_at;

/*Get total sub total of all the orders*/
SELECT SUM(sub_total) FROM user_order;

/*Get total discount applied in all the orders*/
SELECT SUM(discount) FROM user_order;

/*Get data of particular user that how many orders they are having*/
/*SELECT COUNT(*) FROM user_order WHERE user_id =2;*/

select  user_id,COUNT(id)
from order_details 
group by user_id;

/*Get orders list which is having promo applied in that order
select id from order*/
SELECT * FROM user_order WHERE promo IS NOT NULL;

/*Get current active carts details*/
SELECT*FROM cart WHERE cart_status =active;


/*get the list of product ids which are having multiple categories*/
Select productId from product_category
group by productId
having count(categoryId)>1;


/*List all the product names which are assigned to category ID 1*/
SELECT p.title
FROM product p
	INNER JOIN
    product_category c ON p.product_id = c.product_id
 WHERE  c.category_id =1; 
 
 
 /*Get the active product count which is assigned to category ID 2.*/
SELECT COUNT(p.product_id)
FROM product p
	INNER JOIN
    product_category c ON p.product_id = c.product_id
 WHERE  c.category_id =2;
 
 
 /*Show all category names which are assigned to Product ID 1.*/
SELECT c.title
FROM category c
	INNER JOIN
    product_category p ON p.category_id = c.category_id
 WHERE  p.product_id =1;
 
 
 
 /*List out all the tag names which are assigned to Product ID 1.*/
SELECT t.title
FROM product_tag pt
	INNER JOIN
    tag t ON pt.tag_id = t.tag_id
 WHERE  pt.product_id =1;

/*Show product reviews with product name if product is active*/

SELECT r.title
FROM product p
	INNER JOIN
    product_review r ON p.product_id = r.product_id ;


/*List out product names and product ids which have at least one order available.*/
SELECT p.product_id, p.title
FROM product p
	INNER JOIN
    order_item o ON p.product_id = t.product_id
 WHERE  COUNT(p.product_id)>1;



/*Show the product names, ids and total qty purchased so far for each product.*/


/*Show User ID and Order ID associated with that User.*/
SELECT u.user_id, o.order_id
FROM useer u
	INNER JOIN
    user_order o ON u.user_id = o.order_id
 WHERE  COUNT(p.product_id)>1;


/*Show total subtotal of all the orders for user id 1*/
SELECT SUM(o.subtotal)
FROM user_order o
	INNER JOIN
	user_detail u ON u.user_id = o.user_id
WHERE o.user_id =1;	
