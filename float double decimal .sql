#演示decimal 类型 float double 类型

# 创建一个表
CREATE TABLE t06 (
	num1 FLOAT,
	num2 DOUBLE,
	num3 DECIMAL(30,20));
	
# 添加数据 
INSERT INTO t06 VALUES (88.12345678912345,88.12345678912345,88.12345678912345);
SELECT * FROM t06;
# decimal 可以存放很大的数
CREATE TABLE t07 (
	num DECIMAL(65));
INSERT INTO t07 VALUES (99999999999999999999999999999999999);
	SELECT * FROM  t07;
CREATE TABLE t08 (
		num BIGINT UNSIGNED);
INSERT INTO t08 VALUES (9999999999999999999999);
	SELECT * FROM t08;
		