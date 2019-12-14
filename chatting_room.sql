/*
SQLyog Ultimate v8.55 
MySQL - 5.1.41 : Database - chatting_room
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chatting_room` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `chatting_room`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `idadmin` int(2) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL DEFAULT '0',
  `nickname` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`idadmin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`idadmin`,`user_id`,`nickname`,`password`) values (1,0,'admin','47bce5c74f589f4867dbd57e9ca9f808');

/*Table structure for table `chatrooms` */

DROP TABLE IF EXISTS `chatrooms`;

CREATE TABLE `chatrooms` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `room_id` int(8) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `online_users` int(8) NOT NULL DEFAULT '0',
  `registered_users` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `chatrooms` */

insert  into `chatrooms`(`id`,`room_id`,`name`,`online_users`,`registered_users`) values (1,1000,'The Lobby',0,0),(2,2000,'Love Shack',0,0),(3,3000,'Bored Room',0,0),(4,4000,'Game Room',0,0),(5,5000,'Music Lovers',0,0);

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL DEFAULT '0',
  `user_id2` int(8) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `friends` */

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `sender_id` int(8) NOT NULL DEFAULT '0',
  `receiver_id` int(8) NOT NULL DEFAULT '0',
  `sender_name` varchar(80) NOT NULL DEFAULT '',
  `receiver_name` varchar(80) NOT NULL DEFAULT '',
  `send_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `room_id` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `messages` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(180) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `age` tinyint(100) NOT NULL DEFAULT '0',
  `position` varchar(180) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_signin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activation_request` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lost_password_request` tinyint(1) NOT NULL DEFAULT '0',
  `room_id` int(8) NOT NULL DEFAULT '0',
  `chat_permission` tinyint(1) NOT NULL DEFAULT '0',
  `ban_last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ban_period` int(2) NOT NULL DEFAULT '-1',
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`nickname`,`email`,`password`,`sex`,`age`,`position`,`active`,`create_time`,`last_signin`,`last_activation_request`,`lost_password_request`,`room_id`,`chat_permission`,`ban_last_time`,`ban_period`,`is_online`) values (1,'parim','parim604@hotmail.com','c2b82d0a06cab0b6ee2f1023944e1407',0,37,'PY',0,'2016-01-21 17:16:48','2016-01-21 17:16:48','2016-01-21 17:16:48',127,0,1,'0000-00-00 00:00:00',-1,0),(2,'aaa','aaa@aaa.com','47bce5c74f589f4867dbd57e9ca9f808',0,23,'PY',0,'2016-01-21 17:18:14','2016-01-21 17:18:14','2016-01-21 17:18:14',127,0,1,'0000-00-00 00:00:00',-1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
