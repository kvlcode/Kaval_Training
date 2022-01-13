create database training;
use training;

CREATE TABLE customer (
	Customer_ID int(10),
    FirstName varchar(100),
    LastName varchar(100),
    Address varchar(255),
    PRIMARY KEY(Customer_ID) 
);

INSERT INTO customer (Customer_ID, FirstName, LastName, Address)
VALUES (1, 'Krsna', 'Kaul', 'Gurgaon, Delhi');

INSERT INTO customer (Customer_ID, FirstName, LastName, Address)
VALUES (2, 'Abhishek', 'Ramanandi', 'Ahmedabad, Gujarat');

INSERT INTO customer (Customer_ID, FirstName, LastName, Address)
VALUES (3, 'Shivang', 'Chauhan', 'Ahmedabad, Gujarat');

INSERT INTO customer (Customer_ID, FirstName, LastName, Address)
VALUES (4, 'Harshil', 'Gajjar', 'Gandhinagar, Gujarat');

INSERT INTO customer (Customer_ID, FirstName, LastName, Address)
VALUES (5, 'Smit', 'Patel', 'Deesa, Gujarat');
  
SELECT * FROM customer;


CREATE TABLE product (
	Customer_ID int(10),
    ItemID int(10),
    ItemName varchar(100),
    ItemPrice int(10),
    ItemQuantity int(10),
    PRIMARY KEY(ItemID),
    FOREIGN KEY (Customer_ID) REFERENCES customer(Customer_ID)
);


INSERT INTO product (Customer_ID, ItemID, ItemName, ItemPrice, ItemQuantity)
VALUES (1, 222 ,'Pen',10, 10);

INSERT INTO product (Customer_ID, ItemID, ItemName, ItemPrice, ItemQuantity)
VALUES (2, 333 ,'Cap',100, 5);

INSERT INTO product (Customer_ID, ItemID, ItemName, ItemPrice, ItemQuantity)
VALUES (3, 444 ,'Book',300, 1);

INSERT INTO product (Customer_ID, ItemID, ItemName, ItemPrice, ItemQuantity)
VALUES (2, 666 ,'Bottle',500, 2);

SELECT * FROM product;
















