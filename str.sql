-- 演示字符串相关函数的使用
-- charset(str) 返回字符串集合
SELECT CHARSET (ename) FROM emp;
-- concat（string2[,....]) 连接字符串  将多个列拼接成一列
SELECT CONCAT(ename,' 工作是 ',job) FROM emp;
-- instr (string,substring) 返回substring在 string中出出现的位置，没有返回0
SELECT INSTR('hanshunping','ping') FROM DUAL; 
 -- DUAL 亚元表，系统表 可以作为一个测试表使用
 -- ucase (string2) 转为大写或者小写
 SELECT UCASE(ename) FROM emp; -- 转大写  ucase 
 SELECT LCASE(ename)FROM emp;  -- 转小写  lcase
 -- LEFT (string2,length)  从string2 的最左边起取length个字符
 SELECT LEFT(ename,2) FROM emp; -- 右边边取 right
 -- length（string） 统计长度  按照字节返回   utf8 一个汉字占三个比比特位
 SELECT LENGTH(ename) FROM emp;
 -- replace （str,search_str,replace_str)
 -- 在str 中replace——str 替换search_str
SELECT ename,REPLACE(job,'MANAGER','经理') FROM emp;
--  strcmp （string1,string2) 逐字符比较两字符串大小
SELECT STRCMP('hsp','hsp') FROM  DUAL;
-- substring（str,position [,length])
-- 从str的position 开始 从1开始计算，取length 个字符
SELECT SUBSTRING(ename,1,2) FROM emp;  -- 从ename 列的第一个位置开始取出两个字符
-- ltrim(string2) rtrim (string2) trim   trim(string) 
-- 去除前端空格  去除端空格    -- 去除前后空格
SELECT LTRIM('        han') FROM DUAL;
SELECT RTRIM('han              ') FROM DUAL;
SELECT TRIM('     han     ')FROM DUAL;

SELECT CONCAT(LCASE( SUBSTRING(ename,1,1)),SUBSTRING(ename,2)) AS new_name
	FROM emp;
SELECT CONCAT(LCASE (LEFT(ename,1)),SUBSTRING(ename,2)) AS new_name
	FROM emp;
	
	