# noinspection SqlNoDataSourceInspectionForFile
drop database online_examination;
create database online_examination default character set utf8;
use online_examination;

DROP TABLE IF EXISTS `t_school`;
CREATE TABLE `t_school` (
  `id` int(3) NOT NULL auto_increment comment '主键',
  serial_number varchar(4) comment '学校编号',
  `name` varchar(20) NOT NULL comment '学校名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_uk_name` (`name`),
  UNIQUE KEY `uk_serial_number` (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '学院表';
INSERT INTO `t_academies`(id, serial_number, name, created_at, updated_at) VALUES (1, 'A001','软件学院', now(),now());
INSERT INTO `t_academies`(id, serial_number, name, created_at, updated_at) VALUES (2, 'A002','计算机学院', now(),now());


DROP TABLE IF EXISTS `t_academies`;
CREATE TABLE `t_academies` (
  `id` int(3) NOT NULL auto_increment comment '主键',
  serial_number varchar(4) comment '学院编号',
  `name` varchar(20) NOT NULL comment '学院名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_uk_name` (`name`),
  UNIQUE KEY `uk_serial_number` (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '学院表';
INSERT INTO `t_academies`(id, serial_number, name, created_at, updated_at) VALUES (1, 'A001','软件学院', now(),now());
INSERT INTO `t_academies`(id, serial_number, name, created_at, updated_at) VALUES (2, 'A002','计算机学院', now(),now());

DROP TABLE IF EXISTS `t_majors`;
CREATE TABLE `t_majors` (
  `id` int(5) NOT NULL auto_increment comment '主键',
  serial_number varchar(5) comment '专业编号',
  `name` varchar(20) NOT NULL,
  `academy_id` int(3) not null default 0 comment '所属学院id',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_uk_name` (`name`),
  UNIQUE KEY `uk_serial_number` (`serial_number`),
  CONSTRAINT `idx_fk_academy_id` FOREIGN KEY (`academy_id`) REFERENCES `academies` (`id`) on update cascade on delete restrict
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '专业表';

INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0001', '网络通信', 2, now(),now());
INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0002', '嵌入式', 2, now(),now());
INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0003', '动漫设计', 1, now(),now());
INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0004', 'Java技术', 1, now(),now());

DROP TABLE IF EXISTS `t_courses`;
CREATE TABLE `t_courses` (
  `id` int(5) NOT NULL auto_increment comment '主键',
  serial_number varchar(5) comment '课程编号',
  `name` varchar(20) NOT NULL comment '课程名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `uk_name` (`name`),
  UNIQUE KEY `uk_serial_number` (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '课程表';

DROP TABLE IF EXISTS t_question_type;
CREATE TABLE `t_question_type` (
  `id` int(11) NOT NULL auto_increment,
  serial_number varchar(6) comment '题型编号',
  `name` varchar(20) NOT NULL comment '题型名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  unique key uk_serial_number(serial_number),
  unique key uk_name(role)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '题型表';
INSERT INTO `t_question_type`(serial_number, name) VALUES ('QT0001', '选择题');
INSERT INTO `t_question_type`(serial_number, name) VALUES ('QT0002', '判断题');
INSERT INTO `t_question_type`(serial_number, name) VALUES ('QT0003', '填空题');

DROP TABLE IF EXISTS `t_examination_paper`;
CREATE TABLE `t_examination_paper` (
  `id` int(11) NOT NULL auto_increment primary key comment '主键',
  serial_number varchar(6) comment '试卷编号：EP0001',
  `name` varchar(20) NOT NULL comment '试卷名称',
  `course_id` int(11) NOT NULL comment '试卷所属课程',
  `start_time` bigint(15) NOT NULL,
  `end_time` bigint(15) NOT NULL,
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  PRIMARY KEY  (`id`),
  CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `t_courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 comment '试卷表';

DROP TABLE IF EXISTS `t_question_choices`;
CREATE TABLE `t_question_choices` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  serial_number varchar(6) comment '试卷编号：QC0001',
  `question_type_id` int(11) NOT NULL default 0 comment '题型',
  course_id int(11) not null default 0 comment '课程',
  `name` varchar(200) NOT NULL comment '试题名称',
  `optionA` varchar(200) NOT NULL comment '选项A',
  `optionB` varchar(200) NOT NULL comment '选项B',
  `optionC` varchar(200) NOT NULL comment '选项C',
  `optionD` varchar(200) NOT NULL comment '选项D',
  `answer` varchar(200) NOT NULL comment '答案',
  `score` tinyint(2) NOT NULL comment '分数',
  `state` tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  PRIMARY KEY  (`id`),
  CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `t_courses` (`id`),
  CONSTRAINT `fk_question_type` FOREIGN KEY (`question_type_id`) REFERENCES `t_question_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '选择题';

DROP TABLE IF EXISTS `t_question_fills`;
CREATE TABLE `t_question_fills` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  serial_number varchar(6) comment '试卷编号：QC0001',
  `question_type_id` int(11) NOT NULL default 0 comment '题型',
  course_id int(11) not null default 0 comment '课程',
  `name` varchar(200) NOT NULL comment '试题名称',
  `answer` varchar(200) NOT NULL comment '答案',
  `score` tinyint(2) NOT NULL comment '分数',
  `state` tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  PRIMARY KEY  (`id`),
  KEY `idx_question_type_id` (`question_type_id`),
  KEY `idx_course_id` (`course_id`),
  CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `t_courses` (`id`),
  CONSTRAINT `fk_question_type_id` FOREIGN KEY (`question_type_id`) REFERENCES `t_question_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '填空题';

DROP TABLE IF EXISTS `t_question_judges`;
CREATE TABLE `t_question_judges` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  serial_number varchar(6) comment '试卷编号：QJ0001',
  `question_type_id` int(11) NOT NULL default 0 comment '题型',
  course_id int(11) not null default 0 comment '课程',
  `name` varchar(200) NOT NULL comment '试题名称',
  `answer` tinyint(1)  NOT NULL comment '答案：0 对；1 错',
  `score` tinyint(2) NOT NULL comment '分数',
  `state` tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  PRIMARY KEY  (`id`),
  KEY `idx_question_type_id` (`question_type_id`),
  KEY `idx_course_id` (`course_id`),
  CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `t_courses` (`id`),
  CONSTRAINT `fk_question_type_id` FOREIGN KEY (`question_type_id`) REFERENCES `t_question_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '判断题';

DROP TABLE IF EXISTS `t_examination_paper_content`;
CREATE TABLE `t_examination_paper_content` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  `examination_paper_id` int(11) NOT NULL comment '试卷id',
  `choice_id` int(11) comment '选择题id',
  `judge_id` int(11) comment '判断题id',
  `fill_id` int(11) comment '填空题id',
  `state` tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  PRIMARY KEY  (`id`),
  KEY `idx_examination_paper_id` (`examination_paper_id`),
  KEY `idx_choice_id` (`choice_id`),
  KEY `idx_judge_id` (`judge_id`),
  KEY `idx_fill_id` (`fill_id`),
  CONSTRAINT `fk_fill_id` FOREIGN KEY (`fill_id`) REFERENCES `t_question_fills` (`id`)  on update cascade on delete cascade ,
  CONSTRAINT `fk_examination_paper_id` FOREIGN KEY (`examination_paper_id`) REFERENCES `t_examination_paper` (`id`)  on update cascade on delete cascade ,
  CONSTRAINT `fk_choice_id` FOREIGN KEY (`choice_id`) REFERENCES `t_question_choices` (`id`)  on update cascade on delete cascade ,
  CONSTRAINT `fk_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `t_question_judges` (`id`) on update cascade on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 comment '试卷内容表';


DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  serial_number varchar(4) comment '角色编号',
  `name` varchar(20) NOT NULL comment '角色名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  unique key uk_serial_number(serial_number),
  unique key uk_name(name)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '角色表';

INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0000', '超级管理员', now(),now());
INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0001', '管理员', now(),now());
INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0002', '教师', now(),now());
INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0003', '学生', now(),now());

DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  serial_number varchar(10) comment '用户编号',
  `name` varchar(20) NOT NULL comment '用户名称',
  sex tinyint(1) comment '用户性别',
  image varchar(100) comment '用户图像',
  mobile int(11) comment '手机号',
  email varchar(30) comment '邮箱',
  id_card_type varchar(1) comment '证件类型：0-身份证；1-军官证；2-护照',
  id_card_no varchar(18) comment '证件号码',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  created_by int(11) not null default 0 comment '创建者',
  updated_at bigint(15) not null default 0 comment '更新时间',
  updated_by int(11) not null default 0 comment '更新者',
  PRIMARY KEY  (`id`),
  unique key uk_serial_number(serial_number),
  unique key uk_name(name)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '角色表';

INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0000', '超级管理员', now(),now());
INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0001', '管理员', now(),now());
INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0002', '教师', now(),now());
INSERT INTO `t_roles`(serial_number, name, created_at, updated_at) VALUES ('0003', '学生', now(),now());

