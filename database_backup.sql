-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: crime_dashboard
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agegroup`
--

DROP TABLE IF EXISTS `agegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agegroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `range` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agegroup`
--

LOCK TABLES `agegroup` WRITE;
/*!40000 ALTER TABLE `agegroup` DISABLE KEYS */;
INSERT INTO `agegroup` VALUES (1,'Menos de 18 años'),(2,'De 18 a 24 años'),(3,'De 25 a 44 años'),(4,'De 45 a 64 años'),(5,'65 y más años'),(6,'Todas las edades');
/*!40000 ALTER TABLE `agegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crimedata`
--

DROP TABLE IF EXISTS `crimedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crimedata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crime_type_id` int DEFAULT NULL,
  `age_group_id` int DEFAULT NULL,
  `year_id` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_crime_type` (`crime_type_id`),
  KEY `fk_age_group` (`age_group_id`),
  KEY `fk_year` (`year_id`),
  CONSTRAINT `fk_age_group` FOREIGN KEY (`age_group_id`) REFERENCES `agegroup` (`id`),
  CONSTRAINT `fk_crime_type` FOREIGN KEY (`crime_type_id`) REFERENCES `crimetype` (`id`),
  CONSTRAINT `fk_year` FOREIGN KEY (`year_id`) REFERENCES `year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimedata`
--

LOCK TABLES `crimedata` WRITE;
/*!40000 ALTER TABLE `crimedata` DISABLE KEYS */;
INSERT INTO `crimedata` VALUES (1,18,6,12,41),(2,18,6,11,36),(3,18,6,10,34),(4,18,6,9,38),(5,18,6,8,38),(6,18,6,7,35),(7,18,6,6,34),(8,18,6,5,32),(9,18,6,4,31),(10,18,6,3,31),(11,18,6,2,34),(12,18,6,1,38),(13,18,NULL,12,162),(14,18,NULL,11,168),(15,18,NULL,10,93),(16,18,NULL,9,173),(17,18,NULL,8,119),(18,18,NULL,7,157),(19,18,NULL,6,117),(20,18,NULL,5,118),(21,18,NULL,4,110),(22,18,NULL,3,89),(23,18,NULL,2,86),(24,18,NULL,1,88),(25,18,NULL,12,4),(26,18,NULL,11,4),(27,18,NULL,10,3),(28,18,NULL,9,4),(29,18,NULL,8,4),(30,18,NULL,7,4),(31,18,NULL,6,3),(32,18,NULL,5,3),(33,18,NULL,4,3),(34,18,NULL,3,3),(35,18,NULL,2,4),(36,18,NULL,1,4),(37,18,NULL,12,24),(38,18,NULL,11,22),(39,18,NULL,10,21),(40,18,NULL,9,24),(41,18,NULL,8,23),(42,18,NULL,7,21),(43,18,NULL,6,20),(44,18,NULL,5,19),(45,18,NULL,4,19),(46,18,NULL,3,19),(47,18,NULL,2,21),(48,18,NULL,1,24),(49,18,NULL,12,11),(50,18,NULL,11,10),(51,18,NULL,10,9),(52,18,NULL,9,10),(53,18,NULL,8,10),(54,18,NULL,7,9),(55,18,NULL,6,8),(56,18,NULL,5,8),(57,18,NULL,4,8),(58,18,NULL,3,8),(59,18,NULL,2,8),(60,18,NULL,1,9),(61,18,NULL,12,1),(62,18,NULL,11,1),(63,18,NULL,10,1),(64,18,NULL,9,1),(65,18,NULL,8,1),(66,18,NULL,7,1),(67,18,NULL,6,1),(68,18,NULL,5,1),(69,18,NULL,4,983),(70,18,NULL,3,933),(71,18,NULL,2,943),(72,18,NULL,1,1),(73,1,6,12,41),(74,1,6,11,36),(75,1,6,10,34),(76,1,6,9,38),(77,1,6,8,38),(78,1,6,7,35),(79,1,6,6,33),(80,1,6,5,31),(81,1,6,4,29),(82,1,6,3,29),(83,1,6,2,31),(84,1,6,1,35),(85,1,NULL,12,162),(86,1,NULL,11,168),(87,1,NULL,10,93),(88,1,NULL,9,173),(89,1,NULL,8,119),(90,1,NULL,7,157),(91,1,NULL,6,117),(92,1,NULL,5,114),(93,1,NULL,4,108),(94,1,NULL,3,86),(95,1,NULL,2,79),(96,1,NULL,1,80),(97,1,NULL,12,4),(98,1,NULL,11,4),(99,1,NULL,10,3),(100,1,NULL,9,4),(101,1,NULL,8,4),(102,1,NULL,7,4),(103,1,NULL,6,3),(104,1,NULL,5,3),(105,1,NULL,4,3),(106,1,NULL,3,3),(107,1,NULL,2,3),(108,1,NULL,1,4),(109,1,NULL,12,24),(110,1,NULL,11,22),(111,1,NULL,10,21),(112,1,NULL,9,24),(113,1,NULL,8,23),(114,1,NULL,7,21),(115,1,NULL,6,20),(116,1,NULL,5,19),(117,1,NULL,4,18),(118,1,NULL,3,18),(119,1,NULL,2,20),(120,1,NULL,1,22),(121,1,NULL,12,11),(122,1,NULL,11,10),(123,1,NULL,10,9),(124,1,NULL,9,10),(125,1,NULL,8,10),(126,1,NULL,7,9),(127,1,NULL,6,8),(128,1,NULL,5,8),(129,1,NULL,4,7),(130,1,NULL,3,7),(131,1,NULL,2,7),(132,1,NULL,1,8),(133,1,NULL,12,1),(134,1,NULL,11,1),(135,1,NULL,10,1),(136,1,NULL,9,1),(137,1,NULL,8,1),(138,1,NULL,7,1),(139,1,NULL,6,1),(140,1,NULL,5,984),(141,1,NULL,4,918),(142,1,NULL,3,859),(143,1,NULL,2,869),(144,1,NULL,1,935),(145,2,6,12,92),(146,2,6,11,77),(147,2,6,10,81),(148,2,6,9,97),(149,2,6,8,86),(150,2,6,7,83),(151,2,6,6,81),(152,2,6,5,80),(153,2,6,4,87),(154,2,6,3,89),(155,2,6,2,75),(156,2,6,1,87),(157,2,NULL,12,0),(158,2,NULL,11,1),(159,2,NULL,10,1),(160,2,NULL,9,0),(161,2,NULL,8,0),(162,2,NULL,7,0),(163,2,NULL,6,0),(164,2,NULL,5,1),(165,2,NULL,4,0),(166,2,NULL,3,0),(167,2,NULL,2,0),(168,2,NULL,1,0),(169,2,NULL,12,3),(170,2,NULL,11,5),(171,2,NULL,10,4),(172,2,NULL,9,7),(173,2,NULL,8,5),(174,2,NULL,7,8),(175,2,NULL,6,1),(176,2,NULL,5,4),(177,2,NULL,4,1),(178,2,NULL,3,5),(179,2,NULL,2,3),(180,2,NULL,1,7),(181,2,NULL,12,53),(182,2,NULL,11,33),(183,2,NULL,10,37),(184,2,NULL,9,44),(185,2,NULL,8,43),(186,2,NULL,7,35),(187,2,NULL,6,44),(188,2,NULL,5,39),(189,2,NULL,4,44),(190,2,NULL,3,46),(191,2,NULL,2,36),(192,2,NULL,1,42),(193,2,NULL,12,26),(194,2,NULL,11,29),(195,2,NULL,10,32),(196,2,NULL,9,36),(197,2,NULL,8,30),(198,2,NULL,7,32),(199,2,NULL,6,24),(200,2,NULL,5,25),(201,2,NULL,4,36),(202,2,NULL,3,27),(203,2,NULL,2,29),(204,2,NULL,1,32),(205,2,NULL,12,10),(206,2,NULL,11,9),(207,2,NULL,10,7),(208,2,NULL,9,10),(209,2,NULL,8,8),(210,2,NULL,7,8),(211,2,NULL,6,12),(212,2,NULL,5,11),(213,2,NULL,4,6),(214,2,NULL,3,11),(215,2,NULL,2,7),(216,2,NULL,1,6),(217,3,6,12,20),(218,3,6,11,18),(219,3,6,10,18),(220,3,6,9,20),(221,3,6,8,19),(222,3,6,7,17),(223,3,6,6,17),(224,3,6,5,17),(225,3,6,4,16),(226,3,6,3,16),(227,3,6,2,17),(228,3,6,1,18),(229,3,NULL,12,83),(230,3,NULL,11,64),(231,3,NULL,10,39),(232,3,NULL,9,61),(233,3,NULL,8,56),(234,3,NULL,7,66),(235,3,NULL,6,56),(236,3,NULL,5,52),(237,3,NULL,4,52),(238,3,NULL,3,43),(239,3,NULL,2,29),(240,3,NULL,1,23),(241,3,NULL,12,2),(242,3,NULL,11,2),(243,3,NULL,10,2),(244,3,NULL,9,2),(245,3,NULL,8,2),(246,3,NULL,7,2),(247,3,NULL,6,2),(248,3,NULL,5,2),(249,3,NULL,4,2),(250,3,NULL,3,2),(251,3,NULL,2,2),(252,3,NULL,1,2),(253,3,NULL,12,13),(254,3,NULL,11,11),(255,3,NULL,10,11),(256,3,NULL,9,12),(257,3,NULL,8,12),(258,3,NULL,7,11),(259,3,NULL,6,10),(260,3,NULL,5,10),(261,3,NULL,4,10),(262,3,NULL,3,10),(263,3,NULL,2,11),(264,3,NULL,1,12),(265,3,NULL,12,5),(266,3,NULL,11,5),(267,3,NULL,10,5),(268,3,NULL,9,5),(269,3,NULL,8,5),(270,3,NULL,7,4),(271,3,NULL,6,4),(272,3,NULL,5,4),(273,3,NULL,4,4),(274,3,NULL,3,4),(275,3,NULL,2,4),(276,3,NULL,1,4),(277,3,NULL,12,573),(278,3,NULL,11,474),(279,3,NULL,10,526),(280,3,NULL,9,559),(281,3,NULL,8,523),(282,3,NULL,7,492),(283,3,NULL,6,495),(284,3,NULL,5,512),(285,3,NULL,4,479),(286,3,NULL,3,453),(287,3,NULL,2,419),(288,3,NULL,1,445),(289,4,6,12,35),(290,4,6,11,35),(291,4,6,10,26),(292,4,6,9,29),(293,4,6,8,32),(294,4,6,7,29),(295,4,6,6,37),(296,4,6,5,21),(297,4,6,4,27),(298,4,6,3,29),(299,4,6,2,25),(300,4,6,1,32),(301,4,NULL,12,0),(302,4,NULL,11,1),(303,4,NULL,10,0),(304,4,NULL,9,0),(305,4,NULL,8,0),(306,4,NULL,7,0),(307,4,NULL,6,0),(308,4,NULL,5,1),(309,4,NULL,4,1),(310,4,NULL,3,0),(311,4,NULL,2,0),(312,4,NULL,1,0),(313,4,NULL,12,8),(314,4,NULL,11,6),(315,4,NULL,10,5),(316,4,NULL,9,6),(317,4,NULL,8,6),(318,4,NULL,7,5),(319,4,NULL,6,6),(320,4,NULL,5,4),(321,4,NULL,4,3),(322,4,NULL,3,5),(323,4,NULL,2,10),(324,4,NULL,1,6),(325,4,NULL,12,23),(326,4,NULL,11,19),(327,4,NULL,10,17),(328,4,NULL,9,20),(329,4,NULL,8,18),(330,4,NULL,7,17),(331,4,NULL,6,27),(332,4,NULL,5,13),(333,4,NULL,4,15),(334,4,NULL,3,18),(335,4,NULL,2,12),(336,4,NULL,1,21),(337,4,NULL,12,4),(338,4,NULL,11,9),(339,4,NULL,10,4),(340,4,NULL,9,3),(341,4,NULL,8,7),(342,4,NULL,7,7),(343,4,NULL,6,4),(344,4,NULL,5,3),(345,4,NULL,4,6),(346,4,NULL,3,6),(347,4,NULL,2,2),(348,4,NULL,1,5),(349,4,NULL,12,0),(350,4,NULL,11,0),(351,4,NULL,10,0),(352,4,NULL,9,0),(353,4,NULL,8,1),(354,4,NULL,7,0),(355,4,NULL,6,0),(356,4,NULL,5,0),(357,4,NULL,4,2),(358,4,NULL,3,0),(359,4,NULL,2,1),(360,4,NULL,1,0),(361,5,6,12,6),(362,5,6,11,6),(363,5,6,10,5),(364,5,6,9,6),(365,5,6,8,6),(366,5,6,7,6),(367,5,6,6,6),(368,5,6,5,6),(369,5,6,4,6),(370,5,6,3,6),(371,5,6,2,6),(372,5,6,1,8),(373,5,NULL,12,17),(374,5,NULL,11,16),(375,5,NULL,10,9),(376,5,NULL,9,17),(377,5,NULL,8,12),(378,5,NULL,7,13),(379,5,NULL,6,13),(380,5,NULL,5,10),(381,5,NULL,4,13),(382,5,NULL,3,8),(383,5,NULL,2,10),(384,5,NULL,1,18),(385,5,NULL,12,514),(386,5,NULL,11,478),(387,5,NULL,10,416),(388,5,NULL,9,505),(389,5,NULL,8,570),(390,5,NULL,7,503),(391,5,NULL,6,530),(392,5,NULL,5,502),(393,5,NULL,4,495),(394,5,NULL,3,493),(395,5,NULL,2,621),(396,5,NULL,1,689),(397,5,NULL,12,4),(398,5,NULL,11,3),(399,5,NULL,10,3),(400,5,NULL,9,4),(401,5,NULL,8,4),(402,5,NULL,7,4),(403,5,NULL,6,4),(404,5,NULL,5,4),(405,5,NULL,4,4),(406,5,NULL,3,3),(407,5,NULL,2,4),(408,5,NULL,1,5),(409,5,NULL,12,2),(410,5,NULL,11,2),(411,5,NULL,10,1),(412,5,NULL,9,2),(413,5,NULL,8,2),(414,5,NULL,7,2),(415,5,NULL,6,2),(416,5,NULL,5,2),(417,5,NULL,4,2),(418,5,NULL,3,2),(419,5,NULL,2,2),(420,5,NULL,1,2),(421,5,NULL,12,226),(422,5,NULL,11,195),(423,5,NULL,10,186),(424,5,NULL,9,186),(425,5,NULL,8,196),(426,5,NULL,7,201),(427,5,NULL,6,228),(428,5,NULL,5,175),(429,5,NULL,4,180),(430,5,NULL,3,189),(431,5,NULL,2,205),(432,5,NULL,1,224),(433,6,6,12,1),(434,6,6,11,1),(435,6,6,10,800),(436,6,6,9,1),(437,6,6,8,992),(438,6,6,7,896),(439,6,6,6,864),(440,6,6,5,889),(441,6,6,4,868),(442,6,6,3,755),(443,6,6,2,759),(444,6,6,1,783),(445,6,NULL,12,3),(446,6,NULL,11,6),(447,6,NULL,10,3),(448,6,NULL,9,3),(449,6,NULL,8,5),(450,6,NULL,7,4),(451,6,NULL,6,1),(452,6,NULL,5,3),(453,6,NULL,4,4),(454,6,NULL,3,3),(455,6,NULL,2,3),(456,6,NULL,1,1),(457,6,NULL,12,137),(458,6,NULL,11,123),(459,6,NULL,10,85),(460,6,NULL,9,114),(461,6,NULL,8,115),(462,6,NULL,7,112),(463,6,NULL,6,94),(464,6,NULL,5,98),(465,6,NULL,4,97),(466,6,NULL,3,95),(467,6,NULL,2,94),(468,6,NULL,1,92),(469,6,NULL,12,793),(470,6,NULL,11,690),(471,6,NULL,10,478),(472,6,NULL,9,640),(473,6,NULL,8,591),(474,6,NULL,7,565),(475,6,NULL,6,510),(476,6,NULL,5,519),(477,6,NULL,4,515),(478,6,NULL,3,470),(479,6,NULL,2,474),(480,6,NULL,1,500),(481,6,NULL,12,370),(482,6,NULL,11,309),(483,6,NULL,10,214),(484,6,NULL,9,243),(485,6,NULL,8,251),(486,6,NULL,7,200),(487,6,NULL,6,230),(488,6,NULL,5,237),(489,6,NULL,4,231),(490,6,NULL,3,174),(491,6,NULL,2,171),(492,6,NULL,1,169),(493,6,NULL,12,38),(494,6,NULL,11,43),(495,6,NULL,10,20),(496,6,NULL,9,25),(497,6,NULL,8,30),(498,6,NULL,7,15),(499,6,NULL,6,29),(500,6,NULL,5,32),(501,6,NULL,4,21),(502,6,NULL,3,13),(503,6,NULL,2,17),(504,6,NULL,1,21),(505,7,6,12,8),(506,7,6,11,8),(507,7,6,10,7),(508,7,6,9,7),(509,7,6,8,7),(510,7,6,7,7),(511,7,6,6,7),(512,7,6,5,6),(513,7,6,4,4),(514,7,6,3,4),(515,7,6,2,5),(516,7,6,1,6),(517,7,NULL,12,41),(518,7,NULL,11,64),(519,7,NULL,10,33),(520,7,NULL,9,75),(521,7,NULL,8,41),(522,7,NULL,7,66),(523,7,NULL,6,42),(524,7,NULL,5,40),(525,7,NULL,4,32),(526,7,NULL,3,27),(527,7,NULL,2,35),(528,7,NULL,1,33),(529,7,NULL,12,657),(530,7,NULL,11,667),(531,7,NULL,10,607),(532,7,NULL,9,675),(533,7,NULL,8,725),(534,7,NULL,7,666),(535,7,NULL,6,625),(536,7,NULL,5,531),(537,7,NULL,4,384),(538,7,NULL,3,352),(539,7,NULL,2,454),(540,7,NULL,1,524),(541,7,NULL,12,5),(542,7,NULL,11,5),(543,7,NULL,10,4),(544,7,NULL,9,4),(545,7,NULL,8,4),(546,7,NULL,7,4),(547,7,NULL,6,4),(548,7,NULL,5,3),(549,7,NULL,4,3),(550,7,NULL,3,3),(551,7,NULL,2,3),(552,7,NULL,1,4),(553,7,NULL,12,2),(554,7,NULL,11,2),(555,7,NULL,10,2),(556,7,NULL,9,2),(557,7,NULL,8,2),(558,7,NULL,7,2),(559,7,NULL,6,2),(560,7,NULL,5,1),(561,7,NULL,4,1),(562,7,NULL,3,1),(563,7,NULL,2,1),(564,7,NULL,1,1),(565,7,NULL,12,308),(566,7,NULL,11,265),(567,7,NULL,10,298),(568,7,NULL,9,262),(569,7,NULL,8,251),(570,7,NULL,7,250),(571,7,NULL,6,243),(572,7,NULL,5,205),(573,7,NULL,4,186),(574,7,NULL,3,154),(575,7,NULL,2,167),(576,7,NULL,1,176),(577,8,6,12,275),(578,8,6,11,257),(579,8,6,10,237),(580,8,6,9,263),(581,8,6,8,204),(582,8,6,7,218),(583,8,6,6,156),(584,8,6,5,139),(585,8,6,4,159),(586,8,6,3,161),(587,8,6,2,179),(588,8,6,1,191),(589,8,NULL,12,3),(590,8,NULL,11,5),(591,8,NULL,10,4),(592,8,NULL,9,4),(593,8,NULL,8,1),(594,8,NULL,7,3),(595,8,NULL,6,2),(596,8,NULL,5,2),(597,8,NULL,4,1),(598,8,NULL,3,1),(599,8,NULL,2,0),(600,8,NULL,1,1),(601,8,NULL,12,39),(602,8,NULL,11,57),(603,8,NULL,10,53),(604,8,NULL,9,48),(605,8,NULL,8,42),(606,8,NULL,7,40),(607,8,NULL,6,30),(608,8,NULL,5,29),(609,8,NULL,4,34),(610,8,NULL,3,19),(611,8,NULL,2,19),(612,8,NULL,1,27),(613,8,NULL,12,165),(614,8,NULL,11,145),(615,8,NULL,10,134),(616,8,NULL,9,150),(617,8,NULL,8,113),(618,8,NULL,7,128),(619,8,NULL,6,95),(620,8,NULL,5,79),(621,8,NULL,4,90),(622,8,NULL,3,108),(623,8,NULL,2,126),(624,8,NULL,1,121),(625,8,NULL,12,63),(626,8,NULL,11,47),(627,8,NULL,10,39),(628,8,NULL,9,56),(629,8,NULL,8,45),(630,8,NULL,7,38),(631,8,NULL,6,27),(632,8,NULL,5,27),(633,8,NULL,4,30),(634,8,NULL,3,29),(635,8,NULL,2,29),(636,8,NULL,1,42),(637,8,NULL,12,5),(638,8,NULL,11,3),(639,8,NULL,10,7),(640,8,NULL,9,5),(641,8,NULL,8,3),(642,8,NULL,7,9),(643,8,NULL,6,2),(644,8,NULL,5,2),(645,8,NULL,4,4),(646,8,NULL,3,4),(647,8,NULL,2,5),(648,8,NULL,1,0),(649,9,6,12,78),(650,9,6,11,112),(651,9,6,10,104),(652,9,6,9,68),(653,9,6,8,72),(654,9,6,7,51),(655,9,6,6,49),(656,9,6,5,36),(657,9,6,4,32),(658,9,6,3,45),(659,9,6,2,41),(660,9,6,1,55),(661,9,NULL,12,0),(662,9,NULL,11,3),(663,9,NULL,10,1),(664,9,NULL,9,1),(665,9,NULL,8,0),(666,9,NULL,7,0),(667,9,NULL,6,1),(668,9,NULL,5,0),(669,9,NULL,4,0),(670,9,NULL,3,0),(671,9,NULL,2,0),(672,9,NULL,1,1),(673,9,NULL,12,16),(674,9,NULL,11,31),(675,9,NULL,10,15),(676,9,NULL,9,15),(677,9,NULL,8,17),(678,9,NULL,7,15),(679,9,NULL,6,11),(680,9,NULL,5,9),(681,9,NULL,4,3),(682,9,NULL,3,10),(683,9,NULL,2,9),(684,9,NULL,1,6),(685,9,NULL,12,36),(686,9,NULL,11,49),(687,9,NULL,10,58),(688,9,NULL,9,41),(689,9,NULL,8,40),(690,9,NULL,7,27),(691,9,NULL,6,28),(692,9,NULL,5,20),(693,9,NULL,4,23),(694,9,NULL,3,29),(695,9,NULL,2,17),(696,9,NULL,1,40),(697,9,NULL,12,24),(698,9,NULL,11,24),(699,9,NULL,10,27),(700,9,NULL,9,9),(701,9,NULL,8,14),(702,9,NULL,7,8),(703,9,NULL,6,8),(704,9,NULL,5,6),(705,9,NULL,4,4),(706,9,NULL,3,6),(707,9,NULL,2,10),(708,9,NULL,1,8),(709,9,NULL,12,2),(710,9,NULL,11,5),(711,9,NULL,10,3),(712,9,NULL,9,2),(713,9,NULL,8,1),(714,9,NULL,7,1),(715,9,NULL,6,1),(716,9,NULL,5,1),(717,9,NULL,4,2),(718,9,NULL,3,0),(719,9,NULL,2,5),(720,9,NULL,1,0),(721,10,6,12,38),(722,10,6,11,47),(723,10,6,10,37),(724,10,6,9,46),(725,10,6,8,52),(726,10,6,7,62),(727,10,6,6,52),(728,10,6,5,48),(729,10,6,4,35),(730,10,6,3,25),(731,10,6,2,36),(732,10,6,1,68),(733,10,NULL,12,1),(734,10,NULL,11,1),(735,10,NULL,10,0),(736,10,NULL,9,1),(737,10,NULL,8,0),(738,10,NULL,7,0),(739,10,NULL,6,0),(740,10,NULL,5,0),(741,10,NULL,4,0),(742,10,NULL,3,1),(743,10,NULL,2,0),(744,10,NULL,1,0),(745,10,NULL,12,6),(746,10,NULL,11,4),(747,10,NULL,10,3),(748,10,NULL,9,7),(749,10,NULL,8,5),(750,10,NULL,7,5),(751,10,NULL,6,8),(752,10,NULL,5,9),(753,10,NULL,4,8),(754,10,NULL,3,8),(755,10,NULL,2,7),(756,10,NULL,1,5),(757,10,NULL,12,22),(758,10,NULL,11,27),(759,10,NULL,10,25),(760,10,NULL,9,27),(761,10,NULL,8,35),(762,10,NULL,7,46),(763,10,NULL,6,34),(764,10,NULL,5,25),(765,10,NULL,4,19),(766,10,NULL,3,12),(767,10,NULL,2,21),(768,10,NULL,1,51),(769,10,NULL,12,9),(770,10,NULL,11,15),(771,10,NULL,10,9),(772,10,NULL,9,10),(773,10,NULL,8,11),(774,10,NULL,7,11),(775,10,NULL,6,9),(776,10,NULL,5,14),(777,10,NULL,4,8),(778,10,NULL,3,4),(779,10,NULL,2,7),(780,10,NULL,1,10),(781,10,NULL,12,0),(782,10,NULL,11,0),(783,10,NULL,10,0),(784,10,NULL,9,1),(785,10,NULL,8,1),(786,10,NULL,7,0),(787,10,NULL,6,1),(788,10,NULL,5,0),(789,10,NULL,4,0),(790,10,NULL,3,0),(791,10,NULL,2,1),(792,10,NULL,1,2),(793,11,6,12,52),(794,11,6,11,150),(795,11,6,10,113),(796,11,6,9,171),(797,11,6,8,179),(798,11,6,7,211),(799,11,6,6,264),(800,11,6,5,124),(801,11,6,4,65),(802,11,6,3,54),(803,11,6,2,73),(804,11,6,1,114),(805,11,NULL,12,1),(806,11,NULL,11,0),(807,11,NULL,10,0),(808,11,NULL,9,0),(809,11,NULL,8,0),(810,11,NULL,7,0),(811,11,NULL,6,0),(812,11,NULL,5,0),(813,11,NULL,4,0),(814,11,NULL,3,0),(815,11,NULL,2,0),(816,11,NULL,1,0),(817,11,NULL,12,3),(818,11,NULL,11,16),(819,11,NULL,10,6),(820,11,NULL,9,15),(821,11,NULL,8,28),(822,11,NULL,7,20),(823,11,NULL,6,28),(824,11,NULL,5,8),(825,11,NULL,4,5),(826,11,NULL,3,2),(827,11,NULL,2,5),(828,11,NULL,1,13),(829,11,NULL,12,33),(830,11,NULL,11,101),(831,11,NULL,10,65),(832,11,NULL,9,108),(833,11,NULL,8,100),(834,11,NULL,7,124),(835,11,NULL,6,141),(836,11,NULL,5,75),(837,11,NULL,4,38),(838,11,NULL,3,34),(839,11,NULL,2,48),(840,11,NULL,1,72),(841,11,NULL,12,13),(842,11,NULL,11,29),(843,11,NULL,10,38),(844,11,NULL,9,43),(845,11,NULL,8,47),(846,11,NULL,7,62),(847,11,NULL,6,87),(848,11,NULL,5,35),(849,11,NULL,4,19),(850,11,NULL,3,17),(851,11,NULL,2,17),(852,11,NULL,1,28),(853,11,NULL,12,2),(854,11,NULL,11,4),(855,11,NULL,10,4),(856,11,NULL,9,5),(857,11,NULL,8,4),(858,11,NULL,7,5),(859,11,NULL,6,8),(860,11,NULL,5,6),(861,11,NULL,4,3),(862,11,NULL,3,1),(863,11,NULL,2,3),(864,11,NULL,1,1),(865,NULL,6,12,296),(866,NULL,6,11,292),(867,NULL,6,10,208),(868,NULL,6,9,301),(869,NULL,6,8,291),(870,NULL,6,7,241),(871,NULL,6,6,225),(872,NULL,6,5,124),(873,NULL,6,4,64),(874,NULL,6,3,47),(875,NULL,6,2,75),(876,NULL,6,1,76),(877,NULL,NULL,12,0),(878,NULL,NULL,11,1),(879,NULL,NULL,10,0),(880,NULL,NULL,9,2),(881,NULL,NULL,8,1),(882,NULL,NULL,7,1),(883,NULL,NULL,6,0),(884,NULL,NULL,5,0),(885,NULL,NULL,4,0),(886,NULL,NULL,3,0),(887,NULL,NULL,2,0),(888,NULL,NULL,1,0),(889,NULL,NULL,12,29),(890,NULL,NULL,11,42),(891,NULL,NULL,10,19),(892,NULL,NULL,9,45),(893,NULL,NULL,8,45),(894,NULL,NULL,7,33),(895,NULL,NULL,6,30),(896,NULL,NULL,5,15),(897,NULL,NULL,4,7),(898,NULL,NULL,3,10),(899,NULL,NULL,2,8),(900,NULL,NULL,1,10),(901,NULL,NULL,12,203),(902,NULL,NULL,11,197),(903,NULL,NULL,10,147),(904,NULL,NULL,9,190),(905,NULL,NULL,8,180),(906,NULL,NULL,7,164),(907,NULL,NULL,6,163),(908,NULL,NULL,5,89),(909,NULL,NULL,4,40),(910,NULL,NULL,3,31),(911,NULL,NULL,2,57),(912,NULL,NULL,1,50),(913,NULL,NULL,12,61),(914,NULL,NULL,11,50),(915,NULL,NULL,10,40),(916,NULL,NULL,9,64),(917,NULL,NULL,8,60),(918,NULL,NULL,7,42),(919,NULL,NULL,6,30),(920,NULL,NULL,5,18),(921,NULL,NULL,4,16),(922,NULL,NULL,3,5),(923,NULL,NULL,2,10),(924,NULL,NULL,1,16),(925,NULL,NULL,12,3),(926,NULL,NULL,11,2),(927,NULL,NULL,10,2),(928,NULL,NULL,9,0),(929,NULL,NULL,8,5),(930,NULL,NULL,7,1),(931,NULL,NULL,6,2),(932,NULL,NULL,5,2),(933,NULL,NULL,4,1),(934,NULL,NULL,3,1),(935,NULL,NULL,2,0),(936,NULL,NULL,1,0),(937,13,6,12,3),(938,13,6,11,3),(939,13,6,10,3),(940,13,6,9,3),(941,13,6,8,3),(942,13,6,7,3),(943,13,6,6,2),(944,13,6,5,1),(945,13,6,4,1),(946,13,6,3,1),(947,13,6,2,2),(948,13,6,1,2),(949,13,NULL,12,2),(950,13,NULL,11,4),(951,13,NULL,10,3),(952,13,NULL,9,5),(953,13,NULL,8,0),(954,13,NULL,7,1),(955,13,NULL,6,1),(956,13,NULL,5,3),(957,13,NULL,4,2),(958,13,NULL,3,2),(959,13,NULL,2,2),(960,13,NULL,1,2),(961,13,NULL,12,338),(962,13,NULL,11,286),(963,13,NULL,10,284),(964,13,NULL,9,340),(965,13,NULL,8,355),(966,13,NULL,7,272),(967,13,NULL,6,279),(968,13,NULL,5,152),(969,13,NULL,4,117),(970,13,NULL,3,142),(971,13,NULL,2,188),(972,13,NULL,1,232),(973,13,NULL,12,2),(974,13,NULL,11,2),(975,13,NULL,10,2),(976,13,NULL,9,2),(977,13,NULL,8,2),(978,13,NULL,7,2),(979,13,NULL,6,1),(980,13,NULL,5,817),(981,13,NULL,4,743),(982,13,NULL,3,827),(983,13,NULL,2,960),(984,13,NULL,1,1),(985,13,NULL,12,925),(986,13,NULL,11,708),(987,13,NULL,10,686),(988,13,NULL,9,793),(989,13,NULL,8,754),(990,13,NULL,7,708),(991,13,NULL,6,626),(992,13,NULL,5,386),(993,13,NULL,4,326),(994,13,NULL,3,339),(995,13,NULL,2,366),(996,13,NULL,1,497),(997,13,NULL,12,65),(998,13,NULL,11,58),(999,13,NULL,10,62),(1000,13,NULL,9,49),(1001,13,NULL,8,69),(1002,13,NULL,7,55),(1003,13,NULL,6,58),(1004,13,NULL,5,38),(1005,13,NULL,4,29),(1006,13,NULL,3,25),(1007,13,NULL,2,35),(1008,13,NULL,1,59),(1009,14,6,12,258),(1010,14,6,11,196),(1011,14,6,10,164),(1012,14,6,9,235),(1013,14,6,8,236),(1014,14,6,7,207),(1015,14,6,6,184),(1016,14,6,5,166),(1017,14,6,4,137),(1018,14,6,3,119),(1019,14,6,2,142),(1020,14,6,1,199),(1021,14,NULL,12,5),(1022,14,NULL,11,2),(1023,14,NULL,10,0),(1024,14,NULL,9,4),(1025,14,NULL,8,3),(1026,14,NULL,7,3),(1027,14,NULL,6,1),(1028,14,NULL,5,2),(1029,14,NULL,4,3),(1030,14,NULL,3,1),(1031,14,NULL,2,0),(1032,14,NULL,1,1),(1033,14,NULL,12,27),(1034,14,NULL,11,24),(1035,14,NULL,10,21),(1036,14,NULL,9,30),(1037,14,NULL,8,39),(1038,14,NULL,7,30),(1039,14,NULL,6,26),(1040,14,NULL,5,17),(1041,14,NULL,4,15),(1042,14,NULL,3,11),(1043,14,NULL,2,20),(1044,14,NULL,1,29),(1045,14,NULL,12,158),(1046,14,NULL,11,122),(1047,14,NULL,10,109),(1048,14,NULL,9,157),(1049,14,NULL,8,139),(1050,14,NULL,7,130),(1051,14,NULL,6,122),(1052,14,NULL,5,113),(1053,14,NULL,4,83),(1054,14,NULL,3,69),(1055,14,NULL,2,88),(1056,14,NULL,1,123),(1057,14,NULL,12,62),(1058,14,NULL,11,46),(1059,14,NULL,10,32),(1060,14,NULL,9,43),(1061,14,NULL,8,54),(1062,14,NULL,7,42),(1063,14,NULL,6,32),(1064,14,NULL,5,34),(1065,14,NULL,4,31),(1066,14,NULL,3,30),(1067,14,NULL,2,30),(1068,14,NULL,1,45),(1069,14,NULL,12,6),(1070,14,NULL,11,2),(1071,14,NULL,10,2),(1072,14,NULL,9,1),(1073,14,NULL,8,1),(1074,14,NULL,7,2),(1075,14,NULL,6,3),(1076,14,NULL,5,0),(1077,14,NULL,4,5),(1078,14,NULL,3,8),(1079,14,NULL,2,4),(1080,14,NULL,1,1),(1081,15,6,12,0),(1082,15,6,11,0),(1083,15,6,10,0),(1084,15,6,9,16),(1085,15,6,8,26),(1086,15,6,7,24),(1087,15,6,6,72),(1088,15,6,5,1),(1089,15,6,4,2),(1090,15,6,3,3),(1091,15,6,2,3),(1092,15,6,1,3),(1093,15,NULL,12,0),(1094,15,NULL,11,0),(1095,15,NULL,10,0),(1096,15,NULL,9,0),(1097,15,NULL,8,0),(1098,15,NULL,7,0),(1099,15,NULL,6,0),(1100,15,NULL,5,4),(1101,15,NULL,4,2),(1102,15,NULL,3,3),(1103,15,NULL,2,7),(1104,15,NULL,1,8),(1105,15,NULL,12,0),(1106,15,NULL,11,0),(1107,15,NULL,10,0),(1108,15,NULL,9,3),(1109,15,NULL,8,3),(1110,15,NULL,7,4),(1111,15,NULL,6,8),(1112,15,NULL,5,124),(1113,15,NULL,4,233),(1114,15,NULL,3,254),(1115,15,NULL,2,271),(1116,15,NULL,1,302),(1117,15,NULL,12,0),(1118,15,NULL,11,0),(1119,15,NULL,10,0),(1120,15,NULL,9,8),(1121,15,NULL,8,17),(1122,15,NULL,7,16),(1123,15,NULL,6,44),(1124,15,NULL,5,664),(1125,15,NULL,4,1),(1126,15,NULL,3,2),(1127,15,NULL,2,2),(1128,15,NULL,1,2),(1129,15,NULL,12,0),(1130,15,NULL,11,0),(1131,15,NULL,10,0),(1132,15,NULL,9,5),(1133,15,NULL,8,6),(1134,15,NULL,7,4),(1135,15,NULL,6,18),(1136,15,NULL,5,319),(1137,15,NULL,4,544),(1138,15,NULL,3,667),(1139,15,NULL,2,667),(1140,15,NULL,1,778),(1141,15,NULL,12,0),(1142,15,NULL,11,0),(1143,15,NULL,10,0),(1144,15,NULL,9,0),(1145,15,NULL,8,0),(1146,15,NULL,7,0),(1147,15,NULL,6,2),(1148,15,NULL,5,27),(1149,15,NULL,4,65),(1150,15,NULL,3,74),(1151,15,NULL,2,74),(1152,15,NULL,1,88),(1153,16,6,12,0),(1154,16,6,11,0),(1155,16,6,10,0),(1156,16,6,9,12),(1157,16,6,8,22),(1158,16,6,7,21),(1159,16,6,6,63),(1160,16,6,5,1),(1161,16,6,4,2),(1162,16,6,3,2),(1163,16,6,2,2),(1164,16,6,1,3),(1165,16,NULL,12,0),(1166,16,NULL,11,0),(1167,16,NULL,10,0),(1168,16,NULL,9,0),(1169,16,NULL,8,0),(1170,16,NULL,7,0),(1171,16,NULL,6,0),(1172,16,NULL,5,3),(1173,16,NULL,4,2),(1174,16,NULL,3,3),(1175,16,NULL,2,5),(1176,16,NULL,1,7),(1177,16,NULL,12,0),(1178,16,NULL,11,0),(1179,16,NULL,10,0),(1180,16,NULL,9,2),(1181,16,NULL,8,1),(1182,16,NULL,7,4),(1183,16,NULL,6,8),(1184,16,NULL,5,115),(1185,16,NULL,4,204),(1186,16,NULL,3,227),(1187,16,NULL,2,242),(1188,16,NULL,1,267),(1189,16,NULL,12,0),(1190,16,NULL,11,0),(1191,16,NULL,10,0),(1192,16,NULL,9,6),(1193,16,NULL,8,15),(1194,16,NULL,7,15),(1195,16,NULL,6,39),(1196,16,NULL,5,605),(1197,16,NULL,4,1),(1198,16,NULL,3,1),(1199,16,NULL,2,1),(1200,16,NULL,1,2),(1201,16,NULL,12,0),(1202,16,NULL,11,0),(1203,16,NULL,10,0),(1204,16,NULL,9,4),(1205,16,NULL,8,6),(1206,16,NULL,7,2),(1207,16,NULL,6,14),(1208,16,NULL,5,303),(1209,16,NULL,4,517),(1210,16,NULL,3,642),(1211,16,NULL,2,637),(1212,16,NULL,1,747),(1213,16,NULL,12,0),(1214,16,NULL,11,0),(1215,16,NULL,10,0),(1216,16,NULL,9,0),(1217,16,NULL,8,0),(1218,16,NULL,7,0),(1219,16,NULL,6,2),(1220,16,NULL,5,26),(1221,16,NULL,4,64),(1222,16,NULL,3,72),(1223,16,NULL,2,74),(1224,16,NULL,1,86),(1225,17,6,12,0),(1226,17,6,11,0),(1227,17,6,10,0),(1228,17,6,9,4),(1229,17,6,8,4),(1230,17,6,7,3),(1231,17,6,6,9),(1232,17,6,5,86),(1233,17,6,4,158),(1234,17,6,3,135),(1235,17,6,2,153),(1236,17,6,1,205),(1237,17,NULL,12,0),(1238,17,NULL,11,0),(1239,17,NULL,10,0),(1240,17,NULL,9,0),(1241,17,NULL,8,0),(1242,17,NULL,7,0),(1243,17,NULL,6,0),(1244,17,NULL,5,1),(1245,17,NULL,4,0),(1246,17,NULL,3,0),(1247,17,NULL,2,2),(1248,17,NULL,1,1),(1249,17,NULL,12,0),(1250,17,NULL,11,0),(1251,17,NULL,10,0),(1252,17,NULL,9,1),(1253,17,NULL,8,2),(1254,17,NULL,7,0),(1255,17,NULL,6,0),(1256,17,NULL,5,9),(1257,17,NULL,4,29),(1258,17,NULL,3,27),(1259,17,NULL,2,29),(1260,17,NULL,1,35),(1261,17,NULL,12,0),(1262,17,NULL,11,0),(1263,17,NULL,10,0),(1264,17,NULL,9,2),(1265,17,NULL,8,2),(1266,17,NULL,7,1),(1267,17,NULL,6,5),(1268,17,NULL,5,59),(1269,17,NULL,4,101),(1270,17,NULL,3,81),(1271,17,NULL,2,92),(1272,17,NULL,1,136),(1273,17,NULL,12,0),(1274,17,NULL,11,0),(1275,17,NULL,10,0),(1276,17,NULL,9,1),(1277,17,NULL,8,0),(1278,17,NULL,7,2),(1279,17,NULL,6,4),(1280,17,NULL,5,16),(1281,17,NULL,4,27),(1282,17,NULL,3,25),(1283,17,NULL,2,30),(1284,17,NULL,1,31),(1285,17,NULL,12,0),(1286,17,NULL,11,0),(1287,17,NULL,10,0),(1288,17,NULL,9,0),(1289,17,NULL,8,0),(1290,17,NULL,7,0),(1291,17,NULL,6,0),(1292,17,NULL,5,1),(1293,17,NULL,4,1),(1294,17,NULL,3,2),(1295,17,NULL,2,0),(1296,17,NULL,1,2);
/*!40000 ALTER TABLE `crimedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crimetype`
--

DROP TABLE IF EXISTS `crimetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crimetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimetype`
--

LOCK TABLES `crimetype` WRITE;
/*!40000 ALTER TABLE `crimetype` DISABLE KEYS */;
INSERT INTO `crimetype` VALUES (1,'Delitos'),(2,'Homicidio y sus formas'),(3,'Lesiones'),(4,'Detenciones ilegales y secuestro'),(5,'Amenazas'),(6,'Coacciones'),(7,'Torturas e integridad moral'),(8,'Agresiones sexuales'),(9,'Abusos sexuales'),(10,'Allanamiento de morada'),(11,'Injurias'),(12,'Daños'),(13,'Quebrantamiento de condena'),(14,'Otros delitos sin especificar'),(15,'Faltas'),(16,'Faltas contra las personas'),(17,'Otras faltas sin especificar'),(18,'Total Infracciones');
/*!40000 ALTER TABLE `crimetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-23 11:07:28.495502'),(2,'auth','0001_initial','2024-11-23 11:07:28.949212'),(3,'admin','0001_initial','2024-11-23 11:07:29.066195'),(4,'admin','0002_logentry_remove_auto_add','2024-11-23 11:07:29.072195'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-23 11:07:29.077199'),(6,'contenttypes','0002_remove_content_type_name','2024-11-23 11:07:29.141632'),(7,'auth','0002_alter_permission_name_max_length','2024-11-23 11:07:29.241948'),(8,'auth','0003_alter_user_email_max_length','2024-11-23 11:07:29.273993'),(9,'auth','0004_alter_user_username_opts','2024-11-23 11:07:29.279002'),(10,'auth','0005_alter_user_last_login_null','2024-11-23 11:07:29.334289'),(11,'auth','0006_require_contenttypes_0002','2024-11-23 11:07:29.337286'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-23 11:07:29.342286'),(13,'auth','0008_alter_user_username_max_length','2024-11-23 11:07:29.401427'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-23 11:07:29.461234'),(15,'auth','0010_alter_group_name_max_length','2024-11-23 11:07:29.474996'),(16,'auth','0011_update_proxy_permissions','2024-11-23 11:07:29.479984'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-23 11:07:29.530825'),(18,'sessions','0001_initial','2024-11-23 11:07:29.558661');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `year` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year`
--

LOCK TABLES `year` WRITE;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
INSERT INTO `year` VALUES (1,2011),(2,2012),(3,2013),(4,2014),(5,2015),(6,2016),(7,2017),(8,2018),(9,2019),(10,2020),(11,2021),(12,2022);
/*!40000 ALTER TABLE `year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-23 15:49:12
