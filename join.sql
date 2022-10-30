-- join 連接
use sql_tutorial;
-- 取得所有部門經理的名字
SELECT `employee`.`emp_id`,`employee`.`name`,`branch`.`branch_name`
FROM `employee` LEFT JOIN `branch`
ON `employee`.`emp_id`=`branch`.`manager_id`;
-- LEFT JOIN 左邊的表格不管條件有沒有成立，都會回傳資料
