-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: pizza_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `idConfiguration` int NOT NULL AUTO_INCREMENT,
  `idPizza` int NOT NULL,
  `idSize` int NOT NULL,
  `Price` decimal(18,2) NOT NULL,
  PRIMARY KEY (`idConfiguration`),
  UNIQUE KEY `idConfiguration_UNIQUE` (`idConfiguration`),
  KEY `idPizza` (`idPizza`),
  KEY `idSize` (`idSize`),
  CONSTRAINT `configuration_ibfk_1` FOREIGN KEY (`idPizza`) REFERENCES `pizza` (`idPizza`),
  CONSTRAINT `configuration_ibfk_2` FOREIGN KEY (`idSize`) REFERENCES `size` (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,1,1,5.38),(2,1,2,6.91),(3,1,3,8.33),(4,1,4,10.15),(5,2,1,5.19),(6,2,2,7.00),(7,2,3,8.46),(8,2,4,9.99),(9,3,1,5.40),(10,3,2,6.62),(11,3,3,8.11),(12,3,4,10.76),(13,4,1,5.38),(14,4,2,6.45),(15,4,3,8.03),(16,4,4,10.13);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `idPizza` int NOT NULL AUTO_INCREMENT,
  `PizzaName` varchar(45) NOT NULL,
  PRIMARY KEY (`idPizza`),
  UNIQUE KEY `PizzaName_UNIQUE` (`PizzaName`),
  UNIQUE KEY `idPizza_UNIQUE` (`idPizza`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (3,'Гавайская'),(4,'Грибная'),(2,'Деревенская'),(1,'Пепперони');
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sauce`
--

DROP TABLE IF EXISTS `sauce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sauce` (
  `idSauce` int NOT NULL AUTO_INCREMENT,
  `SauceName` varchar(45) NOT NULL,
  `Price` decimal(18,2) NOT NULL,
  PRIMARY KEY (`idSauce`),
  UNIQUE KEY `SauceName_UNIQUE` (`SauceName`),
  UNIQUE KEY `idSauce_UNIQUE` (`idSauce`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sauce`
--

LOCK TABLES `sauce` WRITE;
/*!40000 ALTER TABLE `sauce` DISABLE KEYS */;
INSERT INTO `sauce` VALUES (1,'Сырный',0.23),(2,'Кисло-сладкий',0.26),(3,'Чесночный',0.20),(4,'Барбекю',0.28);
/*!40000 ALTER TABLE `sauce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `idSize` int NOT NULL AUTO_INCREMENT,
  `SizeName` int NOT NULL,
  PRIMARY KEY (`idSize`),
  UNIQUE KEY `SizeName_UNIQUE` (`SizeName`),
  UNIQUE KEY `idSize_UNIQUE` (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,21),(2,26),(3,31),(4,45);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14 17:08:48
