-- select 语句
-- 创建一张学生表
CREATE TABLE student (
	id INT NOT NULL DEFAULT 1,
	`name` VARCHAR(20) NOT NULL DEFAULT '',
	chinese FLOAT NOT NULL DEFAULT 0.0,
	english FLOAT NOT NULL DEFAULT 0.0,
	math FLOAT NOT NULL DEFAULT 0.0
	);
INSERT INTO student(id,`name`,chinese,english,math) VALUES(1,'韩顺平',89,78,90);
	INSERT INTO student(id,`name`,chinese,english,math) 
VALUES(2,'张飞',67,98,56);
	INSERT INTO student(id,`name`,chinese,english,math) 
VALUES(3,'松江',87,78,77);
	INSERT INTO student(id,`name`,chinese,english,math) 
VALUES(4,'关羽',88,98,90);
	INSERT INTO student(id,`name`,chinese,english,math) 
VALUES(5,'赵云',82,84,67);
	INSERT INTO student(id,`name`,chinese,english,math) 
VALUES(6,'欧阳锋',55,85,45);
	INSERT INTO student(id,`name`,chinese,english,math) 
VALUES(7,'黄蓉',75,86,30);
	SELECT * FROM student;
	
	
	
-- 查询表中所有学生的信息
SELECT * FROM student;
-- 查询表中所有学生的姓名和英语成绩
SELECT `name`,english FROM student;
-- 过滤查询表中的重复数据 distinct 
SELECT DISTINCT english  FROM student;
-- 要查询的记录，每个字段都相同,才会去重
SELECT DISTINCT `name`,english FROM student;