#演示整形的使用
#使用tinyint 来演示范围 有符号 -128 ~127 如果没有符号 0~255 
#说明： 表的字符集 校验规则 存储引擎 默认
#如果没有指定 unsinged 则 TINYINT 就是有符号 

CREATE TABLE t3 (
	id TINYINT);
CREATE TABLE t4 (
	id TINYINT UNSIGNED);
	INSERT INTO t3 VALUES(127); #这是非常简单的添加语句
SELECT*FROM t3
INSERT INTO t4 VALUES (255);
SELECT*FROM t4;