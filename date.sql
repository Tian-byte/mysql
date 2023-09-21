#演示时间相关的案例 
# 创建一张表，date, datetime, timestamp
CREATE TABLE t14 (
	birthday DATE, -- 生日
	jobtime DATETIME, -- 记录年月日 时分秒
	login_time TIMESTAMP  
		NOT NULL DEFAULT CURRENT_TIMESTAMP 
		ON UPDATE CURRENT_TIMESTAMP);
		#DROP TABLE T14; 
		-- 登录时间,如果需要login_time 如果需要login_time 列自动更新，需要配置 
-- NOT NULL DEEAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
SELECT * FROM t14;
INSERT INTO t14(birthday, jobtime)  -- 如果不指定 login_time 时间会显示当前的时间戳
VALUES('2023-9-24','2023-9-24 10:10:10'); 
-- 如果我们跟新了 t14 的某条记录 longin_time 列会自动的以当前时间进行更新 