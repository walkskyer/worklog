CREATE DATABASE `worklog` CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `pre_user` (
  `userid` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` VARCHAR(50) NOT NULL COMMENT '用户名称',
  `uc_uid` MEDIUMINT(8) UNSIGNED DEFAULT '0' COMMENT 'discuz uid',
  `uc_username` VARCHAR(50) DEFAULT NULL COMMENT 'disucz_用户名',
  `password` VARCHAR(50) NOT NULL COMMENT '密码',
  `type` TINYINT(4) DEFAULT NULL COMMENT '用户类型（主管，总经理，部门经理，财务，员工等）',
  `masterid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级领导id',
  `underling` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '部下id',
  `email` VARCHAR(80) DEFAULT '' COMMENT '电子邮箱地址',
  `usertype` TINYINT(1) UNSIGNED DEFAULT '0' COMMENT '0普通用户，1部门管理员,2管理员',
  `deposit` FLOAT DEFAULT '0' COMMENT '剩余费用',
  `modified` INT(10) UNSIGNED DEFAULT '0' COMMENT '修改时间',
  `dateline` INT(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`userid`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8 COMMENT='用户信息记录。';

CREATE TABLE `pre_rep_comment` (
  `commentid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `repid` INT(10) UNSIGNED NOT NULL COMMENT '日报id',
  `authorid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '评论作者id',
  `authorname` VARCHAR(20) DEFAULT NULL COMMENT '评论作者名称',
  `comment` VARCHAR(500) DEFAULT NULL COMMENT '评论内容(限制500字符)',
  `modified` INT(10) UNSIGNED DEFAULT NULL COMMENT '修改时间',
  `dateline` INT(10) UNSIGNED DEFAULT NULL COMMENT '发表时间',
  PRIMARY KEY (`commentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `pre_rep_report` (
  `rep_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '报告id',
  `uid` MEDIUMINT(8) UNSIGNED DEFAULT '0' COMMENT '用户uid',
  `username` VARCHAR(50) DEFAULT '' COMMENT '用户名',
  `date` INT(10) UNSIGNED DEFAULT '0' COMMENT '报告时间',
  `type` TINYINT(1) UNSIGNED DEFAULT '0' COMMENT '报表类型，0日报，2周报，8总结',
  `modified` INT(10) UNSIGNED DEFAULT '0' COMMENT '修改时间',
  `dateline` INT(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  `today` TEXT COMMENT '今天工作',
  `tomorrow` TEXT COMMENT '明天计划',
  `suggestion` TEXT COMMENT '问题建议',
  PRIMARY KEY (`rep_id`),
  KEY `NewIndex1` (`username`),
  KEY `NewIndex2` (`date`,`username`)
) ENGINE=MYISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8

