--  多表查询
-- 显示雇员名看，雇员工资以及所在部门的名字【笛卡尔积]
-- 1.雇员名，雇员工资  来自 emp 表
-- 2.部门的名称 来自 dept表
-- 3.需要对 emp 和 dept 表进行查询
-- 4.当我们需要指定显示某个表的列是，需要 表.列名

SELECT ename,sal,dname	
	FROM  emp,dept
	WHERE emp.deptno = dept.deptno;
-- 如和显示部门号为10的部门名，员工名，和工资
SELECT ename,dname,sal
	FROM emp,dept
	WHERE emp.deptno = dept.deptno AND emp.deptno = 10;
-- 显示各个员工的姓名，工资，及其工资级别
-- 思路 姓名 工资 及其 工资级别 来自 emp 
-- 工资级别  salgrade
-- 写sql 先写一个简单的 然后加上固定条件

SELECT ename, sal,grade
	FROM emp , salgrade
	WHERE sal BETWEEN losal AND hisal;