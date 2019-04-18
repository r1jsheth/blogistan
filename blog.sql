-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,'Art'),(11,'C++'),(5,'Coding'),(18,'Data Structures'),(6,'Git'),(16,'Interview'),(8,'Linux'),(9,'PHP'),(7,'Responsive Design'),(1,'Uncategorized');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `date_posted` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (32,9,'This Blog is coded with PHP','This is a simple blog with not much to it. It can be extended... the sky is the limit!','2019-04-17 16:05:51'),
(31,8,'Linux','Linus Torvlads startes Linux as university project!','2019-02-23 18:20:03'),
(6,2,'Hello World','Hello World!!','2019-02-01 10:54:52'),
(33,5,'What was used to make this Blog','This blog is put together with:\r\n\r\nPHP, CSS3, HTML5 and of course MySQL','2019-03-18 23:39:45'),
(36,11,'Java vs C++','Java is very slow compared to C++.\r\nUltimately C++ is the best language ever!\r\nC++ wins here doubtlessly.','2019-04-17 16:37:02'),
(37,11,'Java','Java is very slow compared to C++.\r\nUltimately C++ is the best language ever!','2019-04-17 16:39:32'),
(38,8,'Competitive Programming','kmvkf vf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf vdlf dlf','2019-04-17 16:42:25'),
(39,7,'Latest','In publishing, art, and communication, content is the information and experiences that are directed towards an end-user or audience. Content is \"something that is to be expressed through some medium, as speech, writing or any of various arts\".','2019-04-17 18:54:01'),
(40,6,'What is Git?','Git is a distributed version-control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files. Its goals include speed, data integrity, and support for distributed, non-linear workflows.','2019-04-17 18:54:31'),
(41,12,'Blog','A blog is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style text entries. Posts are typically displayed in reverse chronological order, so that the most recent post appears first, at the top of the web page.','2019-04-18 22:39:56');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-18 23:56:31
