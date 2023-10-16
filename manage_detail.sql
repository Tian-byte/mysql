-- 说明 用户管理的细节
-- 在创建用户的时候，如果不指定Host,则为%,% 表示所有ip都可以连接权限，create user XXX;
CREATE USER jack;
SELECT `host`,`user` FROM mysql.user;
-- 你也可以这样指定 create user 'XXX' @'192.168.1.%' 表示xxx 用户在192.168.1* 的ip可以登录MySQL
CREATE USER 'tiantian'@'192.168.1.%'
-- 在删除用户的时候，如果host 不是%,需要明确指定’用户‘@'host值'
DROP USER jack  -- 默认就是 drop user 'jack'@'%'
DROP USER tiantian  -- 失败
DROP USER 'tiantian'@'192.168.1.%'