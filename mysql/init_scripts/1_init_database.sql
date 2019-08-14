CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `year` int(11) NOT NULL,
  `month` tinyint(4) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `min` tinyint(4) NOT NULL,
  `sec` tinyint(4) NOT NULL,
  `event` varchar(45) NOT NULL,
  `code` int(11) NOT NULL,
  `version` varchar(45) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `mobile` tinyint(4) NOT NULL,
  `githubId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33434 DEFAULT CHARSET=utf8 COMMENT='登录状态'
