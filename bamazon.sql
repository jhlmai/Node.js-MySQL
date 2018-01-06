DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(255) NULL,
  department_name VARCHAR(255) NULL,
  price DECIMAL(10,3) NULL,
  stock_quantity INTEGER(10) NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("banana", "produce", .19, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("vaseline", "health", 2.24, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("tennis balls", "sports", 3.89, 54);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("chair", "home", 10.99, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("socks", "clothing", 6.79, 37);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("football", "sports", 13.59, 24);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("apple", "produce", .99, 165);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("tylenol", "health", 12.64, 90);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("shirts", "clothing", 12.77, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pants", "clothing", 29.01, 39);

SELECT * FROM products;