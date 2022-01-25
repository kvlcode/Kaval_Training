create database restaurant;
use restaurant;


create table menu 
(
	id bigint(20),
	user_id bigint(20),
	title varchar(75),
	slug varchar(100),
	summary tinytext,
	type smallint(6),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)
     
);


create table user
(
	id bigint(20),
	first_name varchar(50),
	middle_name varchar(50),
	last_name varchar(50),
	mobile varchar(15),
	email varchar(50),
	password_hash varchar(32),
	admin tinyint(1),
	vendor tinyint(1),
	chef tinyint(1),
	agent tinyint(1),
	registered_at datetime,
	last_login datetime,
	intro tinyint,
	profile text,
	primary key(id)

);


create table item_chef
(
	id bigint(20),
	item_id bigint(20),
	chef_id bigint(20),
	active tinyint(1),
	primary key(id)

);


create table menu_item
(
	id bigint(20),
	menu_id bigint(20),
	item_id bigint(20),
	active tinyint(1),
	primary key(id)

);



create table item
(
	id bigint(20),
	user_id bigint(20),
	vendor_id bigint(20),
	title varchar(75),
	slug varchar(100),
	summary tinytext,
	type smallint(6),
	cooking tinyint(1),
	sku varchar(100),
	price float,
	quantity float,
	unit smallint(6),
	recipe text,
	instructions text,
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)

);


create table transaction
(
	id bigint(20),
	user_id bigint(20),
	vendor_id bigint(20),
	order_id bigint(20),
	code varchar(100),
	type smallint(6),
	mode smallint(6),
	status smallint(6),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)

);



create table ingredient
(
	id bigint(20),
	user_id bigint(20),
	vendor_id bigint(20),
	title varchar(75),
	slug varchar(100),
	summary tinytext,
	type smallint(6),
	sku varchar(100),
	quantity float,
	unit smallint(6),
	created_at datetime,
	updated_at datetime,
	content text,
    primary key(id)
);


create table recipe
(
	id bigint(20),
	item_id bigint(20),
	ingredient_id bigint(20),
	quantity float,
	unit smallint(6),
	instructions text,
	primary key(id)
);

create table booking_item
(
	id bigint(20),
	booking_id bigint(20),
	item_id bigint(20),
	sku varchar(100),
	price float,
	discount float,
	quantity smallint(6),
	unit smallint(6),
	status smallint(6),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)
);


create table order_item
(
	id bigint(20),
	order_id bigint(20),
	item_id bigint(20),
	sku varchar(100),
	price float,
	discount float,
	quantity float(6),
	unit smallint(6),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)


);


create table user_order
(
	id bigint(20),
	user_id bigint(20),
	vendor_id bigint(20),
	token varchar(100),
	status smallint(6),
	sub_total float,
	item_discount float,
	tax float,
	shipping float,
	total float,
	promo varchar(50),
	discount float,
	grand_total float,
	first_name varchar(50),
	middle_name varchar(50),
	last_name varchar(50),
	mobile varchar(15),
	email varchar(50),
	line1 varchar(50),
	line2 varchar(50),
	city varchar(50),
	province varchar(50),
	country varchar(50),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)
);


create table booking
(
	id bigint(20),
	table_id bigint(20),
	user_id bigint(20),
	token varchar(100),
	status smallint(6),
	first_name varchar(50),
	middle_name varchar(50),
	last_name varchar(50),
	mobile varchar(15),
	email varchar(50),
	line1 varchar(50),
	line2 varchar(50),
	city varchar(50),
	province varchar(50),
	country varchar(50),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)
);


create table table_top
(
	id bigint(20),
	code varchar(100),
	status smallint(6),
	capacity smallint(6),
	created_at datetime,
	updated_at datetime,
	content text,
	primary key(id)
);



/*forein key*/

alter table menu
add foreign key (user_id) references user(id) on delete cascade;


alter table transaction
add foreign key (user_id) references user(id) on delete cascade;


/*
alter table transaction 
add foreign key (vendor_id) references user(vendor) on delete cascade;
*/


alter table transaction 
add foreign key (order_id) references user_order(id) on delete cascade;

/*
alter table item_chef
add foreign key (chef_id) references user(chef) on delete cascade;
*/

alter table item_chef   
add foreign key (item_id) references item(id) on delete cascade;

alter table menu_item
add foreign key (menu_id) references menu(id) on delete cascade;

alter table menu_item
add foreign key (item_id) references item(id) on delete cascade;

alter table item
add foreign key (user_id) references user(id) on delete cascade;

alter table item
add foreign key (vendor_id) references user(id) on delete cascade;  

/*
alter table ingredient
add foreign key (user_id) references user(vendor) on delete cascade; 	    
*/

alter table ingredient
add foreign key (user_id) references user(id) on delete cascade;


alter table recipe
add foreign key (item_id) references item(id) on delete cascade;


alter table recipe 
add foreign key (ingredient_id) references ingredient(id) on delete cascade;
   


alter table booking_item
add foreign key (booking_id) references booking(id) on delete cascade;

alter table booking_item
add foreign key (item_id) references item(id) on delete cascade;	



alter table order_item
add foreign key (order_id) references order_item(id) on delete cascade;

alter table order_item
add foreign key (item_id) references item(id) on delete cascade;



alter table user_order
add foreign key (user_id) references user(id) on delete cascade;

alter table user_order
add foreign key (vendor_id) references user(id) on delete cascade;