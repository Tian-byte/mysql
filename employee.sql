# 修改表的操作
-- 员工表 emp 的上增加一个 image 列 varchar 类型 要求在resume 后面
ALTER TABLE emp 
	ADD image VARCHAR(32) NOT NULL DEFAULT ''
	AFTER RESUME  
DESC emp;  -- 显示表结构  可以显示查看表的所有列（字段）
-- 修改 job 列 使其长度位60
ALTER TABLE emp
	MODIFY job VARCHAR(60) NOT NULL DEFAULT ''
	DESC emp;
-- 删除 sex 列
ALTER TABLE emp 
	DROP sex;
DESC emp;

-- 修改表名
RENAME TABLE emp TO employee;
DESC employee;
-- 修该字符集
ALTER TABLE employee CHARACTER SET utf8;
-- 列名 name 修该 位user_name
ALTER TABLE employee 
	CHANGE `name` user_name VARCHAR(32) NOT NULL DEFAULT '';
DESC employee;







