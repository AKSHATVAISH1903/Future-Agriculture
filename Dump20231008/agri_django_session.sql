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
INSERT INTO `django_session` VALUES ('0sxdevs0m5s919baxv3awkog0cbd3nmm','.eJxVjDsOwjAQBe_iGlmJd7NxKOlzBsv7AQdQIuVTIe4OkVJA-2bmvVzK21rStticBnVnV7vT78ZZHjbuQO95vE1epnGdB_a74g-6-H5Se14O9--g5KXsdVWFiELQMkZRajg0cO2IqcIOTZCAWuDWTOssQh1FCNhw_EJQQff-AMhSN1U:1qKKfF:qYxQu30JZ181MuYGCbEtFg-8uHmIuFQ1B6LZY5QuLRo','2023-07-28 15:25:01.452361'),('108b84m1x1klhkkhdx8vydybl9b5qhnd','.eJxVjDsOwjAQBe_iGlmJd7NxKOlzBsv7AQdQIuVTIe4OkVJA-2bmvVzK21rStticBnVnV7vT78ZZHjbuQO95vE1epnGdB_a74g-6-H5Se14O9--g5KXsdVWFiELQMkZRajg0cO2IqcIOTZCAWuDWTOssQh1FCNhw_EJQQff-AMhSN1U:1qL3dj:6Sobq0QykZ1eTMw0hPuJWZWpPCLiFQJOspest9890d0','2023-07-30 15:26:27.652566'),('17y5asaan4s00h3k51408j3ukif6fcgv','.eJxVjEEOwiAQRe_C2hBgQMCle8_QzDBUqgaS0q6MdzckXej2v_f-W0y4b2Xae16nhcVFOHH63QjTM9cB-IH13mRqdVsXkkORB-3y1ji_rof7d1Cwl1GTVj4mgmCzA2PJgWLvs7HRYlApAOhEhizwPHs8xxSMtgGjZo2Zg_h8AdJ4N6E:1qKF2M:r9b_F4Kz5Yohbt81mrVtVnJhbCFuj42p_LCIVqQKNn0','2023-07-28 09:24:30.683083'),('ouvktfgdzv9ck64vpp447oj5v7ubkjuo','.eJxVjDsOwjAQBe_iGlmJd7NxKOlzBsv7AQdQIuVTIe4OkVJA-2bmvVzK21rStticBnVnV7vT78ZZHjbuQO95vE1epnGdB_a74g-6-H5Se14O9--g5KXsdVWFiELQMkZRajg0cO2IqcIOTZCAWuDWTOssQh1FCNhw_EJQQff-AMhSN1U:1qKsIe:d_WN-IogPCffHtJhtv027y4toZhebBxFVgylC6ScQzY','2023-07-30 03:19:56.757985');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 17:47:02
