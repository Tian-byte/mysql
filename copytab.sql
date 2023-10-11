-- 表的复制
CREATE TABLE my_tab01 
	( id INT,
	`name` VARCHAR(32),
	sal DOUBLE,
	job VARCHAR(32),
	deptno INT);
	DROP TABLE my_tab01;
DESC my_tab01;
-- 如何自我复制
-- 1.先把emp 表的记录复制到 my_tab01
INSERT INTO my_tab01
	(id,`name`,sal,job,deptno)
	SELECT empno,ename,sal,job,deptno
		FROM emp;
SELECT * FROM my_tab01;
-- 2.自我复制
INSERT INTO my_tab01
	SELECT * FROM my_tab01;
-- 如何删除一张表中重复的记录
-- 1.先创建一张表
-- 2.有重复的记录

CREATE TABLE my_tab02 LIKE emp;   -- 把emp表的结构列  复制到my_tab02
DESC my_tab02;
INSERT INTO my_tab02
	SELECT * FROM emp;
-- 考虑去掉重复的
-- 思路： 1.先创建一张零时表 my_tmp 该表的结构和my_tab02 相同
-- 	2. 把my_tab 的记录 通过distinct 关键字处理后，把记录复制到my_tmp
-- 	3. 清除掉 my_tab02 记录
--	4.把 my_tmp 表的记录复制到 my_tab02
--      5. drop 掉 my_tmp
SELECT * FROM my_tab02;
CREATE TABLE my_tmp LIKE my_tab02;
INSERT INTO my_tmp
	SELECT DISTINCT * FROM my_tab02;
DELETE FROM my_tab02;
INSERT INTO my_tab02
	SELECT * FROM my_tmp;
	DROP TABLE my_tmp;
SELECT * FROM my_tmp;