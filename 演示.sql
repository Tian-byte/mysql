-- 演示MySQL 用户管理
-- 原因 当做项目开发时，可以根据不同的开发人员，赋给她相应的mysql 的操作权限
-- 所以 MySQL 数据库管理人员（root),根据需要创建不同的用户赋予相应的权限，共开发人员使用

-- 1. 创建新的用户  'hsp_edu' @'localhost' 表示用户的完整信息
-- 存放到MySQL 的密码是 password() 加密后的密码
CREATE USER 'hsp_edu' @'localhost' IDENTIFIED BY '123456'   -- localhost 登录ip

SELECT * FROM 
	mysql.user;
-- 删除用户 
DROP USER 'hsp_edu' @ 'localhost'
-- 登录

-- root 用户修改 hsp_edu @ localhost
SET PASSWORD FOR 'hsp_edu' @ 'localhost' = PASSWORD('123456')