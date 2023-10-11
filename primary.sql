-- 主键的使用
-- id 那么 email 
CREATE TABLE t17
	(id INT PRIMARY KEY, -- 主键 id 添加不可重复
	`name` VARCHAR(32),
	email VARCHAR(32));
INSERT INTO t17
	VALUES(1,'jack','kkkkk.com'),
		(2,'tom','kkkkk.com');
		SELECT * FROM t17;
INSERT INTO t17
	VALUES(1,'hsp','kkkkk.com');  -- id 为主键 报错
	
-- 主键使用的细节讨论
-- primary key 不能重复而且不能为null
-- 一张表最多只能有一个主键，但可以是复合主键
-- 将id 和 name 合并成一个 复合主键
CREATE TABLE t19
	(id INT, -- 主键 id 添加不可重复
	`name` VARCHAR(32),
	email VARCHAR(32),
	PRIMARY KEY (id,`name`)  -- 复合主键  只有这两个都不相同的时候添加不了
	);
-- 主键的指定方式 有两种
-- 直接写在字段名后指定 ： 字段名 primakry key
-- 在表定义最后写  primary key (列名）
-- (在列后面直接指定，列写完后 统一指定，primary key 

-- 使用 desc 表名，可以看到 primary key 的情况
DESC t20 -- 查看t20 的结果 显示约束情况

