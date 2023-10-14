--  事务细节
-- 如果不开始事务，默认情况下，dml操作时自动提交的，不能回滚
INSERT INTO t27 VALUES(300,'milan');   -- 自动commit
SELECT * FROM t27; 

ROLLBACK;

-- 如果开始一个事务，没有创建保存点默认回退到开始状态
START TRANSACTION;
INSERT INTO t27 VALUES (400,'king');
INSERT INTO t27 VALUES (500,'scott');
ROLLBACK; -- 表示直接回退到事务开始的状态

-- 在事务还没有提交时 可以创建多个保存点
-- 你可以在事务没有提交前可以回退到前面的保存点
-- innobd 存储引擎支持事务，myisam 不支持
-- 开启一个事务 start transaction ,set autocommit = off
START TRANSACTION;
SET autocommit = off;