-- 表类型和存储引擎
-- 查看说有的存储引擎
SHOW ENGINES;
-- innodb 存储引擎前面使用过了  支持事物和外键 支持行级锁
-- myisam
CREATE  TABLE t28 (
	id INT,
	`name` VARCHAR(32))ENGINE MYISAM;
-- 添加速度快  不支持外键和索引  支持表级锁
START TRANSACTION;
SAVEPOINT t1;
INSERT INTO t28 VALUES(1,'jack');
ROLLBACK TO t1; -- 不支持回滚
SELECT * FROM t28;

-- memory 存储引擎 数据是存储在内存当作的执行速度非常快（在内存中没有 io 读写） 默认支持索引（hash表）
CREATE TABLE t29(
	id INT,
	`name` VARCHAR(32)) ENGINE MEMORY;
INSERT INTO t29 
		VALUES(1,'tom'),(2,'jack'),(3,'hsp'); 
-- 如果 关闭MySQL 服务，数据丢失，但是表结构还在		
SELECT * FROM t29;