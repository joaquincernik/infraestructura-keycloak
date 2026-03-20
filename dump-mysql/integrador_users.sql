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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` bigint NOT NULL AUTO_INCREMENT,
  `account_non_expired` tinyint DEFAULT '0',
  `account_non_locked` tinyint DEFAULT '0',
  `credentials_non_expired` tinyint DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `enabled` tinyint DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,1,1,'jcernik294@alumnos.iua.edu.ar',1,'$2a$10$ou1C.ytSnPLu2DvlIxUmeOn4jYdhyKsCRUKCokt3PZO4IdoeJNs1m','admin'),(2,1,1,1,'admin@gmail.com',1,'$2a$10$Lv1yV5mwGbKATydmzBYZuOHitD/KXD.jJFhHmWL4tNF6QMe2lX4PO','user'),(3,1,1,1,'prueba@mail.com',1,'$2a$10$1b8MD7Mn9WB7fi/bGwAcXewSl0o3Rr/rKc061198OqQEBq1johH3K','joapato'),(4,1,1,1,'prueba@mail2.com',1,'$2a$10$GQYqqoZCFBAWqQqqEXveTega51YKWAia7msmx17LwhpwvPZZeDvtm','joapatopro'),(5,1,1,1,'prueba@mail3.com',1,'$2a$10$Vj2piZTxJvaKcj9W2Y6JyuwNWlVKIscl89bQtt2biA/KKOUgk9NJG','joapatopro2'),(6,1,1,1,'prueba@mail4.com',1,'$2a$10$oQ7HzsxgLb.Mmu9V.GZ6S.NLaQx/NK3qsP7YlWoTZwpvFRGRh.klK','joapatopro3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
