-- 日期时间相关函数
-- CURRENT_DATE()  当前日期
SELECT CURRENT_DATE() FROM DUAL;
-- CURRENT_TIME() 当前时间
SELECT CURRENT_TIME() FROM DUAL;
-- CURRENT_TIMESTAMP() 当前时间戳
SELECT CURRENT_TIMESTAMP() FROM DUAL;

-- 创建测试表 信息表
CREATE TABLE mes (id INT,content VARCHAR(30),send_time DATETIME);

-- 添加一条记录
INSERT INTO mes 
	VALUES(1,'北京新闻',CURRENT_TIMESTAMP());	
INSERT INTO mes 
	VALUES(2,'上海新闻',NOW());
INSERT INTO mes 
	VALUES(3,'广州新闻',NOW());
SELECT * FROM mes;
SELECT NOW() FROM DUAL;

-- 案例
-- 显示所有新闻信息，发布日期只显示，不用显示时间
SELECT id ,content, DATE(send_time) 
	FROM mes;
-- 请查询在十分钟内发布的新闻
SELECT * FROM mes 
	WHERE DATE_ADD(send_time,INTERVAL 10 MINUTE) >= NOW();
SELECT * FROM mes
	WHERE DATE_SUB(NOW(),INTERVAL 10 MINUTE) <= send_time;
-- 请在MySQL语句的sql 语句中求出 2011-11-11 和 1990 - 1- 1 相差多少天
SELECT DATEDIFF('2011-11-11','1990-1-1')/365  
	FROM DUAL;
-- 用mysql 的sql 求出你活了多少天
SELECT DATEDIFF (NOW(),'1999-11-11') AS new_date FROM DUAL;
-- 如果你能活80岁，求出你能活多少天
-- INTERVAL 80 YEAR : year 也可以是 年月日时分秒
SELECT DATEDIFF(DATE_ADD('1986-11-11',INTERVAL 80 YEAR),NOW()) AS new_date 
	FROM DUAL;

SELECT TIMEDIFF('10:11:11','06:10:10') FROM DUAL;











