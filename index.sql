-- 演示MySQL的索引使用
CREATE TABLE t26(
	id INT,
	`name` VARCHAR(32));
-- 查询表是否有索引
SHOW INDEXES FROM t26;
-- 添加索引
-- 添加唯一索引
CREATE UNIQUE INDEX id_index ON t26 (id);

-- 添加普通索引
CREATE INDEX id_index ON t26 (id);  
-- 如和选择索引
-- 如果某列的值不重复  则优先使用unique 速度快  否则使用普通索引
-- 添加 普通索引方式2
CREATE TABLE t26 ADD INDEX id_index (id);
-- 添加组件索引 创建表的时候直接添加主键  primary key 或者
ALTER TABLE t26 ADD PRIMARY KEY (id);


-- 删除索引
DROP INDEX id_index ON t26;
SHOW INDEX FROM t26;

-- 删除主键索引
ALTER TABLE t26 DROP PRIMARY KEY;


-- 修改索引 先删除在添加新的索引
-- 查询索引 三种方式
-- 1 
 SHOW INDEX FROM t25;
 -- 第二中方式
  SHOW INDEXES FROM t25;
  -- 方式三
  SHOW KEYS FROM t25;
  -- 方式 4 
  DESC t25; -- 信息没有前面三种方式详细