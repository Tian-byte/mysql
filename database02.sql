#删除和查询数据库
#查询当前数据库服务器中的所有数据库
SHOW DATABASES

# 查看前面创建的hsp_db01 数据库的定义信息
SHOW CREATE DATABASE hsp_db01;
# 在创建数据库和表的时候，为了规避关键字，可以使用反引号
# 删除前面创建的数据库
DROP DATABASE hsp_db01;