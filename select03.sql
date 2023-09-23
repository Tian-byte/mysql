-- 使用 select 语句
-- 查询姓名为赵勇的学生成绩
SELECT * FROM student
	WHERE `name` = '赵云';
-- 查询英语成绩大于90分的同学
SELECT * FROM student
	WHERE english >= 90;
-- 查询总分大于200分的同学
 SELECT * FROM student 
	WHERE (english + math + chinese) > 200;
-- 查询 math 大于60 并且 id 大于90的学生成绩
	
SELECT * FROM  student 
	WHERE (math > 60) AND (id > 4);
-- 查询英语成绩大于语文成绩的同学
SELECT * FROM student
	WHERE English > chinese;
-- 查询总分大于200 并且 数学成绩小于语文成绩 的姓韩的同学  '韩%'
SELECT * FROM student 
	WHERE (chinese + math + english) > 200 AND (math < chinese) AND `name` LIKE '赵%';
-- 查询 英语成绩在八十到就是分之间的同学
SELECT * FROM student 
	WHERE  80 < english AND english < 90;
SELECT * FROM student 
	WHERE english BETWEEN 84 AND 85;
-- 查询数学分为 89 90 91的同学
SELECT * FROM student
	WHERE math = 89 OR math = 90 OR math = 91;
SELECT * FROM  student 
	WHERE math IN (89,90,91);
-- 查询所有姓李的学生成绩
SELECT * FROM student 
	WHERE `name` LIKE '韩%';
-- 查询数学分>80  语文 > 80 的同学
SELECT * FROM student
	WHERE math > 80 AND chinese >80 ;