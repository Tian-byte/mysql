-- 演示数学相关函数

-- ABS(num) 绝对值
SELECT ABS(-1) FROM DUAL;
-- BIN (decimal_number)   十进制转二进制
SELECT BIN(23) FROM DUAL;
-- CEILING (number2)  向上取整 得到比number2 大的最小整数
SELECT CEILING (33.3) FROM DUAL;
-- CONV(number2,from_base,to_base)    进制转换
SELECT CONV(123,10,2) FROM DUAL;
-- FLOOR (number2) 向下取整  得到比num2 小的最大整数
SELECT FLOOR (12.5) FROM DUAL;

-- FORMAT (number,decimal_places)  保留小数位  四舍五入
SELECT FORMAT(12.32,3) FROM DUAL;

-- HEX (DecimalNUmber)  转换为十六进制
SELECT HEX(123) FROM DUAL;
-- LEAST （num1,num2 ..... num)
SELECT LEAST(12,14,12,14,12,11) FROM DUAL;
-- mod (numerator,denominator) 求余
SELECT MOD(10,3) FROM DUAL;
-- rand ([seed]) rand ([seed)] 返回其范围为0<= v <= 1.0
--  如果seed 不变，该随机数也不变
SELECT RAND(3) FROM DUAL;

 