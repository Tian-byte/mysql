-- 自增长的使用
-- 创建表
CREATE TABLE t24
	( id INT PRIMARY KEY AUTO_INCREMENT,     -- 也可以用unique修饰
	email VARCHAR(32) NOT NULL DEFAULT '',
	`name` VARCHAR(32) NOT NULL DEFAULT '');
	DESC T24;
-- 自增长的使用
INSERT INTO t24
	VALUES (NULL,'jack@qq.com','jack');
	INSERT INTO t24
	 VALUES (NULL,'tom@qq.com','tom');
	 
INSERT INTO t24
	(email,`name`) VALUES ('hsp@qq.com','hsp');
SELECT * FROM t24;
-- 修改默认的自增长的开始值
ALTER TABLE t25 AUTO_INCREMENT = 1000;
CREATE TABLE t25
	( id INT PRIMARY KEY AUTO_INCREMENT,     -- 也可以用unique修饰
	email VARCHAR(32) NOT NULL DEFAULT '',
	`name` VARCHAR(32) NOT NULL DEFAULT '');
	INSERT INTO t25
	VALUES (NULL,'jack@qq.com','jack');
	INSERT INTO t25
	 VALUES (NULL,'tom@qq.com','tom');
	 SELECT * FROM t25;