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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (10,'2023-07-14 10:31:36.128952','8','item object (8)',1,'[{\"added\": {}}]',1,1),(11,'2023-07-14 16:05:50.474505','2','',3,'',9,1),(12,'2023-07-15 14:55:52.366458','8','item object (8)',3,'',1,1),(13,'2023-07-16 03:32:03.314125','9','item object (9)',1,'[{\"added\": {}}]',1,1),(14,'2023-07-16 03:34:44.700363','9','item object (9)',3,'',1,1),(15,'2023-07-16 03:42:26.983900','13','seller object (13)',3,'',13,1),(16,'2023-07-16 03:42:26.988900','12','seller object (12)',3,'',13,1),(17,'2023-07-16 03:42:26.991898','11','seller object (11)',3,'',13,1),(18,'2023-07-16 03:42:26.992935','10','seller object (10)',3,'',13,1),(19,'2023-07-16 03:42:26.994914','9','seller object (9)',3,'',13,1),(20,'2023-07-16 03:42:26.995976','8','seller object (8)',3,'',13,1),(21,'2023-07-16 03:42:26.996898','7','seller object (7)',3,'',13,1),(22,'2023-07-16 03:42:26.998916','6','seller object (6)',3,'',13,1),(23,'2023-07-16 03:42:26.999926','5','seller object (5)',3,'',13,1),(24,'2023-07-16 03:42:27.002019','4','seller object (4)',3,'',13,1),(25,'2023-07-16 03:42:27.003900','3','seller object (3)',3,'',13,1),(26,'2023-07-16 03:42:27.005031','2','seller object (2)',3,'',13,1),(27,'2023-07-16 03:42:27.005924','1','seller object (1)',3,'',13,1),(28,'2023-07-16 03:42:53.170539','14','seller object (14)',1,'[{\"added\": {}}]',13,1),(29,'2023-07-16 06:24:15.958518','4','selling object (4)',3,'',14,1),(30,'2023-07-16 06:24:15.964491','3','selling object (3)',3,'',14,1),(31,'2023-07-16 06:24:15.966738','2','selling object (2)',3,'',14,1),(32,'2023-07-16 06:24:15.969799','1','selling object (1)',3,'',14,1),(33,'2023-07-16 13:05:46.968816','2','item object (2)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',1,1),(34,'2023-07-16 13:09:26.983929','5','item object (5)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',1,1),(35,'2023-07-16 13:41:43.732250','1','item object (1)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 17:47:05
