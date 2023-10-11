-- 使用约束的练习
CREATE DATABASE shop_db;
-- 创建goods 表
CREATE TABLE goods
	( goods_id INT PRIMARY KEY,
	goods_name VARCHAR(64) NOT NULL DEFAULT '',
	unitprice DECIMAL(10,2) NOT NULL DEFAULT 0, 
	CHECK (unitprice >= 1.0 AND unitprice <= 9999.99),
	category INT NOT NULL DEFAULT 0,
	provider VARCHAR(64) NOT NULL DEFAULT '');
-- 创建客户表
CREATE TABLE customer (
	customer_id CHAR(8) PRIMARY KEY,
	`name` VARCHAR(64) NOT NULL DEFAULT '',
	address VARCHAR(64) NOT NULL DEFAULT '',
	email VARCHAR(64) UNIQUE NOT NULL ,
	sex ENUM('男','女') NOT NULL, -- enum 枚举类型
	card_id CHAR(18));
-- 创建订单表 购买表
CREATE TABLE purchase (
	order_id INT UNSIGNED  PRIMARY KEY,
	customer_id CHAR(8) NOT NULL DEFAULT '', -- 外键约束在后
	goods_id INT NOT NULL DEFAULT 0, -- 外键约束在后
	nums INT NOT NULL DEFAULT 0,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (goods_id) REFERENCES customer (goods_id));
	
DESC goods;
DESC customer;
DESC purchase;