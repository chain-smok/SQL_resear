-- 創建公司資料庫表格
DROP TABLE `student`;
CREATE TABLE `employee`(
  `emp_id` INT PRIMARY KEY,
  `name` VARCHAR(20),
  `birth_date` DATE,
  `sex` varchar(1),
  `salary` INT,
  `branch_id` INT,
  `sup_id` INT
);

create table `branch`(
     `branch_id` INT PRIMARY KEY,
     `branch_name` VARCHAR(20),
     `manager_id` INT, 
     foreign key(`manager_id`) references `employee`(`emp_id`) ON DELETE SET NULL
     -- emp_id不存在,manager_id設成NULL
);

ALTER TABLE `employee`
ADD foreign key(`branch_id`)
references `branch`(`branch_id`)
ON delete SET null;

ALTER TABLE `employee`
ADD foreign key(`sup_id`)
references `employee`(`emp_id`)
ON delete set null;

CREATE TABLE `client`(
   `client_id` INT PRIMARY KEY,
   `client_name` VARCHAR(20),
   `phone` VARCHAR(20)
);

CREATE TABLE `works_with`(
  `emp_id` INT,
  `client_id` INT,
   `total_sales` INT,
   primary key(`emp_id`,`client_id`),
   -- primary key無法設成NULL,所以無法使用on delete set null
   foreign key(`emp_id`) references `employee`(`emp_id`) ON DELETE CASCADE,
   -- employee(emp_id)不存在，就把works_with(emp_id)的資料刪除
   foreign key(`client_id`) REFERENCES `client`(`client_id`) ON delete cascade
   
);

-- 新增公司資料

INSERT INTO `branch` VALUES(1,"研發",NULL);
INSERT INTO `branch` VALUES(2,"行政",NULL);
INSERT INTO `branch` VALUES(3,"資訊",NULL);

INSERT INTO `employee` VALUES(206,"小黃","1998-10-08","F",50000,1,NULL);
INSERT INTO `employee` VALUES(207,"小綠","1985-09-16","M",29000,2,206);
INSERT INTO `employee` VALUES(208,"小黑","2000-12-19","M",35000,3,206);
INSERT INTO `employee` VALUES(209,"小白","1997-01-22","F",39000,3,207);
INSERT INTO `employee` VALUES(210,"小蘭","1925-11-10","F",84000,1,207);

UPDATE `branch`
SET `manager_id`=206
WHERE `branch_id`=1;

UPDATE `branch`
SET `manager_id`=208
WHERE `branch_id`=3;

INSERT INTO `client` VALUES(400,"阿狗","2554354335");
INSERT INTO `client` VALUES(401,"阿貓","25633899");
INSERT INTO `client` VALUES(402,"旺來","45354345");
INSERT INTO `client` VALUES(403,"露西","54354365");
INSERT INTO `client` VALUES(404,"艾瑞克","18783783");

INSERT INTO `works_with` VALUES(206,400,"70000");
INSERT INTO `works_with` VALUES(207,401,"24000");
INSERT INTO `works_with` VALUES(208,402,"9800");
INSERT INTO `works_with` VALUES(208,403,"24000");
INSERT INTO `works_with` VALUES(210,404,"87940");













