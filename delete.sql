-- delete 语句演示
-- 删除表中名为 ‘老妖怪’的记录

DELETE FROM employee
	WHERE user_name = '老妖怪';
	SELECT * FROM employee;
-- 删除表中的所有记录
DELETE FROM employee;

-- delete 语句不可以删除某一列的值（可以使用 update 设为 null 或者 '')

UPDATE employee SET job = '' WHERE user_name = '老妖怪';
-- 使用 delete 语句仅删除记录，不删除表本身。如删除表，使用drop  table 语句
DROP TABLE employeep;

SELECT * FROM employee;

RENAME TABLE tian TO employee;