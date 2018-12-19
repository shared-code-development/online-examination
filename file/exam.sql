# noinspection SqlNoDataSourceInspectionForFile
drop database online_examination;
create database online_examination default character set utf8;
use online_examination;

DROP TABLE IF EXISTS `t_academies`;
CREATE TABLE `t_academies` (
  `id` int(3) NOT NULL auto_increment comment '主键',
  serial_number varchar(4) comment '学院编号',
  `name` varchar(20) NOT NULL comment '学院名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  updated_at bigint(15) not null default 0 comment '更新时间',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_uk_name` (`name`),
  unique key idx_uk_serial_number(serial_number)
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
  updated_at bigint(15) not null default 0 comment '更新时间',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_uk_name` (`name`),
  CONSTRAINT `idx_fk_academy_id` FOREIGN KEY (`academy_id`) REFERENCES `academies` (`id`) on update cascade on delete restrict
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '专业表';

INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0001', '网络通信', 2, now(),now());
INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0002', '嵌入式', 2, now(),now());
INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0003', '动漫设计', 1, now(),now());
INSERT INTO `t_majors`(serial_number, name, academy_id, created_at, updated_at) VALUES ('M0004', 'Java技术', 1, now(),now());

DROP TABLE IF EXISTS `t_courses`;
CREATE TABLE `t_courses` (
  `id` int(5) NOT NULL auto_increment comment '主键',
  `major_id` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UK_ewj0jyydmllag36rq8xxyw58y` (`cname`),
  KEY `FK_tkrw4xhntqxigccbcm2ywffqn` (`major_id`),
  CONSTRAINT `FK_tkrw4xhntqxigccbcm2ywffqn` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 comment '课程表';

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', '1', '高数');
INSERT INTO `courses` VALUES ('2', '1', 'jsp');
INSERT INTO `courses` VALUES ('8', '6', 'php');
INSERT INTO `courses` VALUES ('9', '6', 'photoshop');


DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `id` int(11) NOT NULL auto_increment comment '主键',
  serial_number varchar(4) comment '角色编号',
  `role` varchar(20) NOT NULL comment '角色名称',
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  updated_at bigint(15) not null default 0 comment '更新时间',
  PRIMARY KEY  (`id`),
  unique key uk_serial_number(serial_number),
  unique key uk_role(role)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 comment '角色表';

INSERT INTO `t_roles`(serial_number, role, created_at, updated_at) VALUES ('0000', '超级管理员', now(),now());
INSERT INTO `t_roles`(serial_number, role, created_at, updated_at) VALUES ('0001', '管理员', now(),now());
INSERT INTO `t_roles`(serial_number, role, created_at, updated_at) VALUES ('0002', '教师', now(),now());
INSERT INTO `t_roles`(serial_number, role, created_at, updated_at) VALUES ('0003', '学生', now(),now());









### ------------------------------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `admin` (
  `id` int(5) NOT NULL auto_increment comment '主键',
  `vokes_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  state tinyint(1) not null default 0 comment '状态： 0-启用；1-禁用',
  version int(5) not null default 0 comment '版本，乐观锁专用',
  created_at bigint(15) not null default 0 comment '创建时间',
  updated_at bigint(15) not null default 0 comment '更新时间',
  PRIMARY KEY  (`id`),
  KEY `FK_f9eepkawk1yqo9vyi4bvw5mas` (`vokes_id`),
  CONSTRAINT `FK_f9eepkawk1yqo9vyi4bvw5mas` FOREIGN KEY (`vokes_id`) REFERENCES `vokes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `admin` VALUES ('1', '1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `choices`
-- ----------------------------
DROP TABLE IF EXISTS `choices`;
CREATE TABLE `choices` (
  `id` int(11) NOT NULL auto_increment,
  `topic_id` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `coptionA` varchar(200) NOT NULL,
  `coptionB` varchar(200) NOT NULL,
  `coptionC` varchar(200) NOT NULL,
  `coptionD` varchar(200) NOT NULL,
  `canswer` varchar(200) NOT NULL,
  `cscore` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_7folqj81vwfoscfinprv4q9qk` (`topic_id`),
  KEY `FK_k3n1n8o3b4p5xsa1mjuxt648d` (`course_id`),
  CONSTRAINT `FK_k3n1n8o3b4p5xsa1mjuxt648d` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FK_7folqj81vwfoscfinprv4q9qk` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choices
-- ----------------------------
INSERT INTO `choices` VALUES ('1', '1', '1+2', '1', '2', '3', '4', '3', '2', '1');
INSERT INTO `choices` VALUES ('2', '1', '3+4', '3', '7', '6', '8', '7', '2', '1');
INSERT INTO `choices` VALUES ('3', '1', '5+6', '11', '20', '17', '22', '11', '2', '1');
INSERT INTO `choices` VALUES ('4', '1', '3+5', '5', '6', '7', '8', '8', '2', '1');
INSERT INTO `choices` VALUES ('5', '1', '6+9', '14', '15', '16', '17', '15', '2', '1');
INSERT INTO `choices` VALUES ('6', '1', '5+8', '13', '14', '15', '16', '13', '2', '1');
INSERT INTO `choices` VALUES ('7', '1', '1+2=', '1', '2', '3', '4', '3', '2', '1');



-- ----------------------------
-- Table structure for `examinfo`
-- ----------------------------
DROP TABLE IF EXISTS `examinfo`;
CREATE TABLE `examinfo` (
  `id` int(11) NOT NULL auto_increment,
  `exam_id` int(11) NOT NULL,
  `choice_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `fill_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_8y5xmfxxql852itq1nilnnlo4` (`exam_id`),
  KEY `FK_akrf06qoybstaa9y8tn9cicyi` (`choice_id`),
  KEY `FK_egx2sqye1peia8jf7nghmevva` (`judge_id`),
  KEY `FK_4a74w78xd44m405xygwyyb0st` (`fill_id`),
  CONSTRAINT `FK_4a74w78xd44m405xygwyyb0st` FOREIGN KEY (`fill_id`) REFERENCES `fills` (`id`),
  CONSTRAINT `FK_8y5xmfxxql852itq1nilnnlo4` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  CONSTRAINT `FK_akrf06qoybstaa9y8tn9cicyi` FOREIGN KEY (`choice_id`) REFERENCES `choices` (`id`),
  CONSTRAINT `FK_egx2sqye1peia8jf7nghmevva` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examinfo
-- ----------------------------
INSERT INTO `examinfo` VALUES ('21', '4', '5', '5', '2');
INSERT INTO `examinfo` VALUES ('22', '4', '6', '2', '3');
INSERT INTO `examinfo` VALUES ('23', '4', '2', '1', '1');
INSERT INTO `examinfo` VALUES ('24', '4', '4', '6', '4');
INSERT INTO `examinfo` VALUES ('25', '4', '7', '4', '6');

-- ----------------------------
-- Table structure for `exams`
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL auto_increment,
  `ename` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `tdate` int(11) NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `autor` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_jq8evw709sky34ue2nd9joyp0` (`course_id`),
  CONSTRAINT `FK_jq8evw709sky34ue2nd9joyp0` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES ('4', '高数', '1', '10', '2013-11-29 13:00:19', '2013-11-29 14:42:23', '已组卷', 'tea');

-- ----------------------------
-- Table structure for `fills`
-- ----------------------------
DROP TABLE IF EXISTS `fills`;
CREATE TABLE `fills` (
  `id` int(11) NOT NULL auto_increment,
  `topic_id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `fanswer` varchar(200) NOT NULL,
  `fscore` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ia5a900eajdvl8o7lebybpj5g` (`topic_id`),
  KEY `FK_js9qd0747rvdd0afq6ffrc9hn` (`course_id`),
  CONSTRAINT `FK_js9qd0747rvdd0afq6ffrc9hn` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FK_ia5a900eajdvl8o7lebybpj5g` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fills
-- ----------------------------
INSERT INTO `fills` VALUES ('1', '3', '1+3=', '4', '2', '1');
INSERT INTO `fills` VALUES ('2', '3', '3+7=', '10', '2', '1');
INSERT INTO `fills` VALUES ('3', '3', '10-8=', '2', '2', '1');
INSERT INTO `fills` VALUES ('4', '3', '8+9=', '17', '2', '1');
INSERT INTO `fills` VALUES ('5', '3', '5+9=', '14', '2', '1');
INSERT INTO `fills` VALUES ('6', '3', '3+8=', '11', '2', '1');

-- ----------------------------
-- Table structure for `judges`
-- ----------------------------
DROP TABLE IF EXISTS `judges`;
CREATE TABLE `judges` (
  `id` int(11) NOT NULL auto_increment,
  `topic_id` int(11) NOT NULL,
  `jname` varchar(200) NOT NULL,
  `janswer` varchar(200) NOT NULL,
  `jscore` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_djexgl2rcufiyimkqkmjtgcgw` (`topic_id`),
  KEY `FK_lgwjw2ddusoi9f63x086kjxfe` (`course_id`),
  CONSTRAINT `FK_lgwjw2ddusoi9f63x086kjxfe` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FK_djexgl2rcufiyimkqkmjtgcgw` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of judges
-- ----------------------------
INSERT INTO `judges` VALUES ('1', '2', '2+3=5', '对', '1', '1');
INSERT INTO `judges` VALUES ('2', '2', '4+6=10', '对', '1', '1');
INSERT INTO `judges` VALUES ('3', '2', '2+8=11', '错', '1', '1');
INSERT INTO `judges` VALUES ('4', '2', '4+9=13', '对', '1', '1');
INSERT INTO `judges` VALUES ('5', '2', '8+9=16', '错', '1', '1');
INSERT INTO `judges` VALUES ('6', '2', '5+9=13', '错', '1', '1');



-- ----------------------------
-- Table structure for `problems`
-- ----------------------------
DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems` (
  `id` int(11) NOT NULL auto_increment,
  `topic_id` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `canswer` varchar(200) NOT NULL,
  `panswer` varchar(200) NOT NULL,
  `pscore` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_5n1nxusxbisg2ovpeuxlrwo97` (`topic_id`),
  KEY `FK_oh0qkq2ba9e8sdsabunhye03t` (`course_id`),
  CONSTRAINT `FK_oh0qkq2ba9e8sdsabunhye03t` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FK_5n1nxusxbisg2ovpeuxlrwo97` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problems
-- ----------------------------
INSERT INTO `problems` VALUES ('1', '1', '1+3', 'a.2 b.4 c.5 d.3', 'b', '2', '1');
INSERT INTO `problems` VALUES ('2', '1', '3+4', 'a.6 b.8 c.7 d.9', 'c', '2', '1');
INSERT INTO `problems` VALUES ('3', '2', '1+0=0', 'a.对 b.错', 'b', '1', '1');
INSERT INTO `problems` VALUES ('4', '2', '3+4=7', 'a.对 b.错', 'a', '1', '1');
INSERT INTO `problems` VALUES ('5', '1', 'session是什么', 'a.会话 b.缓存 ', 'a', '2', '2');

-- ----------------------------
-- Table structure for `scores`
-- ----------------------------
DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores` (
  `id` int(11) NOT NULL auto_increment,
  `stunum` int(11) NOT NULL,
  `stuname` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `major` varchar(20) NOT NULL,
  `sum` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scores
-- ----------------------------
INSERT INTO `scores` VALUES ('12', '101', 'stu', '高数', '网络工程', '85');
INSERT INTO `scores` VALUES ('13', '102', 'stu2', '高数', '嵌入式', '95');
INSERT INTO `scores` VALUES ('22', '103', 'stu3', '高数', '网络工程', '1');
INSERT INTO `scores` VALUES ('23', '104', 'stu4', '高数', '动漫设计', '1');
INSERT INTO `scores` VALUES ('24', '105', 'stu5', '高数', '网络工程', '4');

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL auto_increment,
  `major_id` int(11) NOT NULL,
  `snum` int(11) NOT NULL,
  `spwd` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `ssex` varchar(10) NOT NULL,
  `sgrade` int(11) NOT NULL,
  `voke_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UK_44kpm5dev5svdie5ibsj98v69` (`snum`),
  KEY `FK_4pvbus0bclwy7indug93fhlxf` (`major_id`),
  KEY `FK_j4anjogsdhyyryl4dmupfvp13` (`voke_id`),
  CONSTRAINT `FK_j4anjogsdhyyryl4dmupfvp13` FOREIGN KEY (`voke_id`) REFERENCES `vokes` (`id`),
  CONSTRAINT `FK_4pvbus0bclwy7indug93fhlxf` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', '1', '101', '101', 'stu1', '男', '2010', '3');
INSERT INTO `students` VALUES ('2', '2', '102', '102', 'stu2', '女', '2010', '3');
INSERT INTO `students` VALUES ('3', '1', '103', '103', 'stu3', '男', '2010', '3');
INSERT INTO `students` VALUES ('4', '6', '104', '104', 'stu4', '女', '2010', '3');
INSERT INTO `students` VALUES ('5', '1', '105', '105', 'stu5', '女', '2010', '3');
INSERT INTO `students` VALUES ('7', '1', '106', '106', 'stu6', '男', '2010', '3');

-- ----------------------------
-- Table structure for `teachers`
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL auto_increment,
  `course_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  `tnum` int(11) NOT NULL,
  `tpwd` varchar(20) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tsex` varchar(10) NOT NULL,
  `voke_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UK_20hchxxpo7ugb2lgo9es1ud3w` (`tnum`),
  KEY `FK_i8f9sjvjsv1npb189hi85h6u1` (`course_id`),
  KEY `FK_1bc1nnp4kx3y3717jxqvew97w` (`major_id`),
  KEY `FK_ammioelb4u8kevmol6q76y82x` (`voke_id`),
  CONSTRAINT `FK_ammioelb4u8kevmol6q76y82x` FOREIGN KEY (`voke_id`) REFERENCES `vokes` (`id`),
  CONSTRAINT `FK_1bc1nnp4kx3y3717jxqvew97w` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`),
  CONSTRAINT `FK_i8f9sjvjsv1npb189hi85h6u1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('1', '1', '1', '101', '101', 'tea', '男', '2');
INSERT INTO `teachers` VALUES ('2', '2', '2', '102', '102', 'tea2', '女', '2');
INSERT INTO `teachers` VALUES ('4', '8', '6', '103', '103', 'tea3', '男', '2');
INSERT INTO `teachers` VALUES ('5', '2', '1', '104', '104', 'tea4', '男', '2');

-- ----------------------------
-- Table structure for `testinfo`
-- ----------------------------
DROP TABLE IF EXISTS `testinfo`;
CREATE TABLE `testinfo` (
  `id` int(11) NOT NULL auto_increment,
  `proper_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_a4obo21wdnph4kanbeuub3e8y` (`proper_id`),
  KEY `FK_ipia788ia8scie8fagwnw933y` (`problem_id`),
  CONSTRAINT `FK_ipia788ia8scie8fagwnw933y` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`),
  CONSTRAINT `FK_a4obo21wdnph4kanbeuub3e8y` FOREIGN KEY (`proper_id`) REFERENCES `testproper` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testinfo
-- ----------------------------
INSERT INTO `testinfo` VALUES ('26', '7', '1');
INSERT INTO `testinfo` VALUES ('27', '7', '2');
INSERT INTO `testinfo` VALUES ('28', '7', '3');
INSERT INTO `testinfo` VALUES ('29', '7', '4');

-- ----------------------------
-- Table structure for `testproper`
-- ----------------------------
DROP TABLE IF EXISTS `testproper`;
CREATE TABLE `testproper` (
  `id` int(11) NOT NULL auto_increment,
  `tname` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `tdate` int(11) NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `autor` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_co5a61kqifr9j0y02f5caq29q` (`course_id`),
  CONSTRAINT `FK_co5a61kqifr9j0y02f5caq29q` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testproper
-- ----------------------------
INSERT INTO `testproper` VALUES ('7', '高数考试', '1', '1', '2013-11-29 13:00:00', '2013-11-29 14:00:00', '已组卷', 'tea');

-- ----------------------------
-- Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL auto_increment,
  `tname` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', '选择题');
INSERT INTO `topics` VALUES ('2', '判断题');
INSERT INTO `topics` VALUES ('3', '填空题');


