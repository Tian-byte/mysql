-- 演示MySQL 的事务隔离级别
-- 1. 开启两个 控制台
-- 2. 查看当前MySQL的隔离级别
SELECT @@tx_isolation;
-- +-----------------+
-- | @@tx_isolation  |
-- +-----------------+
-- | REPEATABLE-READ |
-- +-----------------+


-- 把其中一个控制台设置为 Read uncommitted

SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- 创建一张表
CREATE TABLE `account`(
	id INT,
	`name` VARCHAR(32),
	money INT);
-- 查询当前会话隔离级别
SELECT @@tx_isolation;
-- 查看系统当前隔离级别
SELECT @@global.tx_isolation
-- 设置当前会话隔离级别
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- 设置系统当前隔离
SET GLOBAL TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- mysql 默认事务隔离级别是 repeatable read 一般情况下，没有特殊要求 没有必要修改（最佳级别）
