-- 演示 group by 分组字句
--  显示每种岗位的雇员总数，平均工资
SELECT COUNT(*),AVG(sal),job 
	FROM  emp 
	GROUP BY  job;
-- 显示雇员总数，以及获得补助的雇员数 
-- 获得补助的雇员数 就是 comm 列为非空的 null 
-- count  统计的时候 如果该列的值为null  是不会统计的
SELECT COUNT(*),COUNT(comm)
	FROM emp;
-- 统计经理有多少人
SELECT COUNT(*),COUNT(IF(comm IS NULL,NULL))
FROM emp;
-- 统计没有获得补助的雇员数
SELECT COUNT(*),COUNT(IF(comm IS NULL,1,NULL))
	FROM emp;
SELECT COUNT(*),COUNT(*) - COUNT(comm)
	FROM emp;
-- 显示管理者的总人数
SELECT COUNT(mgr) FROM emp;
SELECT COUNT(DISTINCT mgr) FROM emp;
-- 显示雇员工资的最大差值
-- max() - min() 
SELECT MAX(sal) - MIN(sal) FROM emp; 
SELECT * FROM emp;
