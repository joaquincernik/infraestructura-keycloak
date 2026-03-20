CREATE DATABASE  IF NOT EXISTS `integrador` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `integrador`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: integrador
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `camiones`
--

DROP TABLE IF EXISTS `camiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camiones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `patente` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmn6qy6m1njo5rv6s96t0mnl5r` (`patente`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camiones`
--

LOCK TABLES `camiones` WRITE;
/*!40000 ALTER TABLE `camiones` DISABLE KEYS */;
INSERT INTO `camiones` VALUES (1,'Camión cisterna 18t','EDU12345'),(5,'Camión cisterna 18t','EDU123456'),(6,'Camión cisterna 12t','ABC987654'),(7,'Cisterna doble articulada','PQR112233'),(8,'Camión pesado 20t','ZZZ001122'),(9,'Cisterna ligera 10t','GGH221199'),(14,'Camión cisterna 18t','FZK070'),(15,'Camión cisterna 18t','joaparopro'),(16,'Camión cisterna 18t','joaparoprwo'),(17,'Camión cisterna 18t','wepwep'),(18,'Camión cisterna 18t','wepi9i9wep'),(19,'Camión cisterna 18t','wepi9i9w0ep'),(20,'Camión cisterna 18t','woeoeo'),(21,'Camión cisterna 18t','woeoeo0'),(22,'Camión cisterna 18t','woe2oeo0'),(23,'Camión cisterna 18t','woe21oeo0'),(24,'Camión cisterna 18t','woeE21oeo0'),(25,'Camión cisterna 18t','wo1eE21oeo0'),(26,'Camión cisterna 18t','owoo'),(27,'Camión cisterna 18t','8owoo'),(28,'Camión cisterna 18t','1owoo'),(29,'Camión cisterna 18t','2owoo'),(30,'Camión cisterna 18t','zzz 123'),(32,'Camión cisterna 18t','zzz 124'),(33,'Camión cisterna 18t','zzz 125'),(34,'Camión cisterna 18t','zzz 126'),(35,'Camión cisterna 18t','zzz 127'),(36,'Camión cisterna 18t','zzz 128'),(37,'Camión cisterna 18t','zzz 129'),(38,'Camión cisterna 18t','zzz 130'),(39,'Camión cisterna 18t','jqk 130'),(40,'Camión cisterna 18t','jqk 139'),(41,'Camión cisterna 18t','jqk 140'),(42,'Camión cisterna 18t','jqk 141'),(43,'Camión cisterna 18t','jqk 142'),(44,'Camión cisterna 18t','jqk 143'),(45,'Camión cisterna 18t','jqk 144'),(46,'Camión cisterna 18t','jqk 145'),(47,'Camión cisterna 18t','jqk 146'),(48,'Camión cisterna 18t','jqk 147'),(49,'Camión cisterna 18t','jqk 148'),(50,'Camión cisterna 18t','abc 124'),(51,'Camión cisterna 18t','abc 125');
/*!40000 ALTER TABLE `camiones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-20 15:49:35
