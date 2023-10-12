-- 事务几个重要的概念和操作
-- 1.创建一张测试表
 CREATE TABLE t27 (
	id INT,
	`name` VARCHAR(32));
-- 开始一个事务
START TRANSACTION;
-- 设置一个保存点
SAVEPOINT a;
-- 执行dml操作
INSERT INTO t27 
	VALUES (100,'tom');


SAVEPOINT b;
-- 执行 dml 操作
INSERT INTO t27
	VALUES(200,'jack');
	
-- 回退到 b
ROLLBACK TO b;
-- 回退到 a
ROLLBACK TO a; 
SELECT * FROM t27;

-- 如果这样,表示直接回退事务开始的状态
ROLLBACK,  