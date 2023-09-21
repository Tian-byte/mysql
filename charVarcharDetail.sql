#演示字符串类型的使用细节
CREATE TABLE t11 (
	`name` CHAR(4));
INSERT INTO t11 VALUES('abcd');
DROP TABLE t11;

SELECT * FROM t11;	

CREATE TABLE t12 (
	`name`  VARCHAR(4));
	INSERT INTO t12 VALUES('tian');
SELECT * FROM t12;
# 如果 varchar 不够用 可以考虑使用mediumtext longtext  text
CREATE TABLE t13 (
	content TEXT,
	content2 MEDIUMTEXT,
	content3 LONGTEXT);
INSERT INTO t13 VALUES('咩咩咩咩咩咩咩','咩咩咩咩咩咩咩咩咩咩咩咩','咩咩咩咩咩咩咩咩咩咩');
SELECT * FROM t13; 
