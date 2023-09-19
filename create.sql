#指令创建表
CREATE TABLE `user`(
	id INT, 
	`name` VARCHAR (255),
	`password` VARCHAR(255),
	`brithday` DATE)
	CHARACTER SET utf8 COLLATE utf8_bin  ENGINE INNODB;