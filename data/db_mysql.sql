CREATE DATABASE `worklog` CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `pre_user` (
  `userid` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '�û�id',
  `username` VARCHAR(50) NOT NULL COMMENT '�û�����',
  `uc_uid` MEDIUMINT(8) UNSIGNED DEFAULT '0' COMMENT 'discuz uid',
  `uc_username` VARCHAR(50) DEFAULT NULL COMMENT 'disucz_�û���',
  `password` VARCHAR(50) NOT NULL COMMENT '����',
  `type` TINYINT(4) DEFAULT NULL COMMENT '�û����ͣ����ܣ��ܾ������ž�������Ա���ȣ�',
  `masterid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '�ϼ��쵼id',
  `underling` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '����id',
  `email` VARCHAR(80) DEFAULT '' COMMENT '���������ַ',
  `usertype` TINYINT(1) UNSIGNED DEFAULT '0' COMMENT '0��ͨ�û���1���Ź���Ա,2����Ա',
  `deposit` FLOAT DEFAULT '0' COMMENT 'ʣ�����',
  `modified` INT(10) UNSIGNED DEFAULT '0' COMMENT '�޸�ʱ��',
  `dateline` INT(10) UNSIGNED DEFAULT '0' COMMENT '����ʱ��',
  PRIMARY KEY (`userid`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8 COMMENT='�û���Ϣ��¼��';

CREATE TABLE `pre_rep_comment` (
  `commentid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '����id',
  `repid` INT(10) UNSIGNED NOT NULL COMMENT '�ձ�id',
  `authorid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '��������id',
  `authorname` VARCHAR(20) DEFAULT NULL COMMENT '������������',
  `comment` VARCHAR(500) DEFAULT NULL COMMENT '��������(����500�ַ�)',
  `modified` INT(10) UNSIGNED DEFAULT NULL COMMENT '�޸�ʱ��',
  `dateline` INT(10) UNSIGNED DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`commentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `pre_rep_report` (
  `rep_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '����id',
  `uid` MEDIUMINT(8) UNSIGNED DEFAULT '0' COMMENT '�û�uid',
  `username` VARCHAR(50) DEFAULT '' COMMENT '�û���',
  `date` INT(10) UNSIGNED DEFAULT '0' COMMENT '����ʱ��',
  `type` TINYINT(1) UNSIGNED DEFAULT '0' COMMENT '�������ͣ�0�ձ���2�ܱ���8�ܽ�',
  `modified` INT(10) UNSIGNED DEFAULT '0' COMMENT '�޸�ʱ��',
  `dateline` INT(10) UNSIGNED DEFAULT '0' COMMENT '����ʱ��',
  `today` TEXT COMMENT '���칤��',
  `tomorrow` TEXT COMMENT '����ƻ�',
  `suggestion` TEXT COMMENT '���⽨��',
  PRIMARY KEY (`rep_id`),
  KEY `NewIndex1` (`username`),
  KEY `NewIndex2` (`date`,`username`)
) ENGINE=MYISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8

