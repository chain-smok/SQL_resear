-- union 聯集
use sql_tutorial;
-- 1. 員工的名字 union 客戶的名字
SELECT `name`
FROM `employee`
UNION	
SELECT `client_name`
FROM `client`
UNION
SELECT `branch_name`
FROM `branch`;

-- 2.員工id + 員工名字 union 客戶id + 客戶名字
SELECT `emp_id` AS `total_id`,`name` AS `total_name`
FROM `employee`
UNION
SELECT `client_id`,`client_name`
FROM `client`;

-- 3.員工薪水 union 銷售金額
SELECT `salary` AS `total_money`
FROM `employee`
UNION
SELECT `total_sales`
FROM `works_with`; 

