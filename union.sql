-- 合并查询
	SELECT ename,sal,job
		FROM emp
		WHERE sal > 2500;   -- 五条
SELECT ename,sal,job 
	FROM emp
	WHERE job = 'MANAGER';    -- 三条
	
-- union all 就是将两个查询结果合并 不会去重
SELECT ename,sal,job
	FROM emp
	WHERE sal > 2500  -- 五条
UNION ALL
SELECT ename,sal,job 
	FROM emp
	WHERE job = 'MANAGER';    -- 三条
	
SELECT ename,sal,job
	FROM emp
	WHERE sal > 2500  -- 五条
UNION 
SELECT ename,sal,job 
	FROM emp
	WHERE job = 'MANAGER';