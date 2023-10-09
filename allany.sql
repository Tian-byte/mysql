-- 如何显示工资比部门30多的所有员工的工资高的员工的姓名 工资 部门号
-- all 和 any 的使用
SELECT ename,sal,deptno
	FROM emp
	WHERE sal > ALL (
	SELECT sal
	FROM emp
	WHERE deptno = 30
	)
-- 可以 这样写
SELECT ename,sal,deptno
	FROM emp
	WHERE sal > (
	SELECT MAX(sal)
	FROM emp
	WHERE deptno = 30
	)
-- 如何显示工资比部门30 的其中一个员工的工资高的员工的姓名 年龄 工资和 部门号
SELECT ename,sal,deptno
	FROM emp
	WHERE sal > ANY(
	SELECT sal
	FROM emp
	WHERE deptno = 30);
-- 或者
SELECT ename,sal,deptno
	FROM emp
	WHERE sal > (
	SELECT MIN(sal)
	FROM emp
	WHERE deptno = 30);









