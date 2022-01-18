CREATE DATABASE IF NOT EXISTS E_Commerce;

USE E_Commerce;

CREATE TABLE category(
	category_id INT 			NOT NULL,
    category_parent_id INT      NOT NULL,
    category_child_id INT       NOT NULL,
    category_name VARCHAR(50) 	NOT NULL,
    product_id INT(5)			NOT NULL,
    PRIMARY KEY(category_id)

);


CREATE TABLE product (
    product_id 		INT AUTO_INCREMENT 	NOT NULL,
    product_name 	VARCHAR(50)		 	NOT NULL,
    unit_price 		INT(7) 				NOT NULL,
    product_description VARCHAR(300) 	NOT NULL,
    category_id	 	INT 				NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id)
        REFERENCES category (category_id)
        ON DELETE CASCADE
);

CREATE TABLE customer (
    customer_id 	INT 		NOT NULL,
    first_name 		VARCHAR(10) NOT NULL,
    last_name 		VARCHAR(10) NOT NULL,
    email_id		VARCHAR(25)	NOT NULL,
    mobile_number 	INT(10) 	NOT NULL,
    customer_password VARCHAR(20)   NOT NULL,
    PRIMARY KEY (customer_id)
);


CREATE TABLE address (
    address_id INT 				NOT NULL,
    customer_id INT 			NOT NULL,
    address_line1 VARCHAR(50) 	NOT NULL,
    address_line2 VARCHAR(50) 	NOT NULL,
    city VARCHAR(8) 			NOT NULL,
    postal_code CHAR(5) 		NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
        ON DELETE CASCADE,
    PRIMARY KEY (address_id)
);


CREATE TABLE orders (
order_id 			INT NOT NULL,
payment_id 			INT NOT NULL,
order_quantity 		INT NOT NULL,
product_id 			INT NOT NULL,
address_id 			INT NOT NULL,
customer_id 		INT NOT NULL,

PRIMARY KEY (order_id),
FOREIGN KEY (product_id)
        REFERENCES product (product_id)
        ON DELETE CASCADE,
FOREIGN KEY (address_id)
        REFERENCES address (address_id)
        ON DELETE CASCADE,        
FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
        ON DELETE CASCADE
        
);








