-- 如何查询与smith的部门和岗位完全相同的所有雇员（并且不含smith本人）
-- 多列 子查询
-- 分析  1.要得到 smith 部门和岗位
SELECT deptno,job
	FROM emp 
	WHERE ename = 'SMITH';
-- 2.把上面的查询当作一个子查询来使用并且使用多列子查询的语法进行匹配
SELECT * 
	FROM emp
	WHERE (deptno,job) = (
		SELECT deptno,job
		FROM emp
		WHERE ename = 'SMITH'
	) AND ename != 'SMITH';
-- 如何查询与allen 部门和岗位完全相同的所有雇员
SELECT *
	FROM emp
	WHERE(deptno,job) = (
		SELECT deptno,job
		FROM emp
		WHERE ename = 'ALLEN'
		) AND ename != 'ALLEN';
		
SELECT * FROM student;	
-- 查询与松江数学 英语 语文 成绩相同的学生
SELECT *
	FROM student
	WHERE (chinese,english,math） = (
	SELECT chinese,english,math
	FROM student
	WHERE `name` = '张飞'
	);

	
		