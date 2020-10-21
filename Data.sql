-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: company_management
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `link_id` int NOT NULL AUTO_INCREMENT,
  `link_url` varchar(45) NOT NULL,
  `link_name` varchar(45) NOT NULL,
  `roles_id` int NOT NULL,
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `link_id_UNIQUE` (`link_id`),
  UNIQUE KEY `link_url_UNIQUE` (`link_url`),
  KEY `roles_id_fk_links_idx` (`roles_id`),
  CONSTRAINT `roles_id_fk_links` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`roles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'https://globalsolgroup.com/','Global Groups',1),(2,'https://www.globalsolutions-eg.com/','Global Solutions',1),(3,'https://globalwords.com/','Global Words',1),(4,'http://www.vanderweil.com/','Vanderweil Engineer',6),(5,'https://www.hendersonengineers.com/','Henderson Engineers',6),(6,'https://www.jensenhughes.com/','Jensen Hughes',6),(7,'https://cadencebank.com/','Cadence Bank',3),(8,'https://www.crestwoodlp.com/','Crestwood',3),(9,'https://www.aramco.com/','Aramco',3),(10,'https://www.employerflexible.com/','Employer Flexible',5),(11,'https://www.smarterhrsolutions.com/','Smarter HR Solutions',5),(12,'https://hrp.net/','HR and P',5);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roles_id` int NOT NULL AUTO_INCREMENT,
  `roles_name` varchar(45) NOT NULL,
  PRIMARY KEY (`roles_id`),
  UNIQUE KEY `id_roles_UNIQUE` (`roles_id`),
  UNIQUE KEY `roles_name_UNIQUE` (`roles_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (6,'Engineer Admin'),(3,'Finance Admin'),(1,'Global'),(5,'HR Admin'),(4,'Sales Admin'),(2,'Super Admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(45) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `roles_id` int DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `user_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `role_idx` (`roles_id`),
  CONSTRAINT `role` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`roles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('engineer@admin.com','$2y$10$JaDy5vOT6FHBkEjtPQBMyONrHTgrHjyixJo4vnMMEBc9f1BvHkFnW',6,'Caleb','Strain',8),('finance@admin.com','$2y$10$bB.ldTpiT/o38j.Nfvmjz.LBWMJpWF5QWgHTyuE4bpEYcOERS/C8i',3,'Jeremy','Bangyango',9),('hr@admin.com','$2y$10$PxuKVZTzVtvqIFC62VD0r.IxfaCPAqys8rh5BbyeVNETfG9uX3udi',5,'Mayoor','Shardha',10),('global@admin.com','$2y$10$NAvV.c9i1WZUndoOvg7mqeFYEh7fejK1z7hBiH08vmoqlqDUpeB02',1,'Caitlyn','Hermway',11),('sales@admin.com','$2y$10$PL1684dkuigS37tx4Z5Re.hBDJrEZlx0AfBQOpbmIE6//ylHJ479K',4,'Kyle','Dein',12),('superadmin@admin.com','$2y$10$karosIZXDh/KgjUEPWR8QeD9qOTj8MLtumYc5FyWtCYQxxs.DgM6m',2,'Kiet','Dinh',13);
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

-- Dump completed on 2020-10-20 21:32:53
