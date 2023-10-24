-- --- 创建演员表
CREATE TABLE actor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	sex CHAR(1) NOT NULL DEFAULT '女',
	borndate DATETIME,
	phone VARCHAR(32));
SELECT * FROM actor; 

-- 增加两条记录
INSERT INTO actor
	VALUES (NULL,'jack','男','1970-11-11','112');
 DELETE FROM actor 
	WHERE id = 2;
	UPDATE actor
	SET id = 2
	WHERE `name` = 'jack'
SELECT * FROM actor;