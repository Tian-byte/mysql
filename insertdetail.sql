#说明 insert 语句的细节
-- 1.插入的数据应与字段得到数据类型相同
-- 比如 把‘abc' 添加到 int 类型会错误
INSERT INTO goods (id,goods_name,price)
	VALUES(30,'小米手机',20000);
-- 2.数据的长度在列的规定范围内，例如：不能将一个长度为80的字符串加入到长度为40的列中。
INSERT INTO goods (id,goods_name,price)
	VALUES('40','vivo手机',30000);
-- 3.在values 中列出的数据位置必须与被加入的列的排列位置相对应
INSERT INTO goods (id,goods_name,price)
	VALUES('vivo','40',30000);
-- 4.字符和日期型数据应该包含到单引号中
INSERT INTO goods (id,goods_name,price)
	VALUES(40,vivo,3000);  
-- 5.列可以插入空值[前提是字段允许为空] insert into table value(null)
INSERT INTO goods (id,goods_name,price)
	VALUES ('50','vivo',NULL); -- 如果定义的时候 没有not null 那么可以为空
-- 6.insert into tab_name (列名 ..) values (),(),() 新式添加多条记录
INSERT INTO goods(id,goods_name,price)
	VALUES (60,'三星手机',4000),(70,'苹果手机', 18000);
	SELECT *FROM goods;
-- 7.如果是给表中的所有字段添加数据，可以不写前面的字段名称 
INSERT INTO goods 
	VALUES(40,'vivo', 4000);
-- 8.默认值的使用 当不给某个字段值的时，如果有默认值就会添加默认值，否则会报错
-- 如果某个列，没有指定 not null 那么当添加数据时，没有给定值，则会默认给null
-- 如果希望指定某个列的默认值，可以在创建表的时候指定 not null defult 100
	INSERT INTO goods (id,goods_name)
	VALUES (80,'格力手机') 
	SELECT * FROM goods;
	
	