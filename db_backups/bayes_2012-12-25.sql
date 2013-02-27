# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.28)
# Database: bayes
# Generation Time: 2012-12-24 20:08:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table b8_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `b8_categories`;

CREATE TABLE `b8_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(4) DEFAULT NULL,
  `total` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b8_categories_category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `b8_categories` WRITE;
/*!40000 ALTER TABLE `b8_categories` DISABLE KEYS */;

INSERT INTO `b8_categories` (`id`, `category`, `total`)
VALUES
	(1,'ham',5),
	(2,'spam',3);

/*!40000 ALTER TABLE `b8_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table b8_words
# ------------------------------------------------------------

DROP TABLE IF EXISTS `b8_words`;

CREATE TABLE `b8_words` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(30) NOT NULL,
  `ham` bigint(20) unsigned DEFAULT NULL,
  `spam` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b8_words_word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `b8_words` WRITE;
/*!40000 ALTER TABLE `b8_words` DISABLE KEYS */;

INSERT INTO `b8_words` (`id`, `word`, `ham`, `spam`)
VALUES
	(1,'Приветик',0,1),
	(2,'тебе',0,2),
	(3,'сейчас',0,1),
	(4,'фишку',0,1),
	(5,'одну',0,1),
	(6,'расскажу',0,1),
	(7,'меня',0,2),
	(8,'один',0,1),
	(9,'ороший',0,2),
	(10,'знакомый',0,1),
	(11,'недавно',0,1),
	(12,'устроился',0,1),
	(13,'службу',0,1),
	(14,'те',0,1),
	(15,'поддержки',0,1),
	(16,'оператора',0,1),
	(17,'сотовой',0,1),
	(18,'связи',1,2),
	(19,'Он',0,1),
	(20,'мне',0,1),
	(21,'рассказал',0,1),
	(22,'что',0,1),
	(23,'все',1,2),
	(24,'сотрудников',0,1),
	(25,'компании',0,3),
	(26,'есть',0,2),
	(27,'возможность',0,1),
	(28,'раз',0,1),
	(29,'день',0,1),
	(30,'пополнять',0,1),
	(31,'себе',0,1),
	(32,'баланс',0,1),
	(33,'на',3,9),
	(34,'телефоне',0,1),
	(35,'Этот',0,1),
	(36,'метод',0,1),
	(37,'действует',0,1),
	(38,'оператора',0,1),
	(39,'Вобщем',0,1),
	(40,'нужно',0,1),
	(41,'отправить',0,1),
	(42,'СМС',0,1),
	(43,'текстом',0,1),
	(44,'mart',0,2),
	(45,'между',0,1),
	(46,'знак',0,1),
	(47,'П',0,1),
	(48,'ОБЕЛ',0,1),
	(49,'номер',0,1),
	(50,'течении',0,1),
	(51,'минут',0,1),
	(52,'счет',0,2),
	(53,'придет',0,1),
	(54,'рублей',0,3),
	(55,'за',0,8),
	(56,'дней',0,1),
	(57,'счете',0,1),
	(58,'уже',0,1),
	(59,'накопилось',0,1),
	(60,'Сейчас',0,1),
	(61,'могу',0,1),
	(62,'разговаривать',0,1),
	(63,'сколько',0,1),
	(64,'влезет',0,1),
	(65,'не',1,6),
	(66,'задумываясь',0,1),
	(67,'балансе',0,1),
	(68,'Только',0,2),
	(69,'ты',0,1),
	(70,'сильно',0,1),
	(71,'распространяйся',0,1),
	(72,'этой',0,1),
	(73,'фишки',0,1),
	(74,'эта',0,1),
	(75,'информация',0,1),
	(76,'для',1,2),
	(77,'ОЧЕНЬ',0,1),
	(78,'узкого',0,1),
	(79,'круга',0,1),
	(80,'людей!',0,1),
	(81,'ORACLE.',1,0),
	(82,'ORACLE',1,0),
	(83,'23.11.2012',2,0),
	(84,'09.11.2012',3,0),
	(85,'16.11.2012',3,0),
	(86,'Итак',1,0),
	(87,'дорогие',1,0),
	(88,'друзья',1,0),
	(89,'вот',1,0),
	(90,'подошел',1,0),
	(91,'концу',1,0),
	(92,'наш',1,0),
	(93,'курс',1,0),
	(94,'по',13,0),
	(95,'АИС',1,0),
	(96,'Однако',1,0),
	(97,'переносами',1,0),
	(98,'занятий',2,0),
	(99,'нас',1,0),
	(100,'вами',1,0),
	(101,'сдвинулись',1,0),
	(102,'немного',1,0),
	(103,'недели',2,0),
	(104,'дорабатывать',1,0),
	(105,'мы',1,2),
	(106,'будем',1,0),
	(107,'следующему',1,0),
	(108,'графику',1,0),
	(109,'Лекции',4,0),
	(110,'полностью',5,0),
	(111,'закончены',5,0),
	(112,'Лабораторные',4,0),
	(113,'работы',5,0),
	(114,'Должники',1,0),
	(115,'ищут',1,0),
	(116,'место',1,0),
	(117,'расписанию',5,0),
	(118,'оставши',1,0),
	(119,'ся',1,0),
	(120,'резервны',1,0),
	(121,'другими',1,0),
	(122,'группами',1,0),
	(123,'Занятие',5,0),
	(124,'импорт',1,0),
	(125,'экспорт',1,0),
	(126,'основному',3,0),
	(127,'защита',1,0),
	(128,'резервное',3,0),
	(129,'времени',3,0),
	(130,'лекции',2,0),
	(131,'лаборатория',2,0),
	(132,'кафедры',2,0),
	(133,'Высылаю',1,0),
	(134,'оценки',1,0),
	(135,'дисциплине',1,0),
	(136,'Напоминаю',1,0),
	(137,'декабря',1,0),
	(138,'понедельник',1,0),
	(139,'проставление',1,0),
	(140,'оценок',1,0),
	(141,'зачетку',1,0),
	(142,'отл',1,0),
	(143,'ор',1,0),
	(144,'удовл',1,0),
	(145,'неудовл',1,0),
	(146,'менее',1,0),
	(147,'Промежуточный',1,0),
	(148,'рейтинг',1,0),
	(149,'забываем',1,0),
	(150,'пересдавать',1,0),
	(151,'тесты',1,0),
	(152,'следующей',1,0),
	(153,'практике',1,0),
	(154,'последний',1,0),
	(155,'срок',1,0),
	(156,'сдачи',1,0),
	(157,'курсовой',1,0),
	(158,'Здравствуйте',0,1),
	(159,'уважаемый',0,1),
	(160,'ая',0,1),
	(161,'Приглашаем',0,1),
	(162,'Вас',0,1),
	(163,'принять',0,1),
	(164,'участие',0,1),
	(165,'оплачиваемы',0,1),
	(166,'Интернет',0,1),
	(167,'опроса',0,1),
	(168,'За',0,8),
	(169,'каждую',0,1),
	(170,'заполненную',0,1),
	(171,'анкету',0,1),
	(172,'заплатим',0,1),
	(173,'Вам',0,1),
	(174,'щедрое',0,1),
	(175,'вознаграждение',0,1),
	(176,'Крупнейшие',0,1),
	(177,'внимательно',0,1),
	(178,'прислушиваются',0,1),
	(179,'Вашему',0,1),
	(180,'мнению',0,1),
	(181,'нашей',0,1),
	(182,'опросной',0,1),
	(183,'Вы',0,1),
	(184,'сможете',0,1),
	(185,'зарабатывать',0,1),
	(186,'до',1,1),
	(187,'месяц!',0,1),
	(188,'dmitry.',0,1),
	(189,'dmitry',0,1),
	(190,'Media2You.ru.',0,1),
	(191,'Media2You',0,2),
	(192,'дравствуйте',0,1),
	(193,'Если',0,1),
	(194,'вас',0,1),
	(195,'орошие',0,1),
	(196,'рекламные',0,1),
	(197,'площадки',0,1),
	(198,'готовы',0,1),
	(199,'выкупать',0,1),
	(200,'ни',0,1),
	(201,'рекламу',0,2),
	(202,'Партнерская',0,1),
	(203,'программа',0,1),
	(204,'Баннер',0,3),
	(205,'728',0,1),
	(206,'—',0,5),
	(207,'руб',0,7),
	(208,'пере',0,7),
	(209,'одов',0,7),
	(210,'240',0,1),
	(211,'300',0,1),
	(212,'Rich',0,1),
	(213,'баннер',0,2),
	(214,'Sliding',0,1),
	(215,'Peel',0,1),
	(216,'Down',0,1),
	(217,'Уголок',0,1),
	(218,'Fly',0,1),
	(219,'Window',0,1),
	(220,'Окошко',0,1),
	(221,'вопросом',0,1),
	(222,'Уникальные',0,1),
	(223,'форматы',0,1),
	(224,'рекламы!',0,1),
	(225,'еферальские',0,1),
	(226,'Мы',0,3),
	(227,'рекламируем',0,1),
	(228,'ло',0,1),
	(229,'отроны',0,1),
	(230,'сайты',0,4),
	(231,'взрослы',0,1),
	(232,'Нашу',0,1),
	(233,'стыдно',0,1),
	(234,'поставить',0,1),
	(235,'сайт',0,1),
	(236,'еклама',0,1),
	(237,'сети',0,1),
	(238,'отпугивает',0,1),
	(239,'посетителей',0,1),
	(240,'принимаем',0,2),
	(241,'посещаемостью',0,1),
	(242,'от',0,1),
	(243,'человек',0,1),
	(244,'сутки',0,1),
	(245,'заработке',0,1),
	(246,'бесплатны',0,1),
	(247,'остинга',0,1),
	(248,'ucoz',0,1),
	(249,'narod',0,1),
	(250,'Ошибка!',1,0),
	(251,'С',2,0),
	(252,'ОЧНО!',1,0),
	(253,'Экзамен',1,0),
	(254,'курса',1,0),
	(255,'ошибочно',1,0),
	(256,'назначен',1,0),
	(257,'вторник',1,0),
	(258,'правильно',1,0),
	(259,'читать',1,0),
	(260,'ЕДА',1,0),
	(261,'декабря!',1,0),
	(262,'скором',1,0),
	(263,'будут',1,0),
	(264,'проводится',1,0),
	(265,'курсы',1,0),
	(266,'вычислениям',1,0),
	(267,'идут',1,0),
	(268,'районе',1,0),
	(269,'вопросы',1,0),
	(270,'Хашковскому',1,0),
	(271,'сегодня',1,0),
	(272,'или',1,0),
	(273,'завтра',1,0),
	(274,'обеда',1,0),
	(275,'ему',1,0),
	(276,'надо',1,0),
	(277,'написать',1,0),
	(278,'письмо',1,0),
	(279,'почту',1,0),
	(280,'желанием',1,0),
	(281,'записаться',1,0),
	(282,'группу',1,0),
	(283,'после',1,0),
	(284,'курсов',1,0),
	(285,'пишется',1,0),
	(286,'какой',1,0),
	(287,'то',1,0),
	(288,'московский',1,0),
	(289,'тест',1,0),
	(290,'его',1,0),
	(291,'результатам',1,0),
	(292,'возможен',1,0),
	(293,'автомат',1,0),
	(294,'ПП',1,0);

/*!40000 ALTER TABLE `b8_words` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `probability` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `title`, `message`, `user_id`, `probability`)
VALUES
	(1,'Собщение №1','В понедельник Скороход проставляет зачеты всем,кто сдал лабы и тест. Приходите с зачетками.',1,0.028302),
	(2,'Собщение №2','Все,кто сдал лабы по ЦУС и написал коллоквиум можно принести зачетки,схожу к Палычу,проставлю зачеты)',1,0.028302),
	(3,'Собщение №3','Добрый вечер,\nможно ли еще записаться на курсы по суперкомпьютерным вычислениям?',1,0.435258),
	(4,'Купи, купи, купи',' Приветик я тебе сейчас фишку одну расскажу. У меня один хороший знакомый недавно устроился в службу тех. поддержки оператора сотовой связи. Он мне рассказал, что у всех сотрудников компании есть возможность раз в день пополнять себе баланс на телефоне. Этот метод действует на всех операторах связи. Вобщем, нужно отправить СМС с текстом mart 5367 (между mart и 5367 знак \"ПРОБЕЛ\") на номер 6008 и в течении 20 минут тебе на счет придет 300 рублей. У меня за 5 дней на счете уже 1500 рублей накопилось:) Сейчас могу разговаривать сколько влезет, не задумываясь о балансе:) Только ты сильно не распространяйся на счет этой фишки, эта информация для ОЧЕНЬ узкого круга людей!',1,0.97619),
	(7,'курсы','В скором времени будут проводится курсы по суперкомпьютерным вычислениям.идут в районе недели. все вопросы к Хашковскому.сегодня или завтра до обеда ему надо написать письмо на почту с желанием записаться в группу. после курсов пишется какой-то московский тест и по его результатам возможен автомат по ПП.',1,0.018072);

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `description`)
VALUES
	(1,'login','Login privileges, granted after account confirmation'),
	(2,'admin','Administrative user, has access to everything.');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_users`;

CREATE TABLE `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;

INSERT INTO `roles_users` (`user_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(5,2);

/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_profiles`;

CREATE TABLE `user_profiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;

INSERT INTO `user_profiles` (`id`, `first_name`, `last_name`, `dob`, `gender`)
VALUES
	(1,'Dmitry','Litvyak','1991-09-17 16:42:36','male');

/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_tokens`;

CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  KEY `expires` (`expires`),
  CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `password` varchar(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `user_profile_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_email` (`email`),
  UNIQUE KEY `uniq_profile` (`user_profile_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_profile_id`) REFERENCES `travel`.`user_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `logins`, `last_login`, `user_profile_id`)
VALUES
	(1,'dmitry@yahoo.com','648548a904a3b0b1ff95fe4cfa17d60c87ab96b750d54451ccd79a7d4558d031',18,1356353294,1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
