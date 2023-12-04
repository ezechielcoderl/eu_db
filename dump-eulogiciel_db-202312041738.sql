-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: eulogiciel_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ADMIN_ID` int NOT NULL AUTO_INCREMENT,
  `USR_EMAIL` varchar(255) DEFAULT NULL,
  `USR_FULLNAME` varchar(255) DEFAULT NULL,
  `USR_PASSWORD` varchar(255) DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ADMIN_ID`),
  UNIQUE KEY `USR_EMAIL` (`USR_EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_profile`
--

DROP TABLE IF EXISTS `assets_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_profile` (
  `ASSET_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `PLATE_NUMBER` int DEFAULT NULL,
  `MODEL` varchar(50) DEFAULT NULL,
  `FUEL_CONSUMPTION` int DEFAULT NULL,
  `LICENSE_EXPIRY` int DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `MIDDLE_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` int DEFAULT NULL,
  `BIRTH_DATE` int DEFAULT NULL,
  `LICENSE_NUMBER` int DEFAULT NULL,
  `LICENSE_EXPIRATION` int DEFAULT NULL,
  PRIMARY KEY (`ASSET_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `assets_profile_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_profile`
--

LOCK TABLES `assets_profile` WRITE;
/*!40000 ALTER TABLE `assets_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convoy`
--

DROP TABLE IF EXISTS `convoy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convoy` (
  `CONVOY_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `CONVOY_NAME` varchar(255) DEFAULT NULL,
  `MAX_DISTANCE` int DEFAULT NULL,
  `EXPORT_DRIVERS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CONVOY_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `convoy_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convoy`
--

LOCK TABLES `convoy` WRITE;
/*!40000 ALTER TABLE `convoy` DISABLE KEYS */;
/*!40000 ALTER TABLE `convoy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_groups`
--

DROP TABLE IF EXISTS `device_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_groups` (
  `GROUP_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `GROUP_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `device_groups_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_groups`
--

LOCK TABLES `device_groups` WRITE;
/*!40000 ALTER TABLE `device_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `DEVICE_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `DEVICE_NAME` varchar(255) DEFAULT NULL,
  `DEVICE_IMEI` int DEFAULT NULL,
  `DEVICE_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DEVICE_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_id`
--

DROP TABLE IF EXISTS `driver_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_id` (
  `DRIVER_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `DRIVER_NAME` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `MIDDLE_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  `BIRTH_DATE` int DEFAULT NULL,
  `LICENSE_NUMBER` int DEFAULT NULL,
  `LICENSE_EXPIRATION` int DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  `ID_TAG` int DEFAULT NULL,
  PRIMARY KEY (`DRIVER_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `driver_id_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_id`
--

LOCK TABLES `driver_id` WRITE;
/*!40000 ALTER TABLE `driver_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `SUBSCRIPTION_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `SUBSCRIPTION_EXPIRATION` int DEFAULT NULL,
  `SUBSCRIPTION_STATE` varchar(200) DEFAULT NULL,
  `SUBSCRIPTION_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SUBSCRIPTION_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `USERGROUP_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int DEFAULT NULL,
  `GROUP_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERGROUP_ID`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `USR_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` int NOT NULL,
  `USR_EMAIL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `USR_PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `USR_LOGIN_STATUS` enum('0','1','2','3') DEFAULT NULL,
  `USR_LOGIN_DATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USR_ID`),
  UNIQUE KEY `USR_EMAIL` (`USR_EMAIL`),
  KEY `ADMIN_ID` (`ADMIN_ID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eulogiciel_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 17:38:37
