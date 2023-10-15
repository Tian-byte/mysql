-- 视图的使用
-- 创建一个视图emp_view01 只能查询emp 表的 empno ename job deptno 信息
CREATE VIEW emp_view01
	AS 
	SELECT empno,ename,job,deptno FROM emp;
	DESC emp_view01;
SELECT empno,job FROM emp_view01;


 -- 查看创建视图的指令
 SHOW CREATE VIEW emp_view01;
 -- 删除视图
 DROP VIEW emp_view01;
 -- 视图的细节
 -- 创建视图后，到数据库去看，对应视图只有一个视图结构文件（形式：视图名.frm) 
-- 视图的数据变换会形象到基表，基表的数据变化也会影响到视图[insert update delete]
-- 修改视图
UPDATE  emp_view01 
SET job = 'MANAGER'
where empno = 7369;
select * from emp;  -- 查询基表

-- 修改视图会影响到基表
select * from emp_view01;
-- 修改基表也会影响到基表
update emp
	set job = 'SALESAN'
	where empno = 7369;
-- 视图中可以再使用视图
desc emp_view01;
-- 从emp_view01 当中选出两列 no 和 ename 做出新视图
create view emp_view02 
	as 
	select empno,ename 
	from emp_view01;
select * from emp_view02;
