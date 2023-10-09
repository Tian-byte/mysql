-- 演示加密函数和系统函数
-- user() 查询用户
-- 可以查看登录到mysql  的有那些用户，以及登录的ip
SELECT USER() FROM DUAL;   -- 用户 @IP 地址
-- DATABASE() 数据库名称
SELECT DATABASE() FROM DUAL;
SELECT DATABASE();
-- MD5(str)  为字符串算出一个 MD5 32 的字符串，常用（用户密码）加密
-- root  密码是 tian  - > 加密md5 ——> 在数据库中存放的是加密后的密码
 SELECT MD5('tian') FROM DUAL;
 SELECT LENGTH(MD5('tian')) FROM DUAL;
 
 -- 演示用户表 存放密码的时，是MD5
 CREATE TABLE users1
	(id INT,
	`name` VARCHAR(32)  NOT NULL DEFAULT '',
	 pwd CHAR(32) NOT NULL DEFAULT '');
INSERT INTO users1 
	VALUES( 100,'tian',MD5('tian'));
	SELECT * FROM users1; 
	SELECT *
		FROM users1
		WHERE `name` = 'tian' AND pwd = MD5('tian');  
-- pASSWORD(str) -- 加密 在MySQL 数据库 的用户密码是用 password 函数加密

SELECT PASSWORD('tian') FROM DUAL;

-- select * from mysql.user \G 从原文密码str 计算并返回密码字符串
-- 通常用于对 mysql 数据库的用户密码加密
-- mysql.user 表示 数据库.表的含义
SELECT * FROM mysql.user;

-- 案例 请统计各个group by 部门的平均工资，
-- 并且是大于1000的 并且按照平均工资从高到底排序  order by 
-- 取出前两行记录  limit
select deptno, avg(sal) as avg_sal
	from emp
	group by deptno
	having avg_sal > 1000
	order by avg_sal desc
	limit 0,2;
 






	 
	 
