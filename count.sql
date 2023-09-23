-- 演示 MySQL 中的统计函数
 -- 统计一个班级里面有多少学生
 SELECT COUNT(*) FROM student;
 -- 统计 数学成绩大于90 的学生有多少
 SELECT COUNT(*) FROM student
	WHERE math >= 90;
-- 统计总分大于 250 的人数有多少
SELECT COUNT(*) FROM student
	WHERE (math + english + chinese) > 250;
-- 解释 count（*） 返回满足条件的记录的行数
-- count(列） 统计满足条件的某列有多少个 但是会排除为空的情况、
CREATE TABLE t15 (
	`name` VARCHAR(20));
INSERT INTO t15 VALUES('tom');
INSERT INTO t15 VALUES('jack');
INSERT INTO t15 VALUES('mary');
INSERT INTO t15 VALUES (NULL);
SELECT * FROM t15;
 
SELECT COUNT(*) FROM t15; -- 4
SELECT COUNT(`name`) FROM t15;

-- sum 函数的使用
-- 演示一个班级的语文成绩的和
SELECT SUM(math) FROM student;
-- 统计一个班级的语文 数学英语 各科成绩的总和
SELECT SUM(math), SUM(chinese),SUM(english) FROM student;
-- 统计班级语文 英语 数学 的成绩综合
SELECT SUM(math) + SUM(chinese) + SUM(english) FROM student;
-- 统计一个班级的语文的平均分数
SELECT AVG(chinese) FROM student;
SELECT SUM(chinese) / COUNT(*) FROM student;

-- 演示 avg 的使用
-- 求一个班级数学平均分 
SELECT AVG(math) FROM student;
-- 求一个班级总平均分
SELECT AVG(math + english + chinese) FROM student;



-- max/min 的使用
SELECT MAX(math) FROM student;

SELECT MIN(math + chinese + chinese) FROM student;






