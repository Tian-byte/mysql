-- unique 的使用
CREATE TABLE t21
	( id INT UNIQUE,  -- 表示id 列是不可以重复的
	`name` VARCHAR(32),
	email VARCHAR(32) 
	)
-- unique 使用细节
-- 如果没有指定not null 则 unique 字段可以有多个 null
-- 如果一个字段（列） 是 unique not null 使用效果 类似 primary key
-- 2. 一张表可以有多个unique 字段