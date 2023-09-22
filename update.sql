# update语句 演示
-- 在上面创建的employee 表中修改表中的记录
UPDATE employee SET salary = 5000; #[如果没有带where 条件 ，会修改所有的记录]
-- 2.将姓名为tian 的员工薪水改为3000
UPDATE employee
	SET salary = 3000 
	WHERE user_name = 'tian';
-- 3. 将老妖怪的薪水在原有的基础上增加1000
INSERT INTO employee 
VALUES ( 200,'老妖怪','1990-11-11','2000-11-11 10:10:10','捶背',5000,'给大王捶背','d:\\a.jpg');
UPDATE employee 
	SET salary = salary + 2000
	WHERE user_name = '老妖怪';
-- 可以修改多个列
UPDATE employee 
SET salary = salary + 1000, job = '法师'
WHERE user_name = 'tian';
SELECT * FROM employee;