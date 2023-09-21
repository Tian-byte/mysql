#演示bit类型使用
#bit 后面会带一个值 这个值在1-64
#2.添加数据 范围
#3 显示按照位的方式
CREATE TABLE t05 (
	num BIT(8));
INSERT INTO t05 VALUES (1);
SELECT*FROM t05;
SELECT*FROM t05 WHERE num = 1;