-- 多表查询的 自连接
-- 显示公司员工和他的上级的名字
-- 员工的名字在emp 表 上级的名字 也在emp 表
-- 员工和上级是通过 emp  表的 mgr 列 关联
-- 自连接 特点
-- 把同一张表当作两张表使用
-- 需要给表取别名 表名 表的别名  不需要AS AS 是给列区取别名的时候使用
-- 如果列明名不明确 可以指定列的别名 列名 AS 列的别名

SELECT worker.ename AS '职员',boss.ename AS'上级'
	FROM emp worker,emp boss    -- 169 13*13
		WHERE worker.mgr = boss.empno;
		