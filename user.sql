-- 修改自己的密码

SET PASSWORD = PASSWORD('abcdefg');
SET PASSWORD = PASSWORD('123456');

-- 修改别人的密码 需要权限
SET PASSWORD FOR 'root'@ 'localhost' = PASSWORD('123456') -- 权限不够

