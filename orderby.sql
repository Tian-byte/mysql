-- 演示 order by  使用
-- 对数学成绩排序后输出 [升序] asc 
SELECT *  FROM student
	ORDER BY math;
-- 对总分按照从高到底的顺序输出 [降序] desc
SELECT `name`, (math + chinese + english) AS total_score FROM student 
	ORDER BY  total_score DESC;
-- 对姓名性李的学生成绩（总分）排序
SELECT `name`,(math +chinese + english) AS total_score  FROM student 
	WHERE `name` LIKE '韩%'
	ORDER BY total_score;
