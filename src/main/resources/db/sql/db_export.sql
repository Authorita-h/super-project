-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: super-project
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
    `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (12);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hotel`
--

DROP TABLE IF EXISTS `t_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_hotel` (
                           `id` bigint NOT NULL,
                           `name` varchar(255) DEFAULT NULL,
                           `rooms` int NOT NULL,
                           `owner_id` bigint DEFAULT NULL,
                           `sale` bit(1) NOT NULL,
                           `seller_id` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `FKcq94mi192b16h0rpo5r3vehf8` (`seller_id`),
                           KEY `FKcqmdhb9dkydlnbpl9n6uptqre` (`owner_id`),
                           CONSTRAINT `FKcq94mi192b16h0rpo5r3vehf8` FOREIGN KEY (`seller_id`) REFERENCES `t_user` (`id`),
                           CONSTRAINT `FKcqmdhb9dkydlnbpl9n6uptqre` FOREIGN KEY (`owner_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hotel`
--

LOCK TABLES `t_hotel` WRITE;
/*!40000 ALTER TABLE `t_hotel` DISABLE KEYS */;
INSERT INTO `t_hotel` VALUES (4,'owner_hotel',1111,5,_binary '\0',NULL),(7,'hotel_one',1,2,_binary '\0',NULL);
/*!40000 ALTER TABLE `t_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hotel_info`
--

DROP TABLE IF EXISTS `t_hotel_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_hotel_info` (
                                `id` bigint NOT NULL,
                                `date` varchar(255) DEFAULT NULL,
                                `buyer_id` bigint DEFAULT NULL,
                                `hotel_id` bigint DEFAULT NULL,
                                `seller_id` bigint DEFAULT NULL,
                                PRIMARY KEY (`id`),
                                KEY `FKr3nggpw2g6dlwmufqlp0kqq2d` (`buyer_id`),
                                KEY `FKbgi1pip4petwe0fklulkelgc2` (`hotel_id`),
                                KEY `FKg7st4nvj0epargw1wtmhgjj22` (`seller_id`),
                                CONSTRAINT `FKbgi1pip4petwe0fklulkelgc2` FOREIGN KEY (`hotel_id`) REFERENCES `t_hotel` (`id`),
                                CONSTRAINT `FKg7st4nvj0epargw1wtmhgjj22` FOREIGN KEY (`seller_id`) REFERENCES `t_user` (`id`),
                                CONSTRAINT `FKr3nggpw2g6dlwmufqlp0kqq2d` FOREIGN KEY (`buyer_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hotel_info`
--

LOCK TABLES `t_hotel_info` WRITE;
/*!40000 ALTER TABLE `t_hotel_info` DISABLE KEYS */;
INSERT INTO `t_hotel_info` VALUES (8,'Sun Oct 24 14:03:02 MSK 2021',2,7,5),(9,'Sun Oct 24 14:03:21 MSK 2021',5,4,2);
/*!40000 ALTER TABLE `t_hotel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_owner`
--

DROP TABLE IF EXISTS `t_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_owner` (
                           `id` bigint NOT NULL,
                           `free_workplace` int NOT NULL,
                           `workplace` int NOT NULL,
                           `my_user_id` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `FKcncio5snls0xuxrx9loe5s9xw` (`my_user_id`),
                           CONSTRAINT `FKcncio5snls0xuxrx9loe5s9xw` FOREIGN KEY (`my_user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_owner`
--

LOCK TABLES `t_owner` WRITE;
/*!40000 ALTER TABLE `t_owner` DISABLE KEYS */;
INSERT INTO `t_owner` VALUES (3,0,1,2),(6,0,0,5);
/*!40000 ALTER TABLE `t_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
                          `id` bigint NOT NULL,
                          `name` varchar(255) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_OWNER'),(3,'ROLE_WORKER'),(4,'ROLE_VISITOR');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
                          `id` bigint NOT NULL,
                          `password` varchar(255) DEFAULT NULL,
                          `username` varchar(255) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'$2a$10$WDd3DEjw1jYpDfb/haUBBuQtwtAMtiNuCoZhRE/FIz5HPSEY7.LIC','admin'),(2,'$2a$10$Jym./aA3IKKxDa/KBCaQwOZc59T2UVyZwCq6FyBTBs/JJf5OmIAHm','owner'),(5,'$2a$10$PChGT/LNPylHmSVeDyRrGODtiWQKm2bXrZWR2rM0ci6yXAA26pM4u','owner1'),(10,'$2a$10$IdkDoEBOsPxyX7ND6YIwV.lgHDJ6.A0/5mtc/C.RrY4d7y.ABzxxu','worker');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_roles`
--

DROP TABLE IF EXISTS `t_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_roles` (
                                `user_id` bigint NOT NULL,
                                `roles_id` bigint NOT NULL,
                                PRIMARY KEY (`user_id`,`roles_id`),
                                KEY `FKj47yp3hhtsoajht9793tbdrp4` (`roles_id`),
                                CONSTRAINT `FKj47yp3hhtsoajht9793tbdrp4` FOREIGN KEY (`roles_id`) REFERENCES `t_role` (`id`),
                                CONSTRAINT `FKpqntgokae5e703qb206xvfdk3` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_roles`
--

LOCK TABLES `t_user_roles` WRITE;
/*!40000 ALTER TABLE `t_user_roles` DISABLE KEYS */;
INSERT INTO `t_user_roles` VALUES (1,1),(2,2),(5,2),(10,3);
/*!40000 ALTER TABLE `t_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_visitor`
--

DROP TABLE IF EXISTS `t_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_visitor` (
                             `id` bigint NOT NULL,
                             `my_hotel_id` bigint DEFAULT NULL,
                             `my_user_id` bigint DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             KEY `FKes7hx00sqjn1nja8pxjsie01s` (`my_hotel_id`),
                             KEY `FKk96gjpg4re9v884rvl2pnw397` (`my_user_id`),
                             CONSTRAINT `FKes7hx00sqjn1nja8pxjsie01s` FOREIGN KEY (`my_hotel_id`) REFERENCES `t_hotel` (`id`),
                             CONSTRAINT `FKk96gjpg4re9v884rvl2pnw397` FOREIGN KEY (`my_user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_visitor`
--

LOCK TABLES `t_visitor` WRITE;
/*!40000 ALTER TABLE `t_visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_worker`
--

DROP TABLE IF EXISTS `t_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_worker` (
                            `id` bigint NOT NULL,
                            `ex` int NOT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            `surname` varchar(255) DEFAULT NULL,
                            `time_type` int DEFAULT NULL,
                            `employer_id` bigint DEFAULT NULL,
                            `hotel_id` bigint DEFAULT NULL,
                            `my_user_id` bigint DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            KEY `FKh4bw1r81ljq7sqr6ogs86ufl` (`employer_id`),
                            KEY `FK12vghor7e8cc5tcc806r3gb8d` (`hotel_id`),
                            KEY `FK7qve7oclexlsudh8yyl6k03ug` (`my_user_id`),
                            CONSTRAINT `FK12vghor7e8cc5tcc806r3gb8d` FOREIGN KEY (`hotel_id`) REFERENCES `t_hotel` (`id`),
                            CONSTRAINT `FK7qve7oclexlsudh8yyl6k03ug` FOREIGN KEY (`my_user_id`) REFERENCES `t_user` (`id`),
                            CONSTRAINT `FKh4bw1r81ljq7sqr6ogs86ufl` FOREIGN KEY (`employer_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_worker`
--

LOCK TABLES `t_worker` WRITE;
/*!40000 ALTER TABLE `t_worker` DISABLE KEYS */;
INSERT INTO `t_worker` VALUES (11,20,'Kirill','Pavl',2,2,NULL,10);
/*!40000 ALTER TABLE `t_worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-24 16:40:03
