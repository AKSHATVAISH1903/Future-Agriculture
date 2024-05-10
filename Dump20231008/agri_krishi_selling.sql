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
-- Table structure for table `krishi_selling`
--

DROP TABLE IF EXISTS `krishi_selling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `krishi_selling` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `productdet` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krishi_selling`
--

LOCK TABLES `krishi_selling` WRITE;
/*!40000 ALTER TABLE `krishi_selling` DISABLE KEYS */;
INSERT INTO `krishi_selling` VALUES (5,'sellimg/IMG_20221224_111234_KxqiaUh.jpg','vegetable','jkh','45',1000,'','shri@gmail.com','hgf'),(6,'sellimg/IMG_20221224_111132.jpg','vegetable','kjbkj','45',15,'','shri@gmail.com','shri'),(7,'sellimg/IMG_20221224_111234_V1Gz3gu.jpg','vegetable','kumbkaran','1',0,'','shri@gmail.com','shri'),(8,'sellimg/IMG_20221224_115946.jpg','vegetable','sharma gaya launda','1',1000,'','shri@gmail.com','shri'),(9,'sellimg/IMG_20221224_120132.jpg','vegetable','jkh','45',55,'','shri@gmail.com','shri'),(10,'sellimg/IMG_20221224_134844.jpg','vegetable','velle','5',0,'','shri@gmail.com','shri'),(11,'sellimg/IMG_20221224_133420_4XTv3de.jpg','vegetable','kjh',',m',664,'','shri@gmail.com','shri'),(12,'sellimg/IMG_20221224_124032.jpg','fertlizer','sc','1',45,'','shri@gmail.com','shri'),(13,'sellimg/IMG_20221224_140141.jpg','vegetable','nlk','56',45,'7826614564','ljla@haa','farmer'),(14,'sellimg/2.png','vegetable','h,mbk','2',0,'09871667853','ljl@ha','Vaishnavi'),(15,'sellimg/wallpaperflare.com_wallpaper.jpg','vegetable','hjg','8',100,'','shri@gmail.com','shri'),(16,'sellimg/Screenshot_2022-10-08_075057.png','vegetable','klnlk','8',100,'','shri@gmail.com','shri'),(17,'sellimg/Nitro_Wallpaper_5000x2813.jpg','vegetable','fbdb','5',55,'','shri@gmail.com','shri');
/*!40000 ALTER TABLE `krishi_selling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 17:47:03
