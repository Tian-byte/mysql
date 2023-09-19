# 演示字符串类型设使用 char varchar 
# 注释的快捷键 shift + ctrl +c 
-- char(size)
-- 固定长度字符串 最大255字符
-- varchar(size) 0-65535 字符  可变字符串长度 最大65532 字节 utf8 编码最大21844（65535-2）/3字符 1-3个字节用于记录大小
-- 如果表的编码是 utf8 三个字节表示一个字节  varchar(size) size = (65535 - 3) / 3 = 21844
-- 如果表的编码是 gbk 两个字节表示一个字符  varchar(size)   size = （65535 -3）/2 = 32766

CREATE TABLE t09 (
	`name` CHAR(255));
CREATE TABLE t10(
	`name` VARCHAR(32766)) CHARSET gbk;
	DROP TABLE t10;