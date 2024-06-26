-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: agri
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-12 17:16:19.307226'),(2,'auth','0001_initial','2023-07-12 17:16:19.814963'),(3,'admin','0001_initial','2023-07-12 17:16:19.937933'),(4,'admin','0002_logentry_remove_auto_add','2023-07-12 17:16:19.951935'),(5,'admin','0003_logentry_add_action_flag_choices','2023-07-12 17:16:19.962929'),(6,'contenttypes','0002_remove_content_type_name','2023-07-12 17:16:20.100458'),(7,'auth','0002_alter_permission_name_max_length','2023-07-12 17:16:20.171517'),(8,'auth','0003_alter_user_email_max_length','2023-07-12 17:16:20.226515'),(9,'auth','0004_alter_user_username_opts','2023-07-12 17:16:20.245457'),(10,'auth','0005_alter_user_last_login_null','2023-07-12 17:16:20.353452'),(11,'auth','0006_require_contenttypes_0002','2023-07-12 17:16:20.360490'),(12,'auth','0007_alter_validators_add_error_messages','2023-07-12 17:16:20.376464'),(13,'auth','0008_alter_user_username_max_length','2023-07-12 17:16:20.454509'),(14,'auth','0009_alter_user_last_name_max_length','2023-07-12 17:16:20.534462'),(15,'auth','0010_alter_group_name_max_length','2023-07-12 17:16:20.576518'),(16,'auth','0011_update_proxy_permissions','2023-07-12 17:16:20.601468'),(17,'auth','0012_alter_user_first_name_max_length','2023-07-12 17:16:20.688504'),(18,'krishi','0001_initial','2023-07-12 17:17:05.153469'),(19,'sessions','0001_initial','2023-07-12 17:17:05.193421'),(20,'user','0001_initial','2023-07-13 20:08:31.792599'),(21,'user','0002_userdb_last_login','2023-07-14 03:43:17.185375'),(22,'account','0001_initial','2023-07-14 08:48:24.337220'),(23,'krishi','0002_feedback','2023-07-15 11:58:47.602187'),(24,'krishi','0003_newsletter','2023-07-15 13:18:11.075037'),(25,'krishi','0004_counsel','2023-07-15 17:24:54.337774'),(26,'krishi','0005_seller','2023-07-15 20:08:14.964190'),(27,'krishi','0006_alter_seller_img','2023-07-15 21:35:09.217223'),(28,'krishi','0007_alter_seller_img','2023-07-16 03:58:08.800458');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 17:47:06
