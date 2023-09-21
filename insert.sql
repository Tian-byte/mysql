# 练习insert 语句
#创建一张商品表 goods (id int，goods_name varvhar(10),price double);
CREATE TABLE goods (
	id INT, 
	goods_name VARCHAR(10)
	,price DOUBLE);
INSERT INTO goods(id,goods_name,price)
VALUES(001,'辣条','20.00');
INSERT INTO goods(id,goods_name,price)
VALUES(002,'tian','30.00');
SELECT * FROM goods;