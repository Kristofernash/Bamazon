DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
  items_id VARCHAR(45) NOT NULL,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10,2) default 0,
  stock_quantity INTEGER(10) NULL);
 


INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("5000", "Laker Jersey", "Sports","65.00", "10");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("5001", "LA Lebron Jersey", "Sports","95.00", "5");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("5002", "LA Nash Jerysey", "Sports","65.00", "15");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("5003", "Bulls Jersey", "Sports","65.00", "10");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("5004", "CHI Jordan Jersey", "Sports","65.00", "10");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("5005", "CHI Jordan Throwback Jersey", "Sports","95.00", "5");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("9000", "Ping Pong Balls(4pk)", "Sports","15.00", "10");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("9500", "Saints CornHole Table", "Sports","50.00", "10");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("9501", "Charger CornHole Table", "Sports","50.00", "10");

INSERT INTO products(items_id, product_name, department_name,price,stock_quantity)
VALUES ("9503", "Rams CornHole Table", "Sports","50.00", "10");


SELECT *FROM products;