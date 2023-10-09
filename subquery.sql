-- 子查询的演示
-- 如何显示与SMITH 同一部门的所有员工
/* 
	1.先查询到 SMITH 的部门号得到
	2.把上面的select 语句当作一个子查询来使用
*/
SELECT deptno
	FROM emp
	WHERE ename = 'SMITH';
SELECT * 
	FROM emp
	WHERE deptno = (
	SELECT deptno
	FROM emp
	WHERE ename = 'SMITH'
	)
	
-- 多行子查询
-- 如何查询和部门 10 的工作相同的雇员的 名字 岗位 工资 部门号 但是不含10自己的雇员
-- 1. 十号部门有那些工作岗位  
-- 2. 把上面查询的结果当作子查询使用
SELECT DISTINCT job    -- distinct  去重
	FROM emp
	WHERE deptno = 10;

SELECT ename,job,sal,deptno
	FROM emp
	WHERE job IN (
	SELECT DISTINCT job 
		FROM emp 
		WHERE deptno = 10
		) AND deptno != 10
-- 在 MySQL 中 判断两个指是否相等 使用 = 
-- !=  <>  这两个都是不等		
		
-- 查询ecshop 中各个类别中，价格最高的商品
-- 查询 商品表
-- 先得到 各个类别中，价格最高的商品 max + group by cat_id
SELECT cat_id,MAX(shop_price)
	FROM ecs_goods
	GROUP BY cat_id;
SELECT goods_id,cat_id,goods_name,shop_price
	FROM  ecs_goods;
	 
SELECT goods_id,ecs_goods.cat_id,goods_name,shop_price
	FROM (
		SELECT cat_id,MAX(shop_price) AS max_price
		FROM ecs_goods
		GROUP BY cat_id
		) temp,ecs_goods
	WHERE temp.cat_id = ecs_goods.cat_id 
	AND temp.max_price = ecs_goods.shop_price;
-- 把子查询当作一张零时表可以解决很多复杂的查询








