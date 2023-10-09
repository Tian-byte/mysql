-- 查找每个部门工资高于本部门平均工资的人的资料
-- 这里要使用到数据查询的小技巧 把哟个子查询当作哟个临时表使用
SELECT deptno,AVG(sal) AS avg_sal
	FROM emp
	GROUP BY deptno;
-- 把上面的结果当作子查询 和emp 表进行多表查询
SELECT ename,sal,temp.avg_sal
	FROM emp,(
	SELECT deptno,AVG(sal) AS avg_sal
	FROM emp
	GROUP BY deptno
	)temp 
	WHERE emp.deptno = temp.deptno AND emp.sal> temp.avg_sal
-- 查找 每个部门工资最高的人的详细资料
SELECT ename,sal,temp.max_sal
	FROM emp,(
	SELECT deptno,MAX(sal) AS max_sal
	FROM emp
	GROUP BY deptno
	)temp
	WHERE emp.deptno = temp.deptno AND emp.sal = temp.max_sal
	
-- 查询每个部门的信息 包括 部门名 编号 地址 和人员数量
-- 1.部门名 来自 dept表
-- 2.人员数量 构建一个零时表
SELECT COUNT(*),deptno 
	FROM emp
	GROUP BY deptno;
	
SELECT dname,dept.deptno,loc,per_num AS '人数'
	FROM dept,(
		SELECT COUNT(*) AS per_num ,deptno
		FROM emp
		GROUP BY deptno
		) tmp
	WHERE tmp.deptno = dept.deptno 
	
-- 还有一种写法 表 .* 表示所有列都显示出来
-- 在多表查询中，当多个表的列不重复时，才可以直接写列名
SELECT tmp.*,dname,loc
	FROM dept,(
		SELECT COUNT(*) AS per_num ,deptno
		FROM emp
		GROUP BY deptno
		) tmp
	WHERE tmp.deptno = dept.deptno 