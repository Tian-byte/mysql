-- 分页 查询
-- 按照雇员的id号升序取出，每页显示三条记录，请分别显示 第一页 第二页 第三页
-- 第一页
SELECT * FROM emp  
	ORDER BY empno 
	LIMIT 0,3;
SELECT * FROM emp 
	ORDER BY empno 	
	LIMIT 3,3;
SELECT * FROM emp
	ORDER BY empno
	LIMIT 6,3;
SELECT * FROM emp
	ORDER BY empno
	LIMIT 9,3;
	
-- 推到一个公式
SELECT * FROM emp 
	ORDER BY empno 
	LIMIT 每页显示记录数* （第几页 -1） ,每页显示记录数
SELECT * FROM emp
	ORDER BY  empno DESC
	LIMIT 10,5;
SELECT * FROM emp
	ORDER BY empno DESC
	LIMIT 20,5;