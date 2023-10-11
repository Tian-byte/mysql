-- 外键演示
-- 建主表 班级表 myclass
CREATE TABLE myclass
	( id INT PRIMARY KEY,
	`name` VARCHAR(32) NOT NULL DEFAULT ''
	);
-- 创建从表  my_stu
CREATE TABLE my_stu
	( id INT PRIMARY KEY, -- 学生编号
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	class_id INT,
-- 下面指定一个外键的关系
	FOREIGN KEY (class_id) REFERENCES myclass(id));
-- 测试数据
INSERT INTO myclass
 VALUES(100,'java'),(200,'web');
 SELECT * FROM myclass;
 INSERT INTO my_stu
 VALUES(1,'tom',100);
 INSERT INTO my_stu·
	VALUES(2,'hsp',300)  -- 这里会失败  300 号班级不存在