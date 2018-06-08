
DROP TABLE `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `groupid` int(11) NOT NULL auto_increment,
  `group` varchar(64) default NULL,
  PRIMARY KEY  (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

insert into `group` (`group`) values 
('A'),
('B'),
('C'),
('D'),
('E'),
('F'),
('G'),
('H');

DROP TABLE `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `teamid` int(11) NOT NULL auto_increment,
  `groupid` int(11) NOT NULL default '0',
  `name` varchar(64) default NULL,
  `code` varchar(64) default NULL,
  `coach` varchar(64) default NULL,
  `logo` varchar(64) default NULL,
  `flag` varchar(64) default NULL,
  PRIMARY KEY  (`teamid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

insert into `team` (`groupid`,`name`,`code`,`coach`,`logo`,`flag`) values 
(1, 'RUSSIA', 'RUS', '', 'rus.png', 'rus.png'),
(1, 'SAUDI ARABIA', 'KSA', '', 'ksa.png', 'ksa.png'),
(1, 'EGYPT', 'EGY', '', 'egy.png', 'egy.png'),
(1, 'URUGUAY', 'URU', '', 'uru.png', 'uru.png'),

(2, 'PORTUGAL', 'POR', '', 'por.png', 'por.png'),
(2, 'SPAIN', 'ESP', '', 'esp.png', 'esp.png'),
(2, 'MOROCCO', 'MAR', '', 'mar.png', 'mar.png'),
(2, 'IRAN', 'IRN', '', 'irn.png', 'irn.png'),

(3, 'FRANCE', 'FRA', '', 'fra.png', 'fra.png'),
(3, 'AUSTRALIA', 'AUS', '', 'aus.png', 'aus.png'),
(3, 'PERU', 'PER', '', 'per.png', 'per.png'),
(3, 'DENMARK', 'DEN', '', 'den.png', 'den.png'),

(4, 'ARGENTINA', 'ARG', '', 'arg.png', 'arg.png'),
(4, 'ICELAND', 'ISL', '', 'isl.png', 'isl.png'),
(4, 'CROATIA', 'CRO', '', 'cro.png', 'cro.png'),
(4, 'NIGERIA', 'NGA', '', 'nga.png', 'nga.png'),

(5, 'BRAZIL', 'BRA', '', 'bra.png', 'bra.png'),
(5, 'SWITZERLAND', 'SUI', '', 'sui.png', 'sui.png'),
(5, 'COSTA RICA', 'CRC', '', 'crc.png', 'crc.png'),
(5, 'SERBIA', 'SRB', '', 'srb.png', 'srb.png'),

(6, 'GERMANY', 'GER', '', 'ger.png', 'ger.png'),
(6, 'MEXICO', 'MEX', '', 'mex.png', 'mex.png'),
(6, 'SWEDEN', 'SWE', '', 'swe.png', 'swe.png'),
(6, 'SOUTH KOREA', 'KOR', '', 'kor.png', 'kor.png'),

(7, 'BELGIUM', 'BEL', '', 'bel.png', 'bel.png'),
(7, 'PANAMA', 'PAN', '', 'pan.png', 'pan.png'),
(7, 'TUNISIA', 'TUN', '', 'tun.png', 'tun.png'),
(7, 'ENGLAND', 'ENG', '', 'eng.png', 'eng.png'),

(8, 'POLAND', 'POL', '', 'pol.png', 'pol.png'),
(8, 'SENEGAL', 'SEN', '', 'sen.png', 'sen.png'),
(8, 'COLOMBIA', 'COL', '', 'col.png', 'col.png'),
(8, 'JAPAN', 'JPN', '', 'jpn.png', 'jpn.png');


DROP TABLE `match`;
CREATE TABLE IF NOT EXISTS `match` (
  `matchid` int(11) NOT NULL auto_increment,
  `localid` int(11) NOT NULL default '0',
  `awayid` int(11) NOT NULL default '0',
  `faseid` int(11) NOT NULL default '0',
  `groupid` int(11) NOT NULL default '0',
  `date` date,
  `hour` time,
  `timezone` VARCHAR(64),
  `stadium` varchar(64) default NULL,
  `overtime` tinyint,
  `penalty` tinyint,
  PRIMARY KEY  (`matchid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

insert into `match` (`date`,`hour`,`timezone`,`localid`,`awayid`,`stadium`,`faseid`,`groupid`) values 

('2018-06-14','18:00','+03:00',1,2,'Luzhniki Stadium, Moscow', 1, 1),
('2018-06-15','17:00','+05:00',3,4,'Central Stadium, Yekaterinburg', 1, 1),
('2018-06-19','21:00','+03:00',1,3,'Krestovsky Stadium, Saint Petersburg', 1, 1),
('2018-06-20','18:00','+03:00',4,2,'Rostov Arena, Rostov-on-Don', 1, 1),
('2018-06-25','18:00','+04:00',4,1,'Cosmos Arena, Samara', 1, 1),
('2018-06-25','17:00','+03:00',2,3,'Volgograd Arena, Volgograd', 1, 1),

('2018-06-15','18:00','+03:00',7,8,'Krestovsky Stadium, Saint Petersburg', 1, 2),
('2018-06-15','21:00','+03:00',5,6,'Fisht Olympic Stadium, Sochi', 1, 2),
('2018-06-20','15:00','+03:00',5,7,'Luzhniki Stadium, Moscow', 1, 2),
('2018-06-20','21:00','+03:00',8,6,'Kazan Arena, Kazan', 1, 2),
('2018-06-25','21:00','+03:00',8,5,'Mordovia Arena, Saransk', 1, 2),
('2018-06-25','20:00','+02:00',6,7,'Kaliningrad Stadium, Kaliningrad (UTC+2)', 1, 2),

('2018-06-16','13:00','+03:00',9,10,'Kazan Arena, Kazan', 1, 3),
('2018-06-16','19:00','+03:00',11,12,'Mordovia Arena, Saransk', 1, 3),
('2018-06-21','16:00','+03:00',12,10,'Cosmos Arena, Samara', 1, 3),
('2018-06-21','20:00','+05:00',9,11,'Central Stadium, Yekaterinburg', 1, 3),
('2018-06-26','17:00','+03:00',12,9,'Luzhniki Stadium, Moscow', 1, 3),
('2018-06-26','17:00','+03:00',10,11,'Fisht Olympic Stadium, Sochi', 1, 3),

('2018-06-16','16:00','+03:00',13,14,'Otkrytiye Arena, Moscow', 1, 4),
('2018-06-16','21:00','+02:00',15,16,'Kaliningrad Stadium, Kaliningrad (UTC+2)', 1, 4),
('2018-06-21','21:00','+03:00',13,15,'Nizhny Novgorod Stadium, Nizhny Novgorod', 1, 4),
('2018-06-22','18:00','+03:00',16,14,'Volgograd Arena, Volgograd', 1, 4),
('2018-06-26','21:00','+03:00',16,13,'Krestovsky Stadium, Saint Petersburg', 1, 4),
('2018-06-26','21:00','+03:00',14,15,'Rostov Arena, Rostov-on-Don', 1, 4),

('2018-06-17','16:00','+04:00',19,20,'Cosmos Arena, Samara', 1, 5),
('2018-06-17','21:00','+03:00',17,18 ,'Rostov Arena, Rostov-on-Don', 1, 5),
('2018-06-22','15:00','+03:00',17,19 ,'Krestovsky Stadium, Saint Petersburg', 1, 5),
('2018-06-22','20:00','+02:00',20,18,'Kaliningrad Stadium, Kaliningrad (UTC+2)', 1, 5),
('2018-06-27','21:00','+03:00',20,17,'Otkrytiye Arena, Moscow', 1, 5),
('2018-06-27','21:00','+03:00',18,19,'Nizhny Novgorod Stadium, Nizhny Novgorod', 1, 5),

('2018-06-17','18:00','+03:00',21,22,'Luzhniki Stadium, Moscow', 1, 6),
('2018-06-18','15:00','+03:00',23,24,'Nizhny Novgorod Stadium, Nizhny Novgorod', 1, 6),
('2018-06-23','18:00','+03:00',24,22,'Rostov Arena, Rostov-on-Don', 1, 6),
('2018-06-23','21:00','+03:00',21,23,'Fisht Olympic Stadium, Sochi', 1, 6),
('2018-06-27','17:00','+03:00',24,21,'Kazan Arena, Kazan', 1, 6),
('2018-06-27','19:00','+05:00',22,23,'Central Stadium, Yekaterinburg', 1, 6),

('2018-06-18','18:00','+03:00',25,26,'Fisht Olympic Stadium, Sochi', 1, 7),
('2018-06-18','21:00','+03:00',27,28,'Volgograd Arena, Volgograd', 1, 7),
('2018-06-23','15:00','+03:00',25,27,'Otkrytiye Arena, Moscow', 1, 7),
('2018-06-24','15:00','+03:00',28,26,'Nizhny Novgorod Stadium, Nizhny Novgorod', 1, 7),
('2018-06-28','20:00','+02:00',28,25,'Kaliningrad Stadium, Kaliningrad (UTC+2)', 1, 7),
('2018-06-28','21:00','+03:00',26,27,'Mordovia Arena, Saransk', 1, 7),

('2018-06-19','15:00','+03:00',31,32,'Mordovia Arena, Saransk', 1, 8),
('2018-06-19','18:00','+03:00',29,30,'Spartak Stadium, Moscow', 1, 8),
('2018-06-19','15:00','+03:00',32,30,'Ekaterinburg Arena, Ekaterinburg', 1, 8),
('2018-06-19','18:00','+03:00',29,30,'Kazan Arena, Kazanw', 1, 8),
('2018-06-28','17:00','+03:00',32,29,'Volgograd Arena, Volgograd', 1, 8),
('2018-06-28','18:00','+04:00',32,31,'Cosmos Arena, Samara', 1, 8);


#php artisan make:model Groups -cr
#php artisan make:model Teams -cr
#php artisan make:model Matches -cr
#php artisan make:model Fases -cr
CREATE TABLE IF NOT EXISTS `fase` (
  `faseid` int(11) NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  PRIMARY KEY  (`faseid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

insert into `fase` (`name`) values 
('GRUPOS'),
('OCTAVOS DE FINAL'),
('CUARTOS DE FINAL'),
('SEMI-FINAL'),
('FINAL');


CREATE TABLE IF NOT EXISTS `score` (
  `matchid` int(11) NOT NULL default '0',
  `userid` bigint NOT NULL default '0',
  `local` float,
  `away` float,
  PRIMARY KEY  (`matchid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `penalty` (
  `matchid` int(11) NOT NULL default '0',
  `local` float,
  `away` float,
  PRIMARY KEY  (`matchid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;



#
CREATE TABLE IF NOT EXISTS `goal` (
  `matchid` int(11) NOT NULL auto_increment,
  `playerid` int(11) NOT NULL default '0',
  `minute` float,
  `penalty` tinyint,
  PRIMARY KEY  (`matchid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `player` (
  `playerid` int(11) NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `number` float,
  `position` varchar(64) default NULL,
  `goals` float,
  `yellow` float,
  `red` float,

  PRIMARY KEY  (`playerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `match_result` (
  `matchid` int(11) NOT NULL default '0',
  `local` float,
  `away` float,
  PRIMARY KEY  (`matchid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

#php artisan make:model Groups -cr
#php artisan make:model Teams -cr
#php artisan make:model Matches -cr
#php artisan make:model Fases -cr
#php artisan make:model Scores -cr
#php artisan make:model Penalties -cr
#php artisan make:model Goals -cr
#php artisan make:model Players -cr
#php artisan make:model Results -cr
#php artisan make:model Users -cr
#
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(64) NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `lastname` varchar(64) default NULL,
  `email` varchar(64) default NULL,
  `photo` varchar(64) default NULL,
  `points` float,
  `paid` tinyint,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;