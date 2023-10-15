-- 演示用户权限的管理
-- 创建一个用户（你的你的名字 tian  密码 123
CREATE USER 'diandian' @'localhost' IDENTIFIED BY '123'; 
-- 使用root 用户创建 testdb 表 news
CREATE DATABASE testdb;
CREATE TABLE news(
	id INT,
	content VARCHAR(32));
INSERT INTO 
	news 
	VALUES (100,'北京新闻');
SELECT * FROM news;

-- 给diandain 用户分配查看news表 和 添加 news 的权限 
GRANT SELECT,INSERT
	ON testdb.news
	TO 'diandian' @'localhost';
-- 增加权限
GRANT UPDATE
	ON testdb.news
	TO 'diandian' @'localhost';
-- 修改密码为123
SET PASSWORD FOR 'diandian'@'localhost' = PASSWORD('abc');
-- 回收 diandian 用户 testdb.news 表的所有权限
REVOKE SELECT ,UPDATE,INSERT ON testdb.news FROM 'diandian'@'localhost';
-- 或者
REVOKE ALL ON testdb.news FROM 'diandian'@'localhost'
-- 刷新指令
falush PRIVILEGES;
-- 删除 点点这个用户
DROP USER 'diandian'@'localhost'