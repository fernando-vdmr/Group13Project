create table if not exists `Users` (
 `Username` varchar(40) not null auto_increment,
 `Password` varchar(40) not null,
 `Dog_Image` blob not null,
 primary key (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7;


