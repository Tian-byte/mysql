-- check 的使用
-- 5.7 目前不支持check 只做语法校验，但不会生效
-- Oracle ,sql server  这两个数据库生效
-- 测试
CREATE TABLE t23(
	id INT PRIMARY KEY,
	`nane` VARCHAR(32),
	sex VARCHAR(6) CHECK (sex IN ('man','woman')),
	sal DOUBLE CHECK (sal > 1000 AND sal < 2000));
	INSERT INTO t23 
		VALUES (1,'jack','mid',1);
		SELECT * FROM t23;