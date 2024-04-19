CREATE DATABASE  IF NOT EXISTS `blogg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blogg`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blogg
-- ------------------------------------------------------
-- Server version	8.0.29

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
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `resetTokenExpiration` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin admin','info@admin.com','$2b$10$iEzUWiHArfVcDR6TDuyGau.LyAuN.stx41rbTMoCZYpeyFFe4h5r6',NULL,NULL,'2024-01-10 09:30:55','2024-01-10 09:30:55'),(2,'emre yılmaz','info@emreyilmaz.com','$2b$10$TptI5n5.AIWx48vdMS1wzuYI7yAmlNq6Wp.r3B/33pInMGS1JCEgm',NULL,NULL,'2024-01-10 09:30:55','2024-01-10 09:30:55'),(3,'deniz kaya','info@denizkaya.com','$2b$10$C48UUeM.Qg80Ga3oyP37yuVvLkM/IZJJaH5T5H11wFDBZY/WT87Py',NULL,NULL,'2024-01-10 09:30:55','2024-01-10 09:30:55'),(4,'serkan demir','info@serkandemir.com','$2b$10$GNXP2wakjGwuA/5IAlGBWOffTkMh/h98a4gkcDYzVsaI8JSJbNFt6',NULL,NULL,'2024-01-10 09:30:55','2024-01-10 09:30:55'),(5,'elif yıldırım','info@elifyildirim.com','$2b$10$84f.g3shbmkgTsoTOhb/QuimNm2drseQKWbhcnPmBbeXErcaoy0jy',NULL,NULL,'2024-01-10 09:30:55','2024-01-10 09:30:55'),(6,'Sude Nur Elmas','sudeelmas13@gmail.com','$2b$10$qSdqXB52r/wnCdNtxUzO7OrccWuZKWmpfjKqToe6PKquqbN.73FDW','abfaf107e9dcf6ceabf9f02f37b69c905480635ba869c36610d5d33ad9311813','2024-01-10 12:05:59','2024-01-10 11:04:47','2024-01-10 11:05:59');
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

-- Dump completed on 2024-04-19 20:51:39
