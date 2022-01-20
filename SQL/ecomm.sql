create database eCommerce_db;
use ecommerce_db;

CREATE TABLE user_detail(
    user_id BIGINT(20)		NOT NULL,
    first_name VARCHAR(50)  NOT NULL,
    middle_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    mobile VARCHAR(15)		NOT NULL,
    email VARCHAR(50)		NOT NULL,
    password_hash VARCHAR(32) NOT NULL,
    user_admin TINYINT(1)  NOT NULL,
    vendor TINYINT(1)	NOT NULL,
    registered_at DATETIME,
    last_login DATETIME,
    intro TINYTEXT,
    profile TEXT,
    PRIMARY KEY(user_id)

);

INSERT INTO user_detail
VALUES (1,'Ram','Prasad','Verma','9865325287','abc@gmail.com','Asd@123',1 , 0 ,'2019-11-24 10:10:53.163','2022-01-10 10:10:53.163','Ram Verma','Active');
INSERT INTO user_detail
VALUES (2,'Harshil','Alpeshbhai','Gajjar','9865325288','abcd@gmail.com','Asdf@123',1 , 0 ,'2018-11-25 10:08:53.163','2021-01-10 10:10:53.163','Harshil Gajjar','inactive'),
		(3,'Harsh','Kalpeshbhai','Gajjar','9865325277','abcde@gmail.com','Asdfg@123',0 , 1 ,'2008-11-25 10:08:53.163','2021-01-10 10:10:53.163','Harsh Gajjar','inactive');
		
SELECT * FROM user_detail;


CREATE TABLE category (
    category_id BIGINT(20) NOT NULL,
    parent_id BIGINT(20) NOT NULL,
    title VARCHAR(75) NOT NULL,
    mata_title VARCHAR(75) NOT NULL,
    slug VARCHAR(100) NOT NULL,
    content TEXT,
    PRIMARY KEY(category_id)
);

SELECT * FROM category;


CREATE TABLE product (
	product_id BIGINT(20) NOT NULL,
    user_id BIGINT(20) NOT NULL,
    title  VARCHAR(75) NOT NULL,
    meta_title  VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL,
    summary TINYTEXT NOT NULL,
    product_type SMALLINT(6) NOT NULL,
    sku VARCHAR(100) NOT NULL,
    price FLOAT NOT NULL,
    discount FLOAT NOT NULL,
    quantity SMALLINT(6) NOT NULL,
    shop TINYINT(1) NOT NULL,
    created_at DATETIME,
	updateded_at DATETIME,
	published_at DATETIME,
	start_at DATETIME,
    ends_at DATETIME,
    content TEXT,
    PRIMARY KEY(product_id),
    FOREIGN KEY (user_id) REFERENCES user_detail(user_id)
);

SELECT * FROM product;


CREATE TABLE product_category(
    product_id BIGINT(20),
    category_id BIGINT(20),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)   
    
);


CREATE TABLE product_review(
    product_review_id BIGINT(20) NOT NULL,
    product_id BIGINT(20) NOT NULL,
    parent_id BIGINT(20),
    title VARCHAR(100),
    rating SMALLINT(6),
    published TINYINT(1),
    created_at DATETIME,
	published_at DATETIME,
    content TEXT,
    PRIMARY KEY(product_review_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE cart(
    cart_id BIGINT(20) NOT NULL,
    user_id BIGINT(20),
    session_id VARCHAR(100) NOT NULL,
    token VARCHAR(100),
    cart_status SMALLINT,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    mobile VARCHAR(15),
    email VARCHAR(50),
    line1 VARCHAR(50),
    line2 VARCHAR(50),
    city VARCHAR(50),
    province VARCHAR(50),
    country VARCHAR(50),
    created_at DATETIME,
    updated_at DATETIME,
    content TEXT,
    PRIMARY KEY(cart_id),
    FOREIGN KEY (user_id) REFERENCES user_detail(user_id)
    
);


CREATE TABLE cart_item(
    cart_item_id BIGINT(20) NOT NULL,
    product_id BIGINT(20),
    cart_id BIGINT(20),
    sku VARCHAR(100),
    price FLOAT,
    discount FLOAT,
    quantity SMALLINT(6),
    active TINYINT(1),
    created_at DATETIME,
    updated_at DATETIME,
    content TEXT,
    PRIMARY KEY(cart_item_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (cart_id) REFERENCES cart(cart_id)

);

CREATE TABLE user_order(
    order_id BIGINT(20) NOT NULL,
    user_id BIGINT(20),
    session_id VARCHAR(100),
    token VARCHAR(100),
    status SMALLINT(6),
    sub_total FLOAT,
    item_discount FLOAT,
    tax FLOAT,
    promo VARCHAR(50),
    discount FLOAT,
    grand_total FLOAT,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    mobile VARCHAR(15),
    email VARCHAR(50),
    line1 VARCHAR(50),
    line2 VARCHAR(50),
    city VARCHAR(50),
    province VARCHAR(50),
    country VARCHAR(50),
    created_at DATETIME,
    updated_at DATETIME,
    content TEXT,
    PRIMARY KEY(order_id),
    FOREIGN KEY (user_id) REFERENCES user_detail(user_id)

);


CREATE TABLE order_item(
    order_item_id BIGINT(20) NOT NULL,
    product_id BIGINT(20),
    order_id BIGINT(20),
    sku VARCHAR(100),
    price FLOAT,
    discount FLOAT,
    quantity SMALLINT(6),
    created_at DATETIME,
	updateded_at DATETIME,
    content TEXT,
    PRIMARY KEY(order_item_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (order_id) REFERENCES user_order(order_id)
    
);

CREATE TABLE transaction(
    transaction_id BIGINT(20) NOT NULL,
    user_id BIGINT(20),
    order_id BIGINT(20),
    tran_code VARCHAR(100),
    tran_type SMALLINT(6),
    tran_mode SMALLINT(6),
    tran_status SMALLINT(6),
    created_at DATETIME,
    updated_at DATETIME,
    content TEXT,
    PRIMARY KEY(transaction_id),
	FOREIGN KEY (user_id) REFERENCES user_detail(user_id),
    FOREIGN KEY (order_id) REFERENCES user_order(order_id)

);


CREATE TABLE tag(
    tag_id BIGINT(20) NOT NULL,
    title VARCHAR(75),
    mata_title VARCHAR(75),
    slug VARCHAR(100),
    content TEXT,
	PRIMARY KEY(tag_id)
    
);


CREATE TABLE product_tag(
    product_id BIGINT(20),
    tag_id BIGINT(20),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
	FOREIGN KEY (tag_id) REFERENCES tag(tag_id)
	
);

CREATE TABLE product_meta(
    product_meta_id BIGINT(20),
    product_id BIGINT(20),
    meta_key VARCHAR(50),
    content TEXT,
     PRIMARY KEY(product_meta_id)

);

ALTER TABLE category
ADD foreign key(parent_id) references category(category_id);

ALTER TABLE product_review
add foreign key(parent_id) references product_review(product_review_id);















