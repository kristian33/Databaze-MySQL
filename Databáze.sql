-- Adminer 4.7.3 MySQL dump
#CVICENI č.1
SELECT * FROM ticketit;



SELECT count(*) FROM ticketit;

#CVICENI č.2

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id_student` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `description` text CHARACTER SET latin2 COLLATE latin2_czech_cs,
  `city` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id_subject` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `shortcut` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `subjects` (`id_subject`, `name`, `description`, `shortcut`) VALUES
(NULL,	'Databáze',	'Práce v databází a základní operace.',	'Da'),
(NULL,	'Matematika',	'Pocítání, geometrie... vse potrebné',	'Ma'),
(NULL,	'Pocítacová grafika',	'Grafika, Photoshop, Corel, 3DS MAX... atd.',	'PG');

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id_teachers` int(11) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `teachers` (`id_teachers`, `last_name`, `first_name`, `address`) VALUES
(NULL,	'Kokeš',	'Martin',	'U Parku 1'),
(NULL,	'Sklenarova',	'Lenka',	'Nevím, Kolín'),
(NULL,	'Jan',	'Klíma',	'Nevím, Kolín');

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id_student` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `description` text CHARACTER SET latin2 COLLATE latin2_czech_cs,
  `city` varchar(255) CHARACTER SET latin2 COLLATE latin2_czech_cs DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id_subject` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `shortcut` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `subjects` (`id_subject`, `name`, `description`, `shortcut`) VALUES
(NULL,	'Databáze',	'Práce v databází a základní operace.',	'Da'),
(NULL,	'Matematika',	'Pocítání, geometrie... vse potrebné',	'Ma'),
(NULL,	'Pocítacová grafika',	'Grafika, Photoshop, Corel, 3DS MAX... atd.',	'PG');

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id_teachers` int(11) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `teachers` (`id_teachers`, `last_name`, `first_name`, `address`) VALUES
(NULL,	'Kokeš',	'Martin',	'U Parku 1'),
(NULL,	'Sklenarova',	'Lenka',	'Nevím, Kolín'),
(NULL,	'Jan',	'Klíma',	'Nevím, Kolín');

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- 2019-10-01 10:15:17

;


ALTER TABLE `subjects`
CHANGE `id_subject` `id_subject` int(11) NOT NULL FIRST,
CHANGE `name` `name` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `id_subject`,
CHANGE `description` `description` text COLLATE 'latin1_swedish_ci' NOT NULL AFTER `name`,
CHANGE `shortcut` `shortcut` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `description`;


INSERT INTO `subjects` (`id_subject`, `name`, `description`, `shortcut`)
VALUES ('', 'Webové programováí', 'je to best předmět na světe', 'WP');


ALTER TABLE `subjects`
CHANGE `id_subject` `id_subject` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST,
CHANGE `name` `name` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `id_subject`,
CHANGE `description` `description` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `name`,
CHANGE `shortcut` `shortcut` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `description`;


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best předmět na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webové programováí', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webove_programovani', 'je to best predmet na světe', 'WP');


INSERT INTO `subjects` (`name`, `description`, `shortcut`)
VALUES ('Webove_programovani', 'je to best predmet na svete', 'WP');


ALTER TABLE `teachers`
ADD PRIMARY KEY `id_teachers` (`id_teachers`);


ALTER TABLE `teachers`
ADD PRIMARY KEY `id_teachers_last_name_first_name_address` (`id_teachers`, `last_name`, `first_name`, `address`);


ALTER TABLE `teachers`
CHANGE `id_teachers` `id_teachers` int(11) NOT NULL FIRST,
CHANGE `last_name` `last_name` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `id_teachers`,
CHANGE `first_name` `first_name` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `last_name`,
CHANGE `address` `address` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `first_name`;


ALTER TABLE `teachers`
CHANGE `id_teachers` `id_teachers` int(11) NOT NULL FIRST,
CHANGE `last_name` `last_name` varchar(255) COLLATE 'ucs2_czech_ci' NOT NULL AFTER `id_teachers`,
CHANGE `first_name` `first_name` varchar(255) COLLATE 'utf8_czech_ci' NOT NULL AFTER `last_name`,
CHANGE `address` `address` varchar(255) COLLATE 'ucs2_czech_ci' NOT NULL AFTER `first_name`;


ALTER TABLE `teachers`
CHANGE `id_teachers` `id_teachers` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST,
CHANGE `last_name` `last_name` varchar(255) COLLATE 'ucs2_czech_ci' NOT NULL AFTER `id_teachers`,
CHANGE `first_name` `first_name` varchar(255) COLLATE 'utf8_czech_ci' NOT NULL AFTER `last_name`,
CHANGE `address` `address` varchar(255) COLLATE 'ucs2_czech_ci' NOT NULL AFTER `first_name`;


UPDATE `teachers` SET
`id_teachers` = '3',
`last_name` = 'Klima',
`first_name` = 'Jan',
`address` = 'Nevím, Kolín'
WHERE `id_teachers` = '3';


CREATE TABLE ckassroom (
   id_classroom int,
   number_spec varchar(255),
   seats_count int,
   location varchar(255)
);


ALTER TABLE `ckassroom`
RENAME TO `classroom`;


ALTER TABLE `classroom`
CHANGE `id_classroom` `id_classroom` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST,
CHANGE `number_spec` `number_spec` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `id_classroom`,
CHANGE `seats_count` `seats_count` int(11) NOT NULL AFTER `number_spec`,
CHANGE `location` `location` varchar(255) COLLATE 'latin1_swedish_ci' NOT NULL AFTER `seats_count`;


INSERT INTO `classroom` (`number_spec`, `seats_count`, `location`)
VALUES ('1', '23', 'Second building');


INSERT INTO `classroom` (`number_spec`, `seats_count`, `location`)
VALUES ('13', '35', 'Second building');


UPDATE `classroom` SET `id_classroom` = '1', `number_spec` = '1', `seats_count` = '23', `location` = 'Second building' WHERE `id_classroom` = '1';
UPDATE `classroom` SET `id_classroom` = '2', `number_spec` = '13', `seats_count` = '35', `location` = 'Second building' WHERE `id_classroom` = '2';


INSERT INTO `classroom` (`number_spec`, `seats_count`, `location`)
VALUES ('9', '26', 'Second building');


UPDATE `classroom` SET `id_classroom` = '1', `number_spec` = '1', `seats_count` = '23', `location` = 'First building' WHERE `id_classroom` = '1';
UPDATE `classroom` SET `id_classroom` = '2', `number_spec` = '13', `seats_count` = '35', `location` = 'Second building' WHERE `id_classroom` = '2';
UPDATE `classroom` SET `id_classroom` = '3', `number_spec` = '9', `seats_count` = '26', `location` = 'Second building' WHERE `id_classroom` = '3';


INSERT INTO `classroom` (`number_spec`, `seats_count`, `location`)
VALUES ('19', '10', 'Second building');


INSERT INTO `classroom` (`number_spec`, `seats_count`, `location`)
VALUES ('6b', '20', 'Second building');


SET foreign_key_checks = 0;
DROP TABLE `wp_commentmeta`, `wp_comments`, `wp_links`, `wp_options`, `wp_postmeta`, `wp_posts`, `wp_termmeta`, `wp_terms`, `wp_term_relationships`, `wp_term_taxonomy`, `wp_usermeta`, `wp_users`;

CVICENI č.3
CREATE TABLE students (
  firstname varchar(255),
  lastname varchar(255),
  adress varchar(255),
  description text,
  city varchar(255),
  birthdate date
  
);


SELECT * FROM students;


DESCRIBE;




DESCRIBE
;


DESCRIBE;


DESCRIBE students;


INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Kristián',
 'Klimek',
 'Josefa Vedlicha 550',
 'Jsem super a mám rád ženy a pivo!',
 'Cerhenice',
 '1998-03-01'
);


SELECT * FROM students;




SELECT * FROM students;


DELETE FROM students;
WHERE firstname LIKE 'Kristián';




DESCRIBE students;




INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Poděbrady',
 '2001-01-01'
);
INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Knefič',
 'Dvůr Kakaka',
 'Já miluju Minecraft! Je to svět ve kterým jsem rád.',
 'Křečhoř',
 '2002-01-01'
);
INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hádáš?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Poděbrady',
 '2001-01-01'
)
INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Knefič',
 'Dvůr Kakaka',
 'Já miluju Minecraft! Je to svět ve kterým jsem rád.',
 'Křečhoř',
 '2002-01-01'
)
INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hádáš?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Poděbrady',
 '2001-01-01'
)
INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Knefič',
 'Dvůr Kakaka',
 'Já miluju Minecraft! Je to svet ve kterým jsem rád.',
 'Křečhoř',
 '2002-01-01'
)
INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hadas?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Poděbrady',
 '2001-01-01'
)

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matěj',
 'Knefič',
 'Dvůr Kakaka',
 'Já miluju Minecraft! Je to svet ve kterým jsem rád.',
 'Křečhoř',
 '2002-01-01'
)

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hadas?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Poděbrady',
 '2001-01-01'
)

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Knefic',
 'Dvur Kakaka',
 'Já miluju Minecraft! Je to svet ve kterým jsem rád.',
 'Křečhoř',
 '2002-01-01'
)

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hadas?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Poděbrady',
 '2001-01-01'
);

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Knefic',
 'Dvur Kakaka',
 'Já miluju Minecraft! Je to svet ve kterým jsem rád.',
 'Křečhoř',
 '2002-01-01'
);

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hadas?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Podebrady',
 '2001-01-01'
);

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Knefic',
 'Dvur Kakaka',
 'Já miluju Minecraft! Je to svet ve kterým jsem rád.',
 'Krechor',
 '2002-01-01'
);

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Používám Ubuntu a proč se jako hadas?',
 'Žleby',
 '2000-01-01'
);



INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Dee',
 'Kluk 123',
 'Mám rád Star Wars a co jako!',
 'Podebrady',
 '2001-01-01'
);

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Matej',
 'Knefic',
 'Dvur Kakaka',
 'Já miluju Minecraft! Je to svet ve kterým jsem rád.',
 'Krechor',
 '2002-01-01'
);

INSERT INTO students (
firstname,
lastname,
adress,
description,
city,
birthdate
)
VALUES (
 'Jane',
 'Pili',
 'Žleby papapa',
 'Použivám Ubuntu a proc se jako hadas?',
 'Žleby',
 '2000-01-01'
);



SELECT * FROM students;

-- 2019-10-01 10:15:17