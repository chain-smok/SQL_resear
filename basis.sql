create database `sql_tutorial`;
show databases;
USE `sql_tutorial`;
-- constraint 限制 約束
CREATE TABLE student1(
  `student_id` INT auto_increment,
  `name` varchar(20) NOT NULL,
  `major` varchar(20) DEFAULT "歷史",
   PRIMARY KEY(`student_id`)
);
describe `student1`;
describe `student1`;
DROP table `student1`;
alter table `student` ADD gpa DECIMAL(3,2);
alter table `student` DROP column gpa;
select * from `student1`;
INSERT INTO `student1` VALUES(1,"小白","英文",50);
INSERT INTO `student1` VALUES(2,"小黑","生物",90);
INSERT INTO `student1` VALUES(3,"小綠","歷史",70);
INSERT INTO `student1` VALUES(4,"小藍","英文",80);
INSERT INTO `student1` VALUES(5,"小黑","化學",20);
INSERT INTO `student1`(`student_id`,`name`)VALUES(1,"小白");
INSERT INTO `student1`(`name`,`major`) VALUES("bitch","法語");
INSERT INTO `student1`(`name`,`major`) VALUES("小黑","歷史");
INSERT INTO `student1`(`name`,`major`) VALUES("小綠","俄語");

-- 修改、刪除資料

SET SQL_SAFE_UPDATES=0;
CREATE TABLE student1(
  `student_id` INT primary key,
  `name` varchar(20) ,
  `major` varchar(20) ,
  `score` INT
);
UPDATE `student1`
SET `major`="英語文學"
where major="英文";

UPDATE `student1`
SET `major`="生化"
where `major`="生物"||`major`="化學";

UPDATE `student1`
SET `score`=20
where `student_id`=1;

delete FROM `student1`
where `name`="小灰" and `major`="物理";

delete FROM `student1`
where `score`<60;

select `name`,`major` from `student1`;
select * from `student1`;
select *
from `student1`
order by `score` desc;

select *
from `student1`
order by `score` asc;

select *
from `student1`
order by `score`,`student_id`;

select *
from `student1`
order by `score` desc
limit 3;

select *
from `student1`
where `major`="英文" or `score`<>70 -- score!=70
LIMIT 2;

select *
from `student1`
where `major` in("生化","英文"); -- major="生化" || major="英文"


